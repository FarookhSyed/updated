*** Settings ***
Documentation  This test case is to test the employee Editing page of employee history lower upper wrongdata praticaldata boundary conditions
Resource  ../../../../Resources/common.robot
Resource  ../../../../Resources/keywords.robot
Library  SeleniumLibrary
Library  string
Test Setup      commonsetup firefox
Test Teardown   commonteardown firefox

*** Test Cases ***
TC_EM01_MF
    [Documentation]     This test case is to test the employee Editing page of employee history lower upper wrongdata praticaldata boundary conditions
    This test case is to test the employee Editing page of employee history lower upper wrongdata praticaldata boundary conditions
TC_MG01_MF
    [Documentation]     This test case is to test the manager Editing page of employee history lower upper wrongdata praticaldata boundary conditions
    This test case is to test the manager Editing page of employee history lower upper wrongdata praticaldata boundary conditions


