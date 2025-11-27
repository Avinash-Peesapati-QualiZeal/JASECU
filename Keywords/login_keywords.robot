*** Settings ***
Resource    ../ObjectRepository/login_locators.robot

*** Keywords ***
Login to Application
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Run Keyword And Ignore Error    Input Text    ${USERNAME_FIELD}    ${USERNAME}
    Run Keyword And Ignore Error    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}
    Sleep    1s
    Wait Until Element Is Enabled    ${LOGIN_BUTTON}    10s
    Wait Until Element Is Visible    ${LOGIN_BUTTON}    10s
    Run Keyword And Ignore Error    Click Element    ${LOGIN_BUTTON}
    Sleep    2s

Authenticate User
    Open QmentisAI Application
    Navigate to Login Page
    Enter Username into Username Field
    Enter Password into Password Field
    Click Login Button
    Verify Login Attempt

Submit Invalid Credentials
    Enter Invalid Username into Username Field
    Enter Invalid Password into Password Field
    Click Submit Button
    Capture Response for Invalid Credentials

Verify Authentication Failure
    Check for Authentication Failure Message
    Verify No Connection Established with Azure DevOps
    Confirm User Remains on Login Page

Log Error Message
    Capture Error Message in Logs
    Verify Error Message Content
    Ensure Error Log is Updated
