*** Settings ***
Library    SeleniumLibrary
Library    DateTime
Library    OperatingSystem

*** Variables ***
${BROWSER}    firefox
${URL}        http://localhost:5173    # Update with the actual URL of your application

*** Test Cases ***
Open Application
    Open Browser    ${URL}    ${BROWSER}    
    Maximize Browser Window

Test Delivery Fee Calculation

    Input Text    id=cartValue    8.90
    Input Text    id=deliveryDistance    1000
    Input Text    id=amountOfItems    1
    
Click Calculate Button

    click button    //*[@id="root"]/div/div[2]/form/input

Reload the page
    Reload Page
   
Test Delivery Fee Calculation

    Input Text    id=cartValue    8.90
    Input Text    id=deliveryDistance    1499
    Input Text    id=amountOfItems    1
    
Click Calculate Button

    click button    //*[@id="root"]/div/div[2]/form/input

Reload the page
    Reload Page
   
Test Delivery Fee Calculation

    Input Text    id=cartValue    8.90
    Input Text    id=deliveryDistance    1500
    Input Text    id=amountOfItems    1
    
Click Calculate Button

    click button    //*[@id="root"]/div/div[2]/form/input

Reload the page
    Reload Page
   
Test Delivery Fee Calculation

    Input Text    id=cartValue    8.90
    Input Text    id=deliveryDistance    1501
    Input Text    id=amountOfItems    1
    
Click Calculate Button

    click button    //*[@id="root"]/div/div[2]/form/input

Reload the page
    Reload Page
   
Test Delivery Fee Calculation

    Input Text    id=cartValue    8.90
    Input Text    id=deliveryDistance    1501
    Input Text    id=amountOfItems    4
    
Click Calculate Button

    click button    //*[@id="root"]/div/div[2]/form/input

Reload the page
    Reload Page
   
Test Delivery Fee Calculation

    Input Text    id=cartValue    8.90
    Input Text    id=deliveryDistance    1501
    Input Text    id=amountOfItems    5
    
Click Calculate Button

    click button    //*[@id="root"]/div/div[2]/form/input

Reload the page
    Reload Page
   
Test Delivery Fee Calculation

    Input Text    id=cartValue    8.90
    Input Text    id=deliveryDistance    1501
    Input Text    id=amountOfItems    10
    
Click Calculate Button

    click button    //*[@id="root"]/div/div[2]/form/input

Reload the page
    Reload Page
   
Test Delivery Fee Calculation

    Input Text    id=cartValue    8.90
    Input Text    id=deliveryDistance    1501
    Input Text    id=amountOfItems    13
    
Click Calculate Button

    click button    //*[@id="root"]/div/div[2]/form/input

Reload the page
    Reload Page
   
Test Delivery Fee Calculation

    Input Text    id=cartValue    8.90
    Input Text    id=deliveryDistance    1501
    Input Text    id=amountOfItems    14
    
Click Calculate Button

    click button    //*[@id="root"]/div/div[2]/form/input

Reload the page
    Reload Page
   
Test Delivery Fee Calculation

    Input Text    id=cartValue    200
    Input Text    id=deliveryDistance    1501
    Input Text    id=amountOfItems    14
    
Click Calculate Button

    click button    //*[@id="root"]/div/div[2]/form/input

