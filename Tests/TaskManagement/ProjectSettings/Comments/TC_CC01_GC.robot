*** Settings ***
Documentation  This test case is to test the Project settings in project
Resource  ../../../../Resources/common.robot
Resource  ../../../../Resources/keywords.robot
Library  SeleniumLibrary
Library  string
Test Setup      commonsetup
Test Teardown   commonteardown

*** Test Cases ***
TC_AD01_GC
    [Documentation]     This test case is to test the Project settings in project in admin logins
    This test case is to test the Project settings in project in admin logins
TC_MG01_GC
    [Documentation]     This test case is to test the Project settings in project in manager logins
    This test case is to test the Project settings in project in manager logins

