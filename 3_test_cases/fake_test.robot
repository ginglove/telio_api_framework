*** Settings ***
Documentation    Suite description
Resource          ../imports.robot

*** Variables ***
${name}        Test
${job}         admin

*** Test Cases ***
Test title    
     [GET][200] - Success - Get List User  
     ${random_name}=    generate random string    10    [LETTERS]
     ${random_job}=    generate random string    5    [LETTERS]
     [Pre_Request] - Create User - body           $.name= ${random_name}        $.job=${random_job}
     [common][pre_request] - authorization headers
     [POST][200] - Success - Create User
     ...     headers=${headers}
     ...     body=${body}          