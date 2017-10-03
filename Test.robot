
*** Settings ***
Documentation               Robot Framework Example
...
Metadata                    VERSION     1.0
Library                     Selenium2Library  timeout=10   implicit_wait=1.5   run_on_failure=Capture Page Screenshot

Variables   config.py

Test Setup                  Start browser
Test Teardown               Close All Browsers


*** Variables ***
${BROWSER}                  chrome
${ALIAS}                    None
${REMOTE_URL}               ${None}


*** Keywords ***
Start Browser
    [Documentation]         Start browser on Selenium Grid
    Open Browser            ${URL}  ${BROWSER}  remote_url=${REMOTE_URL}
    Maximize Browser Window

*** Test Cases ***
Test Google
    [Documentation]         Test Google
    Input Text    q    webdriver
    Submit Form
    Wait Until Page Contains    Searches related to webdriver

Test Facebook
    [Documentation]         Test Facebook
    Input Text    q    facebook
    Submit Form
    Wait Until Page Contains    Searches related to facebook
    
Test Twitter
    [Documentation]         Test Twitter
    Input Text    q    twitter
    Submit Form
    Wait Until Page Contains    Searches related to twitter   
    
Test Linkedin
    [Documentation]         Test Linkedin
    Input Text    q    linkedin
    Submit Form
    Wait Until Page Contains    Searches related to Linkedin
    
