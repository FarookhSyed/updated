*** Settings ***
Documentation  This test case is to test the create a new task
Resource  ../../../../Resources/common.robot
Resource  ../../../../Resources/keywords.robot
Library  SeleniumLibrary
Library  string
Test Setup      commonsetup firefox
Test Teardown   commonteardown firefox

*** Test Cases ***
TC_AD01_MF
    [Documentation]     This test case is to test the create a task in admin logins
    This test case is to test the new sub task in admin logins
TC_MG01_MF
    [Documentation]     This test case is to test the create a task in manager logins
    This test case is to test the new sub task in manager logins
TC_EM01_MF
    [Documentation]     This test case is to test the create a task in employee logins
    This test case is to test the new sub task in employee logins
