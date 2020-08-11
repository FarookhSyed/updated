*** Settings ***
Documentation  This test case is to test the updating the ProfilePicture of an employee
Resource  ../../../../Resources/common.robot
Resource  ../../../../Resources/keywords.robot
Library  SeleniumLibrary
Library  string
Test Setup      commonsetup
Test Teardown   commonteardown

*** Test Cases ***
TC_EM01_GC
    [Documentation]     This test case is to test the updating the ProfilePicture of an employee
    This test case is to test the updating the ProfilePicture of an employee
TC_MG01_GC
    [Documentation]     This test case is to test the updating the ProfilePicture of an manager
    This test case is to test the updating the ProfilePicture of an manager