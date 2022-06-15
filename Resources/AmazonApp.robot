*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Search for Products
    Go To    http://www.amazon.com
    Wait Until Page Contains    Cart
    Input Text    id=twotabsearchtextbox    Ferrari 458
    Click Button    xpath=//*[@id="nav-search-submit-button"]
    #sleep    3s
    Wait Until Page Contains    results

Select Product from Search Results
    click link    xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div/div/div[2]/div[1]/h2/a
    Wait Until Page Contains    Back to results
    #sleep    3s

Add Product to card
    Click Button    xpath=//input[@id='add-to-cart-button']
    wait until page contains    Added to Cart
    #get list items      ${values} =
    #go to    http://www.amazon.com
    #click image    Headsets

Begin Checkout
     click button    name=proceedToRetailCheckout
       # xpath=////body/div[@id='a-page']/div[@id='sw-full-view-container']/div[@id='sw-full-view']/div[@id='sw-atc-confirmation']/div[@id='sw-atc-actions']/div[@id='sw-atc-actions-buy-box-sign-in']/div[@id='sw-atc-buy-box']/form[@id='sw-ptc-form']/span[@id='sc-buy-box-ptc-button']/span[1]/input[1]
    #sleep    3s

