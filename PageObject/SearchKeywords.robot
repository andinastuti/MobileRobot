*** Settings ***
Documentation       Search Flight Number Related Keyword
Library             AppiumLibrary
Variables           ../PageObject/LoginLocators.yaml 
Variables           ../PageObject/SearchLocators.yaml

*** Variables ***
${user_email}      support@ngendigital.com 
${user_password}   abc123

*** Keywords ***
User Should Be Able To Login
    Tap                             ${signin_icon}
    Sleep                           5s
    Input text                      ${username}             ${user_email}              
    Input text                      ${password}             ${user_password}     
    Tap                             ${signin_button}
    Sleep                           5s

Tap Search Tab
    Tap                             ${search_tab}
    Sleep                           5s

Input Flight Number
    [Arguments]                     ${flight_id}
    Input text                      ${search_field}      ${flight_id}

Tap Search Button
    Tap                             ${search_button}
    Sleep                           5s

Verify Message
    Element Should Be Visible       ${flight_number}
    Sleep                           5s