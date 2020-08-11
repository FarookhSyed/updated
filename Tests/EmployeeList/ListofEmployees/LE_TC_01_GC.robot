*** Settings ***

Library    SeleniumLibrary



*** Variables ***
${S_EMAIL_ID}    eshwarnadh345@gmail.com
${S_PWD}    flair123
${S_START}    about:blank
${S_BROWSER}    gc
${S_URL}    https://dev.flairtechno.com/
${S_EMAIL_FIELD}    //*[@id="email"]
${S_PWD_FIELD}    //*[@id="password"]
${S_SIGNIN_BTN}    //*[@id="root"]/div/div/div/main/div[2]/div/form/button
${EMPLOYEE_LIST}   https://dev.flairtechno.com/console/employeelist
${E_ALL_BUTTON}    //*[@id="scrollable-force-tab-0"]
${E_ACTIVE_BUTTON}    //*[@id="scrollable-force-tab-1"]
${E_INACTIVE_BUTTON}    //*[@id="scrollable-force-tab-2"]
${E_SUSPEND_BUTTON}    //*[@id="scrollable-force-tab-3"]
${E_SELECTED_BUTTON}    //*[@id="scrollable-force-tab-4"]
${S_Emply_Slct}    //*[@id="scrollable-force-tabpanel-1"]/div/div/div/div[2]/div[2]/div/table/tbody/tr[1]/td[5]/a
*** Test Cases ***
This test case is written to check the List Of Employees
    open browser  ${S_START}     ${S_BROWSER}
    maximize browser window
    sleep    3s
    go to    ${S_URL}
    sleep    3s
    input text    ${S_EMAIL_FIELD}    ${S_EMAIL_ID}
    sleep    3s
    input password    ${S_PWD_FIELD}    ${S_PWD}
    sleep    3s
    click element    ${S_SIGNIN_BTN}
    sleep   5s
    go to    ${EMPLOYEE_LIST}
    sleep    5s
    click element    ${E_ALL_BUTTON}
    sleep    5s
    click element    ${E_ACTIVE_BUTTON}
    sleep    5s
    click element    ${E_INACTIVE_BUTTON}
    sleep    5s
    click element    ${E_SUSPEND_BUTTON}
    sleep    5s
    click element    ${E_SELECTED_BUTTON}
    sleep    5s
    click element    ${E_ALL_BUTTON}
    sleep    5s
    click element   ${S_Emply_Slct}
    sleep    5s
    Execute JavaScript    window.scrollTo(0,130)
    sleep    5s
    Execute JavaScript    window.scrollTo(0,-130)
    sleep    5s
    go to    ${EMPLOYEE_LIST}


