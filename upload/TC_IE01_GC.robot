*** Settings ***
Documentation  This test case is to test the Invite employee lower upper wrongdata praticaldata boundary conditions
Resource  ../../../Resources/common.robot
Resource  ../../../Resources/keywords.robot
Library  SeleniumLibrary
Library  string
Test Setup      commonsetup
Test Teardown   commonteardown

*** Test Cases ***
TC_AD01_GC
    [Documentation]     This test case is to test the Invite employee through Admin lower upper wrongdata praticaldata boundary conditions
    This test case is to test the Invite employee through Admin lower upper wrongdata praticaldata boundary conditions
TC_MG01_GC
    [Documentation]     This test case is to test the Invite employee through Manager lower upper wrongdata praticaldata boundary conditions
    This test case is to test the Invite employee through Manager lower upper wrongdata praticaldata boundary conditions

