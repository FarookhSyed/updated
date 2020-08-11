*** Settings ***
Documentation      test the user login page under sigout the admin employeee manager logins
Resource  ../../../Resources/common.robot
Resource  ../../../Resources/keywords.robot
Library  SeleniumLibrary
Library  string
Test Setup      commonsetup
Test Teardown   commonteardown

*** Test Cases ***
TC_UL01_MF
    [Documentation]  test the user login page under  sigout the admin employeee manager logins
    test the user login page under sigout the admin employeee manager logins