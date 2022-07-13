*** Settings ***
Documentation       Login Flow Test Cases
Library             AppiumLibrary
Resource            ../PageObject/LoginKeywords.robot
Resource            ../PageObject/Base.robot

*** Variables ***
${valid_email}      support@ngendigital.com 
${valid_password}   abc123

*** Test Cases ***
User Should Be Able To Login With Valid Data
    [Documentation]       Test to verify that User Should Be Able To Login With Valid Data
    Open Flight Application

    Tap Sign in Icon
    Input Username              user_email=${valid_email} 
    Input Password              user_password=${valid_password}
    Tap Sign in Button
    Verify Account User Login

    [Teardown]            Close Application