/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.ImplementDAO;

import dal.DBConnection;
import dal.InterfaceDAO.IOrderDAO;
import java.sql.Connection;
import java.sql.SQLException;
import model.CartLine;
import model.Order;
import model.ShippingAddress;
import model.UserAccount;
import utils.TimestampHandler;

/**
 *
 * @author Admin
 */
public class OrderDAO extends GenericDAO<Order> implements IOrderDAO {

    ProductDAO pDAO = new ProductDAO();
    protected DBConnection db = new DBConnection();
    TimestampHandler timeH = new TimestampHandler();

    @Override
    public void insertOrder(Order order, UserAccount user) {
        Connection connection = null;
        try {
            connection = db.getConnection();
            connection.setAutoCommit(false);
            Long shippingAddressId = insertShippingAddress(order.getAddress());

            String sql = "INSERT INTO [dbo].[order]\n"
                    + "           ([total_amount]\n"
                    + "           ,[order_note]\n"
                    + "           ,[shipping_address_id]\n"
                    + "           ,[status]\n"
                    + "           ,[created_time]\n"
                    + "           ,[user_account_id])\n"
                    + "     VALUES(? , ? ,? , ? , ? ,? )";
            Long orderId = insert1(connection, sql,
                     order.getAmount(),
                     order.getOrderNote(),
                     shippingAddressId.intValue(),
                     order.getStatus(),
                     timeH.getNow());
            sql = "insert into order_line values( ? , ? ,? , ? , ?)";
            for (CartLine c : order.getOrderLines()) {
                insert(connection, sql,
                        c.getProduct().getProductCode(),
                        pDAO.querySizeId(c.getSize(), c.getProduct().getGender()),
                        c.getQuantity(),
                        c.getSubtotal(),
                        orderId.intValue()
                );
            }
            connection.commit();
        } catch (SQLException ex) {
            ex.printStackTrace();
            // If any exception occurs during the inserts, rollback the transaction
            try {
                if (connection != null) {
                    connection.rollback();
                }
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException ex1) {
                ex1.printStackTrace();
            }
        }

    }

    public Long insertShippingAddress(ShippingAddress address) {
        Connection connection = db.getConnection();
        String sql = "INSERT INTO [dbo].[shipping_address]\n"
                + "           ([full_name]\n"
                + "           ,[phone_number]\n"
                + "           ,[email]\n"
                + "           ,[address1]\n"
                + "           ,[address2]\n"
                + "           ,[city]\n"
                + "           ,[zip])"
                + "values( ? ,? , ? , ? , ?, ?  , ?)";
        return insert1(connection, sql,
                address.getFullName(),
                address.getPhone(),
                address.getEmail(),
                address.getAddress1(),
                address.getAddress2(),
                address.getCity(),
                address.getZip()
        );
    }

}
