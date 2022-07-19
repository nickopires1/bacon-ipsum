*** Settings ***
Library    SeleniumLibrary

Resource    ../configs/default_config.resource
Resource    ../resources/text_generator.resource

Test Setup        Open Browser    ${URL}  ${BROWSER}
Test Teardown     Close Browser

*** Test Cases ***
Scenario 01 - Text Without Bacon ipsum dolor amet..
    [Tags]    1
    Unselect Checkbox                    ${START_WITH_LOREM_COMBOBOX}
    Click Element                        ${GIVE_ME_BACON_BUTTON}
    Wait Until Element Does Not Contain  ${PARAGRAPH_1}    Bacon ipsum dolor amet

Scenario 02 - Text Start With Bacon ipsum dolor amet
    [Tags]    2
    Click Element                ${GIVE_ME_BACON_BUTTON}
    Wait Until Element Contains  ${PARAGRAPH_1}    Bacon ipsum dolor amet

Scenario 03 - Text Start With Spicy jalapeno
    [Tags]    3
    Unselect Checkbox              ${START_WITH_LOREM_COMBOBOX}
    Select Checkbox                ${MAKE_IT_SPICY_COMBOBOX}
    Click Element                  ${GIVE_ME_BACON_BUTTON}
    Wait Until Element Contains    ${PARAGRAPH_1}   Spicy jalapeno

Scenario 04 - Start with Spicy jalapeno bacon ipsum dolor amet 
    [Tags]    4
    Select Checkbox                ${MAKE_IT_SPICY_COMBOBOX}
    Click Element                  ${GIVE_ME_BACON_BUTTON}
    Wait Until Element Contains    ${PARAGRAPH_1}    Spicy jalapeno bacon ipsum dolor amet

Scenario 05 - Start without Spicy jalapeno bacon ipsum dolor amet 
    [Tags]    5
    Unselect Checkbox                      ${START_WITH_LOREM_COMBOBOX}
    Click Element                          ${GIVE_ME_BACON_BUTTON}
    Wait Until Element Does Not Contain    ${PARAGRAPH_1}    Spicy jalapeno bacon ipsum dolor amet

Scenario 06 - Exact Number of Paragraphs
    [Tags]    6
    Input Text                       ${PARAGRAPHS_TEXT_FIELD}     3
    Click Element                    ${GIVE_ME_BACON_BUTTON}
    Wait Until Element Is Visible    ${PARAGRAPH_3}
    