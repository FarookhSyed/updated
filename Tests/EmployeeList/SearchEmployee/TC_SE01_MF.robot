*** Settings ***
Documentation  This test case is to test the search employee in employee list
Resource  ../../../Resources/common.robot
Resource  ../../../Resources/keywords.robot
Library  SeleniumLibrary
Library  string
Test Setup      commonsetup firefox
Test Teardown   commonteardown firefox

*** Test Cases ***
TC_AD01_MF
    [Documentation]     This test case is to test the search employee in employee list
    This test case is to test the search employee in employee list using admin logins
TC_EM01_MF
    [Documentation]     This test case is to test the search employee in employee list
    This test case is to test the search employee in employee list using manager logins


