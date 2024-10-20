**Settings***
Resource     ../ImportResources.resource

***Keywords***

Start Test Environment
    [Arguments]     ${url}      ${browser}=chrome
    Open Browser    ${url}    ${browser}      headless=${true}
    Maximize Browser Window

Enter Valid Credentials
    [Arguments]     ${username}     ${password}
    Input Text      ${txtusername}     ${username}
    Input Text      ${txtpassword}     ${password}

Click on Login Button
    Wait Until Element Is Visible   ${btnLogin}
    Click Element   ${btnLogin}

Verify User Is Logged In
    Wait Until Element Is Visible   ${lnkLogout}