*** Settings ***
Documentation       Book Flight Test Cases
Library             AppiumLibrary
Resource            ../PageObject/BookKeywords.robot
Resource            ../PageObject/LoginKeywords.robot
Resource            ../PageObject/Base.robot

*** Variables ***
${fligt_num}        DA935       

*** Test Cases ***
User Should Be Able To Book Flight
    [Documentation]       Test to verify that User Should Be Able To Book Flight
    Open Flight Application

    User Should Be Able To Login
    Tap Book
    Choose "From City" 
    Choose "To City" 
    Choose "Class" 
    Choose "Start Date"
    Choose "End Date"
    Choose "Flight" Radiobutton
    Checklist "+/-1 Day" 
    Tap Book Button
    Choose Price
    Tap Confirm Button
    Verify Message Appears

    [Teardown]            Close Application