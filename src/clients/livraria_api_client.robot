*** Settings ***
Library  Browser

# **
# * Mapeamento de requisições
# **

*** Keywords ***
[LivrariaApiClient] - Post livros
    [Arguments]    ${payload}
    Log    ${payload}
    New Browser
    New Page
    ${response}  Http    url=http://132.145.174.237:3000/livros
    ...                  method=POST
    ...                  body=${payload}
    RETURN    ${response}


# **
# * Métodos e Validações
# **

[LivrariaApiClient] - Validate Response
    [Arguments]    ${response}    ${code}
    Log    ${response}
    Should Be Equal As Integers    ${response["status"]}     ${code}