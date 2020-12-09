*** Settings ***
Documentation    Suite description
Resource      ../imports.robot


*** Keywords ***
[GET][200] - Success - Get List User 
    REST.get             ${api_url}/${get_list_user_url}
    rest extract
    [common][verify] - Http status code is "200"


[POST][200] - Success - Create User
    [Arguments]       ${headers}             ${body}  
    REST.post       ${api_url}/${post_register_user}
        ...     headers=${headers}
        ...     body=${body}
    rest extract
    [common][verify] - Http status code is "201"


[Pre_Request] - Create User - body
    [Arguments]     ${output}=body    ${remove_null}=${True}   ${remove_empty}=${True}    &{arg_dic}
    ${schema}              catenate     SEPARATOR=
     ...    {
     ...      "name": "string",
     ...      "job": "string"
     ...    }
    ${body}     generate json
        ...     json_schema=${schema}
        ...     args=${arg_dic}
        ...     remove_null=${remove_null}
        ...     remove_empty=${remove_empty}
    [common] - Set variable       name=${output}      value=${body}

[common][pre_request] - authorization headers
    [Arguments]  ${content_type}=application/json    ${output}=headers
    ${headers}    create dictionary   content-type=${content_type}
    [common] - Set variable    name=${output}    value=${headers}