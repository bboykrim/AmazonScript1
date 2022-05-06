*** Settings ***
Documentation   This is some basic informations about the whole suite
Library  SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
*** Test Cases ***
User must sign in to check out
    [Documentation]    This is some basic information about the test
    [Tags]    Smoke
    open browser    http://www.amazon.com    ${BROWSER}
    input text    id=twotabsearchtextbox    Ferrari 458
    #click button    id=nav-search-submit-button
    click button    xpath=//*[@id="nav-search-submit-button"]
    #sleep    3s
    click link    xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div/div/div[2]/div[1]/h2/a
    #click button    css=#nav-search-submit-button
    #get list items      ${values} =
    go to    http://www.amazon.com
    click image    Headsets

    sleep    3s
    #close browser
*** Keywords ***

