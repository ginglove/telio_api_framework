*** Settings ***
Documentation    Suite description
Resource          ../../imports.robot

*** Variables ***
${name}        Test
${job}         admin

*** Test Cases ***
# Test title    
#      [GET][200] - Success - Get List User  
#      ${random_name}=    generate random string    10    [LETTERS]
#      ${random_job}=    generate random string    5    [LETTERS]
#      [Pre_Request] - Create User - body           $.name= ${random_name}        $.job=${random_job}
#      [common][pre_request] - authorization headers
#      [POST][200] - Success - Create User
#      ...     headers=${headers}
#      ...     body=${body}          

# [TC][LOS][POST][200] - Register User 
#      ${random_name}=    generate random string    10    [LETTERS]
#      Set Suite Variable  ${suite_random_name}     ${random_name}
#      [Pre_Request][LOS][POST] - Register User - body          $.email= ${random_name}@gmail.com      $.password=12345678    $.confirmPassword=12345678
#      [common][pre_request] - authorization headers
#      [LOS][POST][200] - Register User  
#      ...   headers=${headers}
#      ...   body=${body}

# [TC][LOS][POST][400] - Register User with password less than 8 characters
#      ${random_name}=    generate random string    10    [LETTERS]
#      [Pre_Request][LOS][POST] - Register User - body          $.email= ${random_name}@gmail.com      $.password=1234567    $.confirmPassword=1234567
#      [common][pre_request] - authorization headers
#      [LOS][POST][400] - Register User with password less than 8 characters  
#      ...   headers=${headers}
#      ...   body=${body}

# [TC][LOS][POST][200] - Login Successful 
#      [Pre_Request][LOS][POST] - User Login - body           $.email=email180872@gmail.com      $.password=Forever1
#      [common][pre_request] - authorization headers
#      [LOS][KW][POST][200] - User Login
#      ...   headers=${headers}
#      ...   body=${body}

[TC][LOS][POST][200] - Change Password Successfully
     [Pre_Request][LOS][POST] - User Login - body           $.email=email180872@gmail.com      $.password=Forever1      $.newPassword=Forever2
     [common][pre_request] - Content-type and Accept headers
     [LOS][KW][POST][200] - Change password
     ...    headers=${headers}
     ...    body=${body}

[TC][LOS][POST][200] - User been doing forgot Password Successfully
     [Pre_Request][LOS][POST] - Forgot Password - body      $.email=nga1@mail.com
     [common][pre_request] - Content-type and Accept headers
     [LOS][KW][POST][200] - Forgot password
     ...    headers=${headers}
     ...    body=${body}


