*** Settings ***
Documentation  Robot Framework Generated Test
...
Library  Selenium2Library  timeout=10   implicit_wait=1.5   run_on_failure=Capture Page Screenshot
Test Setup  Start browser
Test Teardown  Close All Browsers

*** Variables ***
${BROWSER}  firefox
${REMOTE_URL}  ${None}

*** Keywords ***
Start Browser
    [Documentation]  Start browser
    Open Browser  about:blank  ${BROWSER}  remote_url=${REMOTE_URL}

*** Test Cases ***
TEsting
    [Tags]  TEsting
    [Documentation]  TEsting
    go to  https://www.practo.com/providers/doctors/consult
    wait until element is visible  xpath=//a[contains(text(),'Practo Health Feed')]
    click element  xpath=//a[contains(text(),'Practo Health Feed')]
    wait until element is visible  xpath=//a[contains(text(),'Practo Profile')]
    click element  xpath=//a[contains(text(),'Practo Profile')]

