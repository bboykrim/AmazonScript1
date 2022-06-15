*** Settings ***
Documentation   This is some basic informations about the whole suite
Resource    ../Resources/AmazonApp.robot
Resource    ../Resources/Common.robot

*** Variables ***

*** Test Cases ***
User must sign in to check out
    [Documentation]    This is some basic information about the test
    [Tags]    Smoke

    Common.Begin Web Test
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to card
    AmazonApp.Begin Checkout
    Common.End Web Test

