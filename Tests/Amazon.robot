*** Settings ***
Documentation   This is some basic informations about the whole suite
Resource    ../Resources/AmazonApp.robot
Resource    ../Resources/Common.robot
Suite Setup     Insert Testing Data
Test Setup    Common.Begin Web Test     # before each test
Test Teardown    Common.End Web Test    # before each test
Suite Teardown     Cleanup Testing Data
*** Variables ***

*** Test Cases ***
User can search for products
    [Documentation]    This is some basic information about the test
    [Tags]    Smoke

    AmazonApp.Search for Products


User must sign in to check out
    [Documentation]    This is some basic information about the test
    [Tags]    Smoke

    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to card
    AmazonApp.Begin Checkout


