*** Settings ***
Library    SeleniumLibrary

Resource    ../configs/default_config.resource
Resource    ../resources/text_generator.resource

Test Setup        Open Browser    ${URL}  ${BROWSER}
Test Teardown     Close Browser

*** Test Cases ***
Scenario 01 - Text Without Bacon ipsum dolor amet..
    [Tags]    Whitout_bacon_ipsum_dolor_amet
    Without Bacon ipsum dolor amet

Scenario 02 - Text Start With Bacon ipsum dolor amet
    [Tags]    Whit_bacon_ipsum_dolor_amet
    Start Bacon ipsum dolor amet

Scenario 03 - Text Start With Spicy jalapeno
    [Tags]    Text_whit_the_second_checkbox
    Start Spicy jalapeno

Scenario 04 - Spicy jalapeno bacon ipsum dolor amet 
    [Tags]    Whit_the_first_and_second_checkbox
    Start Spicy jalapeno bacon ipsum dolor amet

Scenario 05 - Start without Spicy jalapeno bacon ipsum dolor amet 
    [Tags]    Whitout_the_first_and_second_checkbox
    Whitout Spicy jalapeno bacon ipsum dolor amet

Scenario 06 - Exact Number of Paragraphs
    [Tags]    Exact_paragraphs
    Number Paragraphs
    