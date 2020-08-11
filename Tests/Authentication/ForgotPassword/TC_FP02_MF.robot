*** Settings ***
Documentation   This test case is to test the forgot password under lower boundary Upper boundary mixed-match wrong data practical data conditions
Resource  ../../../Resources/common.robot
Resource  ../../../Resources/keywords.robot
Library  SeleniumLibrary
Library  string
Test Setup      commonsetup firefox
Test Teardown   commonteardown firefox

*** Test Cases ***
TC_FP02_MF
    [Documentation]     This test case is to test the forgot password under lower boundary Upper boundary mixed-match wrong data practical data conditions
    This test case is to test the forgot password under lower boundary Upper boundary mixed-match wrong data practical data conditions

