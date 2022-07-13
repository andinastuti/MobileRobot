
*** Settings ***
Documentation       Search Flow Related Keyword
Library             AppiumLibrary
Variables           ../PageObject/LoginLocators.yaml 

*** Keywords ***
Tap Sign in Icon
    Tap                             ${signin_icon}
    Sleep                           5s

Input Username
    [Arguments]                     ${user_email}
    Input text                      ${username}             ${user_email}              

Input Password
    [Arguments]                     ${user_password}
    Input text                      ${password}             ${user_password}     

Tap Sign in Button
    Tap                             ${signin_button}
    Sleep                           5s

Verify Account User Login
    Element Should Be Visible       ${account_user}
    Sleep                           2s