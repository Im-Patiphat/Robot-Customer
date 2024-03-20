*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
# Name 
${Name_1}    johnjohn
${Name_2}    Johnj
${Name_3}    johnjo
${Name_4}    Johnjohnjohnjo
${Name_5}    johnjohnjohnjoh
${Name_6}    John    
${Name_8_10_11}    johnjohn
# Lastname
${Lastname_1}    canonc
${Lastname_2}    canoncanoncano
${Lastname_3}    canoncanoncanon
${Lastname_4_5_6_10_11}    canoncan
${Lastname_8}    cano
# Verify
${First_Name}    First Name: 
${Customer}    Customer Detail

*** Test Cases ***
FromCustomer and Verify Results-1
    Open FromCustomer
    Input Search Term-1
    Press Enter Google Search
    Verify Results-1
    Close Browser

FromCustomer and Verify Results-2
    Open FromCustomer
    Input Search Term-2
    Press Enter Google Search
    Verify Results-2
    Close Browser

FromCustomer and Verify Results-3
    Open FromCustomer
    Input Search Term-3
    Press Enter Google Search
    Verify Results-3
    Close Browser

FromCustomer and Verify Results-4
    Open FromCustomer
    Input Search Term-4
    Press Enter Google Search
    Verify Results-4
    Close Browser

FromCustomer and Verify Results-5
    Open FromCustomer
    Input Search Term-5
    Press Enter Google Search
    Verify Results-5
    Close Browser

FromCustomer and Verify Results-6
    Open FromCustomer
    Input Search Term-6
    Press Enter Google Search
    Verify Results-6
    Close Browser

FromCustomer and Verify Results-8
    Open FromCustomer
    Input Search Term-8
    Press Enter Google Search
    Verify Results-8
    Close Browser

FromCustomer and Verify Results-10
    Open FromCustomer
    Input Search Term-10
    Press Enter Google Search
    Verify Results-10
    Close Browser

FromCustomer and Verify Results-11
    Open FromCustomer
    Input Search Term-11
    Press Enter Google Search
    Verify Results-11
    Close Browser

*** Keywords ***
Open FromCustomer
    Open Browser    http://localhost/web/    ${BROWSER}

Input Search Term-1
    Input Text      id=firstname                 ${Name_1}
    Input Text      id=lastname                 ${Lastname_1}
    Input Text      id=age                      2

Input Search Term-2
    Input Text      id=firstname                 ${Name_2}
    Input Text      id=lastname                 ${Lastname_2}
    Input Text      id=age                      149

Input Search Term-3
    Input Text      id=firstname                 ${Name_3}
    Input Text      id=lastname                 ${Lastname_3}
    Input Text      id=age                      150

Input Search Term-4
    Input Text      id=firstname                 ${Name_4}
    Input Text      id=lastname                 ${Lastname_4_5_6_10_11}
    Input Text      id=age                      75

Input Search Term-5
    Input Text      id=firstname                 ${Name_5}
    Input Text      id=lastname                 ${Lastname_4_5_6_10_11}
    Input Text      id=age                      75

Input Search Term-6
    Input Text      id=firstname                 ${Name_6}
    Input Text      id=lastname                 ${Lastname_4_5_6_10_11}
    Input Text      id=age                      75

Input Search Term-8
    Input Text      id=firstname                 ${Name_8_10_11}
    Input Text      id=lastname                 ${Lastname_8}
    Input Text      id=age                      75

Input Search Term-10
    Input Text      id=firstname                 ${Name_8_10_11}
    Input Text      id=lastname                 ${Lastname_4_5_6_10_11}
    Input Text      id=age                      0

Input Search Term-11
    Input Text      id=firstname                 ${Name_8_10_11}
    Input Text      id=lastname                 ${Lastname_4_5_6_10_11}
    Input Text      id=age                      151

Press Enter Google Search
    Press Keys      id=submit    ENTER

Verify Results-1
    ${result} =    Get Text    id=firstname
    Should Be Equal As Strings    ${result}    ${First_Name}${Name_1}

Verify Results-2
    ${result} =    Get Text    id=firstname
    Should Be Equal As Strings    ${result}    ${First_Name}${Name_2}

Verify Results-3
    ${result} =    Get Text    id=firstname
    Should Be Equal As Strings    ${result}    ${First_Name}${Name_3}

Verify Results-4
    ${result} =    Get Text    id=firstname
    Should Be Equal As Strings    ${result}    ${First_Name}${Name_4}

Verify Results-5
    ${result} =    Get Text    id=firstname
    Should Be Equal As Strings    ${result}    ${First_Name}${Name_5}

Verify Results-6
    ${result} =    Get Text    id=fromname
    Should Be Equal As Strings    ${result}    ${Customer}

Verify Results-8
    ${result} =    Get Text    id=fromname
    Should Be Equal As Strings    ${result}    ${Customer}

Verify Results-10
    ${result} =    Get Text    id=fromname
    Should Be Equal As Strings    ${result}    ${Customer}

Verify Results-11
    ${result} =    Get Text    id=fromname
    Should Be Equal As Strings    ${result}    ${Customer}

