***Settings***
Library     SeleniumLibrary
Variables   ../Locators/login.py
Resource    ../Keywords/Login.resource
# Test Setup      Start Test Environment    https://sample-videos.com/download-sample-csv.php

***Variables***
${DOWNLOAD_DIR}     ${CURDIR}


***Test Cases***
Download csv file
   ${files_before_download}=    Count Files In Directory     ${CURDIR} 
   ${prefs} =    Create Dictionary    download.default_directory=${DOWNLOAD_DIR}
   #url can be updated
   Open Browser    https://sample-videos.com/download-sample-csv.php     chrome     options=add_experimental_option("prefs",${prefs})
   Maximize Browser Window
   Log      ${CURDIR}
   # Below xpath is to click on download button
   Wait Until Element Is Visible    xpath=//a[@data='1']
   Click Element   xpath=//a[@data='1']
   Sleep    5s
   #It is checking the current count should be less than above  q
   ${files_after_download}=     Count Files In Directory     ${CURDIR}
   Should Be Equal  ${files_before_download}    ${files_after_download}+1
    