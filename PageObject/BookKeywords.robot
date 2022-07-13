*** Settings ***
Documentation                       Search Flight Number Related Keyword
Library                             AppiumLibrary
Variables                           ../Resource/LoginLocators.yaml 
Variables                           ../Resource/BookLocators.yaml

*** Variables ***
${user_email}                       support@ngendigital.com 
${user_password}                    abc123
${from_toronto}                     Toronto
${to_paris}                         Paris
${text_confirmation}                Your flight is booked. Reservation number is CADX2214

*** Keywords ***
User Should Be Able To Login
    Tap                             ${signin_icon}
    Sleep                           5s
    Input text                      ${username}             ${user_email}              
    Input text                      ${password}             ${user_password}     
    Tap                             ${signin_button}
    Sleep                           5s

Tap Book
    Tap                             ${book_tab}
    Sleep                           5s

Choose "From City"
    Tap                             ${from_city}
    Sleep                           3s
    Tap                             ${toronto}
    Sleep                           3s

Choose "To City" 
    Tap                             ${to_city}
    sleep                           3s
    Tap                             ${paris}

Choose "Class" 
    Tap                             ${class}
    sleep                           3s
    Tap                             ${first_class}

Choose "Start Date"
    Tap                             ${start_date} 
    sleep                           3s
    Tap                             ${choose_start_date}
    Tap                             ${ok_button}

Choose "End Date"
    Tap                             ${end_date}
    Sleep                           3s
    Tap                             ${choose_end_date}
    Tap                             ${ok_button}

Choose "Flight" Radiobutton
    Tap                             ${click_flight}

Checklist "+/-1 Day" 
    Tap                             ${oneday}

Tap Book Button
    Tap                             ${book_button}
    Sleep                           5s

Choose Price
    Tap                             ${price}
    Sleep                           5s

Tap Confirm Button
    Tap                             ${confirm_order}
    Sleep                           5s

Verify Message Appears 
    Element Should Contain Text     ${confirmation}         ${text_confirmation}
    Sleep                           5s
