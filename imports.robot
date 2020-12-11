*** Settings ***

#### ROBOT LIBRARY ####
Library           SeleniumLibrary
Library           String
Library           RequestsLibrary
Library           SSHLibrary
Library           Collections
Library           DateTime
Library           OperatingSystem
Library           DatabaseLibrary
Library           REST          ssl_verify=${False}

#### PYTHON3 LIBRARY ####
Library           ./Resources/pythonlibs/convert_list_to_string.py
Library           ./Resources/pythonlibs/convert_to_json.py
Library           ./Resources/pythonlibs/encodebase64.py
Library           ./Resources/pythonlibs/json_generator.py
Library           ./Resources/pythonlibs/math_util.py
Library           ./Resources/pythonlibs/remove_quote_string_sql.py
Library           ./Resources/pythonlibs/rsa_encryption.py
Library           ./Resources/pythonlibs/rest_util.py

#### ROBOT WEB COMMON KEYWORDS ####
Resource          ./Keywords/api_common/common.robot


#### ROBOT KEYWORDS ####
Resource     ./Keywords/API_Keywords.robot
Resource     ./Keywords/LOS/LOS_API_Keywords.robot
Resource     ./Keywords/LOS/LOS_API_Pre_Request.robot


### ROBOT TEST DATAS ###
Resource     ./Test_Datas/config_env.robot
