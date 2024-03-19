*** Settings ***
Resource  ../support/hooks.robot
Resource  ../clients/livraria_api_client.robot
Resource  ../mocks/livraria_api_mock.robot

Suite Setup        [Hooks] - Before All

*** Test Cases ***

Post Livros Api Livraria
    ${response}=  [LivrariaApiClient] - Post livros    ${post_livros}
    [LivrariaApiClient] - Validate Response    ${response}    201