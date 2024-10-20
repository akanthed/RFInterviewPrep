***Settings***
Library     SeleniumLibrary
Variables   ../Locators/login.py
Resource    ../Keywords/Login.resource
Test Setup      Start Test Environment  ${url}/login


***Test Cases***

Test Login Functionality
    [Tags]      Login    
    Enter Valid Credentials  ${username}   ${password}
    Click on Login Button
    Verify User Is Logged In