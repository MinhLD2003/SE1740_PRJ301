const categoryCheckboxes = document.querySelectorAll('input[type="checkbox"]');
const clearFilterButton = document.getElementById('clearButton');
const applyButton = document.getElementById("apply_button");
const sortSelection = document.querySelector('#sortSelection');
const baseUrl = 'https://example.com/filter?';
const buttons = document.querySelectorAll('button.is--button');


var low__slider = document.querySelector('#lower');
var upper__slider = document.querySelector('#upper');
document.querySelector('#two').value = upper__slider.value;
document.querySelector('#one').value = low__slider.value;
var lower_bound = low__slider.value;
var upper_bound = upper__slider.value;
var lowerVal = parseInt(low__slider.value);
var upperVal = parseInt(upper__slider.value);

//----------------------------------------------------------
function generateFilterLinkURL(categoryMap) {
    var queryString = [];
    //checkbox filter
    categoryMap.forEach((innerMap, key) => {
        var keyValuePairs = [];
        innerMap.forEach((innerValue, innerKey) => {
            keyValuePairs.push(`${encodeURIComponent(key)}=${encodeURIComponent(innerValue)}`);
        });
        queryString.push(keyValuePairs.join('%7C'));
    });

    //button filter
    var colorKeyValuePairs = [];
    var sizeKeyValuePairs = [];
    buttons.forEach(button => {

        if (button.classList.contains('is--selected')) {
            if (button.name === 'color')
                colorKeyValuePairs.push(`${button.name}=${button.getAttribute('data-auto-id')}`);
            if (button.name === 'size')
                sizeKeyValuePairs.push(`${button.name}=${button.getAttribute('data-auto-id')}`);
        }

    })
    // price filter 
    if (sizeKeyValuePairs.length !== 0)
        queryString.push(sizeKeyValuePairs.join('%7C'));
    if (colorKeyValuePairs.length !== 0)
        queryString.push(colorKeyValuePairs.join('%7C'));

    queryString.push(`price_min=${lower_bound}&price_max=${upper_bound}`);

    var finalString = queryString.join('&');
    // sort     
    var text = sortSelection.options[sortSelection.selectedIndex].value;
    if (text !== '') finalString = finalString + `sort=${text}`;

    return baseUrl + finalString;
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

//------------------------------------------------------------------------------------
console.log(generateFilterLinkURL(getCheckedInputMap()));
buttons.forEach(button => {
    button.addEventListener('click', () => {

        if (button.name === 'color') {
            if (button.classList.contains('is--selected')) {
                button.classList.remove('is--selected');
                var checkmark = button.querySelector('.icon-checkmark');
                checkmark.classList.remove('is--toggled');
            }
            else {
                button.classList.add('is--selected');
                var checkmark = button.querySelector('.icon-checkmark');
                checkmark.classList.add('is--toggled');
            }
        }
        else {
            if (button.classList.contains('is--selected')) {
                button.classList.remove('is--selected');
            }
            else {
                button.classList.add('is--selected');
            }
        }
        url_link = generateFilterLinkURL(getCheckedInputMap());
        window.location.href = url_link;
    });
});
//-------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------------------------------------
upper__slider.oninput = function () {
    lowerVal = parseInt(low__slider.value);
    upperVal = parseInt(upper__slider.value);
    if (upperVal < lowerVal + 4) {
        low__slider.value = upperVal - 4;
        if (lowerVal ===low__slider.min) {
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
    document.querySelector('#one').value = this.value;
};
