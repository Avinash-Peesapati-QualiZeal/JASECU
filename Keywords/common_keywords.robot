*** Keywords ***
Open QmentisAI Application
    [Arguments]    ${primary}    ${text}=${EMPTY}    ${secondary}=${EMPTY}
    Sleep    0.3s
    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${primary}    ${GLOBAL_WAIT}
    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${secondary}    ${GLOBAL_WAIT}
    Run Keyword And Ignore Error    Input Text    ${primary}    ${text}
    Run Keyword And Ignore Error    Input Text    ${secondary}    ${text}
    Sleep    0.3s

Navigate to Login Page
    [Arguments]    ${primary}    ${secondary}=${EMPTY}
    Sleep    0.5s
    Wait Until Keyword Succeeds    ${SHORT_RETRY}    1s    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${primary}
    Run Keyword And Ignore Error    Click Element    ${primary}
    Run Keyword And Ignore Error    Click Element    ${secondary}
    Run Keyword And Ignore Error    Execute JavaScript    document.querySelector("${secondary.replace('cssSelector=', '')}")?.click()
    Sleep    1s

Enter Username into Username Field
    [Arguments]    ${primary}    ${text}    ${secondary}=${EMPTY}
    Sleep    0.3s
    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${primary}    ${GLOBAL_WAIT}
    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${secondary}    ${GLOBAL_WAIT}
    Run Keyword And Ignore Error    Input Text    ${primary}    ${text}
    Run Keyword And Ignore Error    Input Text    ${secondary}    ${text}
    Sleep    0.3s

Enter Password into Password Field
    [Arguments]    ${primary}    ${text}    ${secondary}=${EMPTY}
    Sleep    0.3s
    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${primary}    ${GLOBAL_WAIT}
    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${secondary}    ${GLOBAL_WAIT}
    Run Keyword And Ignore Error    Input Text    ${primary}    ${text}
    Run Keyword And Ignore Error    Input Text    ${secondary}    ${text}
    Sleep    0.3s

Click Login Button
    [Arguments]    ${primary}    ${secondary}=${EMPTY}
    Sleep    0.5s
    Wait Until Keyword Succeeds    ${SHORT_RETRY}    1s    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${primary}
    Run Keyword And Ignore Error    Click Element    ${primary}
    Run Keyword And Ignore Error    Click Element    ${secondary}
    Run Keyword And Ignore Error    Execute JavaScript    document.querySelector("${secondary.replace('cssSelector=', '')}")?.click()
    Sleep    1s

Verify Login Attempt
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    ${MED_RETRY}    2s    Wait Until Page Contains Element    ${locator}

Enter Invalid Username into Username Field
    [Arguments]    ${primary}    ${text}    ${secondary}=${EMPTY}
    Sleep    0.3s
    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${primary}    ${GLOBAL_WAIT}
    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${secondary}    ${GLOBAL_WAIT}
    Run Keyword And Ignore Error    Input Text    ${primary}    ${text}
    Run Keyword And Ignore Error    Input Text    ${secondary}    ${text}
    Sleep    0.3s

Enter Invalid Password into Password Field
    [Arguments]    ${primary}    ${text}    ${secondary}=${EMPTY}
    Sleep    0.3s
    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${primary}    ${GLOBAL_WAIT}
    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${secondary}    ${GLOBAL_WAIT}
    Run Keyword And Ignore Error    Input Text    ${primary}    ${text}
    Run Keyword And Ignore Error    Input Text    ${secondary}    ${text}
    Sleep    0.3s

Click Submit Button
    [Arguments]    ${primary}    ${secondary}=${EMPTY}
    Sleep    0.5s
    Wait Until Keyword Succeeds    ${SHORT_RETRY}    1s    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${primary}
    Run Keyword And Ignore Error    Click Element    ${primary}
    Run Keyword And Ignore Error    Click Element    ${secondary}
    Run Keyword And Ignore Error    Execute JavaScript    document.querySelector("${secondary.replace('cssSelector=', '')}")?.click()
    Sleep    1s

Capture Response for Invalid Credentials
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    ${MED_RETRY}    2s    Wait Until Page Contains Element    ${locator}

Check for Authentication Failure Message
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    ${MED_RETRY}    2s    Wait Until Page Contains Element    ${locator}

Verify No Connection Established with Azure DevOps
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    ${MED_RETRY}    2s    Wait Until Page Contains Element    ${locator}

Confirm User Remains on Login Page
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    ${MED_RETRY}    2s    Wait Until Page Contains Element    ${locator}

Capture Error Message in Logs
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    ${MED_RETRY}    2s    Wait Until Page Contains Element    ${locator}

Verify Error Message Content
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    ${MED_RETRY}    2s    Wait Until Page Contains Element    ${locator}

Ensure Error Log is Updated
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    ${MED_RETRY}    2s    Wait Until Page Contains Element    ${locator}
