*** Settings ***
Documentation       Search Flight Number Test Cases
Library             AppiumLibrary
Resource            ../PageObject/SearchKeywords.robot
Resource            ../PageObject/LoginKeywords.robot
Resource            ../PageObject/Base.robot

*** Variables ***
${fligt_num}        DA935       

*** Test Cases ***
User Should Be Able To Search Flight Number
    [Documentation]       Test to verify that User Should Be Able To Search Flight Number
    Open Flight Application

    User Should Be Able To Login
    Tap Search Tab
    Input Flight Number             flight_id=${fligt_num}      
    Tap Search Button
    Verify Message

    [Teardown]            Close Application
