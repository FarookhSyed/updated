*** Settings ***
Documentation  This test case is to test the forgot password under lower boundary Upper boundary mixed-match wrong data practical data conditions
Resource  ../../../Resources/common.robot
Resource  ../../../Resources/keywords.robot
Library  SeleniumLibrary
Library  string
Test Setup      commonsetup
Test Teardown   commonteardown

*** Test Cases ***
TC_LB_UL01
    [Documentation]     This test case is to test the forgot password under lower boundary Upper boundary mixed-match wrong data practical data conditions
    This test case is to test the forgot password under lower boundary Upper boundary mixed-match wrong data practical data conditions
