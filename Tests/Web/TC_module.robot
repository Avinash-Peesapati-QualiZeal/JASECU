*** Settings ***
Library           SeleniumLibrary
Resource          ../../Global/application_variables.robot
Resource          ../../Global/global_variables.robot
Resource          ../../Keywords/login_keywords.robot

*** Test Cases ***
Connection attempt with invalid Azure DevOps credentials
    [Tags]    Functional
    Login to Application
    Submit Invalid Credentials
    Verify Authentication Failure
    Log Error Message
