*** Settings ***
Documentation  This test case is to test the Invite employee lower upper wrongdata praticaldata boundary conditions
Resource  ../../../Resources/common.robot
Resource  ../../../Resources/keywords.robot
Library  SeleniumLibrary
Library  string
Test Setup      commonsetup firefox
Test Teardown   commonteardown firefox

*** Test Cases ***
TC_AD01_MF
    [Documentation]     This test case is to test the Invite employee through Admin lower upper wrongdata praticaldata boundary conditions
    This test case is to test the Invite employee through Admin lower upper wrongdata praticaldata boundary conditions
TC_MG01_MF
    [Documentation]     This test case is to test the Invite employee through Manager lower upper wrongdata praticaldata boundary conditions
    This test case is to test the Invite employee through Manager lower upper wrongdata praticaldata boundary conditions

