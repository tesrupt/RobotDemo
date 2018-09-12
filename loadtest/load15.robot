*** Settings ***
Documentation               Robot Framework Test Search
...
Metadata                    VERSION     1.0
Library                     Selenium2Library  timeout=10   implicit_wait=1.5   run_on_failure=Capture Page Screenshot

Test Setup                  Start browser
Test Teardown               Close All Browsers


*** Variables ***
${BROWSER}                  chrome
${ALIAS}                    None
${REMOTE_URL}               http://localhost:4444/wd/hub


*** Keywords ***
Start Browser
    [Documentation]         Start browser on Selenium Grid
    Open Browser            https://www.google.com  ${BROWSER}  remote_url=${REMOTE_URL}

*** Test Cases ***
Test Google15
    [Documentation]         Test Google
    Input Text    q    webdriver
    Submit Form
    Wait Until Page Contains    Searches related to webdriver
