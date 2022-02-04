*** Settings ***
Test Teardown     BuiltIn.Run Keyword If Test Failed    SeleniumLibrary.Close Browser
Resource  Xpath.resource
Library  SeleniumLibrary
Library  BuiltIn
Library  Collections

*** Variables ***
${URL_360Imprimir_Page}                           https://www.360imprimir.pt/
${URL_360Imprimir_LoginPage}                      https://www.360imprimir.pt/Account/Login
${URL_360Imprimir_StorePage}                      https://www.360imprimir.pt/Client?loggedIn=True
${URL_360Imprimir_CardsPage}                      https://www.360imprimir.pt/grupo/cartoes-de-marketing
${URL_360Imprimir_CardTypePage}                   https://www.360imprimir.pt/cartoes-de-visita?id=14617&productGroupId=134&indexManagementId=35&queryId=3808a842c1cb9a4ea8edc13cb72b7a6a&objectId=P2_BUSINESSCARD_14617
${URL_360Imprimir_ChooseTemplatePage}             https://www.360imprimir.pt/cartoes-de-visita/modelos?productGroupId=134&indexManagementId=35&queryId=597e9ca8e57ca39e2f5969ac097a16df&objectId=P2_BUSINESSCARD_14617
${URL_360Imprimir_FinishTemplatePage}             https://www.360imprimir.pt/cartoes-de-visita/modelos/elegante-preto-e-dourado-com-slogan?productGroupId=134&indexManagementId=35&queryId=597e9ca8e57ca39e2f5969ac097a16df&objectId=P2_BUSINESSCARD_14617
${URL_360Imprimir_CartPage}                       https://www.360imprimir.pt/Cart
${BROWSER}                                        chrome
*** Test Cases ***
TC_BIZAY_E2E_Prod
    #If you want to run it on chrome just add in the line below the BROWSER variable
    SeleniumLibrary.Open browser    ${URL_360Imprimir_Page}
    SeleniumLibrary.Maximize Browser Window
    #SeleniumLibrary.Capture Page Screenshot    
    BuiltIn.Sleep    5s
    SeleniumLibrary.click Element    ${NoThanks_CloseModal} 
    SeleniumLibrary.click Element    ${Click_Login_Options}
    BuiltIn.Sleep    5s
    SeleniumLibrary.click Element    ${Insert_Username}
    SeleniumLibrary.Input text       ${Insert_Username}       ${Username}
    SeleniumLibrary.click Element    ${Insert_Password}
    SeleniumLibrary.Input text       ${Insert_Password}       ${Password}
    SeleniumLibrary.Click button     ${Click_Login}
    #Efetuado o Login
    BuiltIn.Sleep    5s
    SeleniumLibrary.Click Element    ${Cartoes_de_Visita_Option}
    BuiltIn.Sleep    5s
    SeleniumLibrary.Click Element    ${Select_Card_Type}
    BuiltIn.Sleep    10s     Wait for a page Load
    ## Save Price
    ${ShoppingPagePrice}    SeleniumLibrary.Get Text         ${Save_Price}
    #Confirm Calculator
    SeleniumLibrary.Click Element    ${Confirm_Calculator} 
    #Select Template
    BuiltIn.Sleep    10s
    SeleniumLibrary.Click Element    ${Choose_Template}
    #Compare price
    ${TemplatePagePrice}    SeleniumLibrary.Get Text         ${Compare_Price}
    BuiltIn.Should Be Equal    ${ShoppingPagePrice}    ${TemplatePagePrice}         
    #Confirm Template
    BuiltIn.Sleep    5s
    SeleniumLibrary.Click button     ${Confirm_Template}
    BuiltIn.Sleep    5s
    SeleniumLibrary.Click Element    ${Close_Tip_Modal}
    BuiltIn.Sleep    2s
    SeleniumLibrary.Click Element    ${Finish_Template}
    #Compare Price Last Time on Cart
    BuiltIn.Sleep    30s
    ${CartPrice}    SeleniumLibrary.Get Text    ${Compare_Price_Cart}
    Builtin.Should Be Equal    ${ShoppingPagePrice}    ${CartPrice}
    Builtin.Should Be Equal    ${TemplatePagePrice}    ${CartPrice}
    SeleniumLibrary.Close Browser
