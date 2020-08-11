*** Settings ***
Documentation  This test case is to test the comments a new task
Resource  ../../../../Resources/common.robot
Resource  ../../../../Resources/keywords.robot
Library  SeleniumLibrary
Library  string
Test Setup      commonsetup firefox
Test Teardown   commonteardown firefox

*** Test Cases ***
TC_AD01_MF
    [Documentation]     This test case is to test the new sub task comment in admin logins
    This test case is to test the new sub task comment in admin logins
TC_MG01_MF
    [Documentation]     This test case is to test the new sub task comment in manager logins
    This test case is to test the new sub task comment in manager logins
TC_EM01_MF
    [Documentation]     This test case is to test the create a task comment in employee logins
    This test case is to test the new sub task comment in employee logins
