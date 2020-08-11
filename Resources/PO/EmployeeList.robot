*** Settings ***
Documentation    Suite description
Library    SeleniumLibrary

*** Keywords ***
check for the valid message
    wait until page contains  Employee promoted sucessfully!



