*** Settings ***
Documentation    Suite description
Resource      ../../imports.robot


*** Keywords ***
[LOS][POST][200] - Register User 
    [Arguments]       ${headers}             ${body}  
    REST.post       ${api_los_url}/${post_register_user}
        ...     headers=${headers}
        ...     body=${body}
    rest extract
    [common][verify] - Http status code is "200"
    [common][verify] - status code is "200"
    [common][verify] - status message is "Success"

[LOS][POST][400] - Register User with password less than 8 characters
    [Arguments]       ${headers}             ${body}  
    REST.post       ${api_los_url}/${post_register_user}
        ...     headers=${headers}
        ...     body=${body}
    rest extract
    [common][verify] - Http status code is "200"
    [common][verify] - status code is "400"
    [common][verify] - status message is "Request is invalid."

[LOS][KW][POST][200] - User Login
    [Arguments]       ${headers}             ${body}  
    REST.post       ${api_los_url}/${post_login_user_url} 
        ...     headers=${headers}
        ...     body=${body}
    rest extract
    [common][verify] - Http status code is "200"
    [common][verify] - status code is "200"
    [common][verify] - status message is "Success"

[LOS][KW][POST][200] - Change password
    [Arguments]       ${headers}             ${body}  
    REST.post       ${api_los_url}/${post_change_password_url} 
        ...     headers=${headers}
        ...     body=${body}
    rest extract
    [common][verify] - Http status code is "200"
    [common][verify] - status code is "200"
    [common][verify] - status message is "Success"

[LOS][KW][POST][200] - Forgot password
    [Arguments]       ${headers}             ${body}  
    REST.post       ${api_los_url}/${post_forgot_password_url} 
        ...     headers=${headers}
        ...     body=${body}
    rest extract
    [common][verify] - Http status code is "200"
    [common][verify] - status code is "200"
    [common][verify] - status message is "Success"

[Pre_Request][LOS][POST] - Register User - body
    [Arguments]     ${output}=body    ${remove_null}=${True}   ${remove_empty}=${True}    &{arg_dic}
    ${schema}              catenate     SEPARATOR=
     ...    {
     ...      "email": "string",
     ...      "password": "string",
     ...      "confirmPassword": "string"
     ...    }
    ${body}     generate json
        ...     json_schema=${schema}
        ...     args=${arg_dic}
        ...     remove_null=${remove_null}
        ...     remove_empty=${remove_empty}
    [common] - Set variable       name=${output}      value=${body}


[Pre_Request][LOS][POST] - User Login - body
    [Arguments]     ${output}=body    ${remove_null}=${True}   ${remove_empty}=${True}    &{arg_dic}
    ${schema}              catenate     SEPARATOR=
     ...    {
     ...      "email": "string",
     ...      "password": "string"
     ...    }
    ${body}     generate json
        ...     json_schema=${schema}
        ...     args=${arg_dic}
        ...     remove_null=${remove_null}
        ...     remove_empty=${remove_empty}
    [common] - Set variable       name=${output}      value=${body}

[Pre_Request][LOS][POST] - Change Password - body
    [Arguments]     ${output}=body    ${remove_null}=${True}   ${remove_empty}=${True}    &{arg_dic}
    ${schema}              catenate     SEPARATOR=
     ...    {
     ...      "email": "string",
     ...      "password": "string",
     ...      "newPassword": "string"
     ...    }
    ${body}     generate json
        ...     json_schema=${schema}
        ...     args=${arg_dic}
        ...     remove_null=${remove_null}
        ...     remove_empty=${remove_empty}
    [common] - Set variable       name=${output}      value=${body}

[Pre_Request][LOS][POST] - Forgot Password - body
    [Arguments]     ${output}=body    ${remove_null}=${True}   ${remove_empty}=${True}    &{arg_dic}
    ${schema}              catenate     SEPARATOR=
     ...    {
     ...      "email": "string",
     ...      "password": "string",
     ...      "newPassword": "string"
     ...    }
    ${body}     generate json
        ...     json_schema=${schema}
        ...     args=${arg_dic}
        ...     remove_null=${remove_null}
        ...     remove_empty=${remove_empty}
    [common] - Set variable       name=${output}      value=${body}