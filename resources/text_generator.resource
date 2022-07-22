*** Settings ***

Resource    ../page_objects/text_generator_page.resource

*** Keywords ***
Without Bacon ipsum dolor amet
    Unselect Checkbox                    ${START_WITH_LOREM_COMBOBOX}
    Click Element                        ${GIVE_ME_BACON_BUTTON}
    Wait Until Element Does Not Contain  ${PARAGRAPH_1}    Bacon ipsum dolor amet

Start Bacon ipsum dolor amet
    Click Element                ${GIVE_ME_BACON_BUTTON}
    Wait Until Element Contains  ${PARAGRAPH_1}    Bacon ipsum dolor amet

Start Spicy jalapeno
    Unselect Checkbox              ${START_WITH_LOREM_COMBOBOX}
    Select Checkbox                ${MAKE_IT_SPICY_COMBOBOX}
    Click Element                  ${GIVE_ME_BACON_BUTTON}
    Wait Until Element Contains    ${PARAGRAPH_1}   Spicy jalapeno 

Start Spicy jalapeno bacon ipsum dolor amet
    Select Checkbox                ${MAKE_IT_SPICY_COMBOBOX}
    Click Element                  ${GIVE_ME_BACON_BUTTON}
    Wait Until Element Contains    ${PARAGRAPH_1}    Spicy jalapeno bacon ipsum dolor amet

Whitout Spicy jalapeno bacon ipsum dolor amet
    Unselect Checkbox                      ${START_WITH_LOREM_COMBOBOX}
    Click Element                          ${GIVE_ME_BACON_BUTTON}
    Wait Until Element Does Not Contain    ${PARAGRAPH_1}    Spicy jalapeno bacon ipsum dolor amet

Number Paragraphs
    Input Text                       ${PARAGRAPHS_TEXT_FIELD}     3
    Click Element                    ${GIVE_ME_BACON_BUTTON}
    Wait Until Element Is Visible    ${PARAGRAPH_3}
    