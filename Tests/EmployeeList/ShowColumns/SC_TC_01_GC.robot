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
    [Documentation]     This test case is written to check working of each and every columns in list of employees
    to check the working of columns


