*** Settings ***
Library      jsonparser.jsonparse    ${path}    ${device}    WITH NAME    source_attribute
Library      jsonparser.jsonparse    ${path}    ${dest_device}    WITH NAME    dest_attribute
Library    Collections

*** Variables ***
${arg1}    pankaj
${arg2}    Mishra
${width}
#${result}
#${age}    35
#${marks}    26
#${city}    noida

*** Test Cases ***
Test
    Test_jsonparse    ${arg1}    ${arg2}

*** Keywords ***
Test_jsonparse
    [Arguments]    ${arg1}    ${arg2}
    LOG    ${arg1}
    LOG    ${arg2}
    Log    ${path}
    Log    ${device}

    #${result} =    jsonparser.jsonparse.getting_attributes_of_phones

    ${source_result} =    source_attribute.getting_attributes_of_phones
    ${dest_result} =    dest_attribute.getting_attributes_of_phones
    #${result} =    Call Method     makeMyClass    ${arg1}    ${arg2}
    #${result} =     Call Method     sample_func    ${arg1}    ${arg2}
    [Return]       ${source_result}    ${dest_result}
    set suite variable    ${source_result}
    set suite variable    ${dest_result}
    TEST_SOURCE_DEVICE_DETAILS
    TEST_DEST_DEVICE_DETAILS
TEST_SOURCE_DEVICE_DETAILS
    LOG    ${source_result}
    ${type_ABC}    Evaluate    type($source_result)
    LOG    ${type_ABC}
    :FOR  ${item}  IN  ${source_result}
    \    LOG    ${item}
    :FOR    ${key}    IN    @{source_result.keys()}
    \    ${value}=    Get From Dictionary    ${source_result}    ${key}
    \    Set suite Variable    ${${key}}    ${value}
    \    Log    ${key},${value}
    LOG    ${height}

TEST_DEST_DEVICE_DETAILS
    LOG    ${source_result}
    :FOR  ${item}  IN  ${dest_result}
    \    LOG    ${item}
    :FOR    ${key}    IN    @{dest_result.keys()}
    \    ${value}=    Get From Dictionary    ${dest_result}    ${key}
    \    Set suite Variable    ${${key}}    ${value}
    \    Log    ${key},${value}
    LOG    title