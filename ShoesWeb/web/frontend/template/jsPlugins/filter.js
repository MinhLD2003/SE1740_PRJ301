/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
const categoryCheckboxes = document.querySelectorAll('input[type="checkbox"]');
const clearFilterButton = document.getElementById('clearButton');
const applyButton = document.getElementById("apply_button");
const sortSelection = document.querySelector('#sortSelection');


//-----------------------------------------------------------------------------------------------------------------------------
var low__slider = document.querySelector('#lower');
var upper__slider = document.querySelector('#upper');
document.querySelector('#two').value = upper__slider.value;
document.querySelector('#one').value = low__slider.value;
var lower_bound = low__slider.value;
var upper_bound = upper__slider.value;
var lowerVal = parseInt(low__slider.value);
var upperVal = parseInt(upper__slider.value);
//-----------------------------------------------------------------------------------------------------------------------------
upper__slider.oninput = function () {
    lowerVal = parseInt(low__slider.value);
    upperVal = parseInt(upper__slider.value);
    if (upperVal < lowerVal + 4) {
        low__slider.value = upperVal - 4;
        if (lowerVal === low__slider.min) {
            upper__slider.value = 4;
        }
    }
    upper_bound = this.value;

    document.querySelector('#two').value = this.value;
};

low__slider.oninput = function () {
    lowerVal = parseInt(low__slider.value);
    upperVal = parseInt(upper__slider.value);
    if (lowerVal > upperVal - 4) {
        upper__slider.value = lowerVal + 4;
        if (upperVal === upper__slider.max) {
            low__slider.value = parseInt(upper__slider.max) - 4;
        }
    }
    lower_bound = this.value;
    document.querySelector('#one').value = this.value
};
//----------------------------------------------------------
function generateFilterLinkURL(categoryMap) {
    const baseUrl = 'https://example.com/filter?';
    var queryString = '';
    categoryMap.forEach((innerMap, key) => {
        innerMap.forEach((innerValue, innerKey) => {
            queryString += `${encodeURIComponent(key)}=${encodeURIComponent(innerValue)}%7C`;
        });
        queryString = queryString + '&';
    });
    queryString = queryString.slice(0, -4);
    var text = sortSelection.options[sortSelection.selectedIndex].value;
    if (text !== '')
        queryString = queryString + `sort=${text}&price_min=${lower_bound}&price_max=${upper_bound}`;
    console.log(queryString);
    return baseUrl + queryString;
}

// Function to get the map of names and values for checked checkboxes
function getCheckedInputMap() {
    const categoryMap = new Map();
    categoryCheckboxes.forEach(checkbox => {

        if (checkbox.checked) {
            const name = checkbox.name;
            const value = checkbox.value;
            if (categoryMap.has(name)) {
                const innerMap = categoryMap.get(name);
                innerMap.set(innerMap.size, value);

            }
            else {
                const innerMap = new Map();
                innerMap.set(0, value);
                categoryMap.set(name, innerMap);
            }
        }
    });
   
    return categoryMap;
}

function apply() {
    window.location.href = generateFilterLinkURL(getCheckedInputMap());
};

//-------------------------------------------
