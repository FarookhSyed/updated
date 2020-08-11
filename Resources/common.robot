*** Settings ***

Library  SeleniumLibrary
Resource  ../Globalvariables/variables.robot
Resource  ../Globalvariables/Credentials.robot
*** Keywords ***
commonsetup
    Open Browser   ${prod}  ${Chrome}
    Maximize Browser Window
commonteardown
    sleep  5s
    Close Browser
commonsetup firefox
    Open Browser   ${prod}  ${firefox}
    Maximize Browser Window
commonteardown firefox
    sleep  5s
    Close Browser
commonsetup Internetexplorer
    Open Browser   ${prod}  ${IE}
    Maximize Browser Window
commonteardown Internetexplorer
    sleep  5s
    Close Browser

