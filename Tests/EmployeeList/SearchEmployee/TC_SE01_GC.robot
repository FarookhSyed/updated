*** Settings ***
Documentation  This test case is to test the search employee in employee list
Resource  ../../../Resources/common.robot
Resource  ../../../Resources/keywords.robot
Library  SeleniumLibrary
Library  string
Test Setup      commonsetup
Test Teardown   commonteardown

*** Test Cases ***
TC_AD01_GC
    [Documentation]     This test case is to test the search employee in employee list
    This test case is to test the search employee in employee list using admin logins
TC_EM01_GC
    [Documentation]     This test case is to test the search employee in employee list
    This test case is to test the search employee in employee list using manager logins


