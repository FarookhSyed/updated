*** Settings ***
Documentation    Suite description
Library    SeleniumLibrary

*** Keywords ***
check for validation in login page
    Page Should Contain   Please fill out this field
Check For Email Error Message
    wait until page contains    Forgot
Check For admin home page Message
    wait until page contains    Welcome admin!!!
Check For employee home page Message
    sleep  5s
    wait until page contains  Contact Information
Check For manager home page Message
     sleep  5s
    wait until page contains  Contact Information
check for form message
    wait until page contains  Please fill out this field.
check for forgot valid message
    wait until page contains   Invalid email format
check for forgot valid message1
    wait until page contains  No record of your id in veridic solution
check for forgot valid message2
    wait until page contains  Check your inbox for a link to reset your password. If it doesn’t appear within a few minutes, check your spam folder.
check for forgot password validation
    wait until page contains  Passwords doesn't match
check for the message1
    wait until page contains  7894561230
check for the message2
    wait until page contains  testingEmployee
check for the message3
    wait until page contains  7777
check for the message4
    wait until page contains  aditya
check for invite valid message
    wait until page contains   Invalid email format


