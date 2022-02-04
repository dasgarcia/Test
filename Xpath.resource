*** variables ***
#
#################################
### Info: Users And Passwords ###
#################################
#
${Username}     daniel.garcia@syone.com
${Password}     123456
#
# headlesschrome
# chrome
# Firefox
${Browser_Default}    Firefox
#
#
#####################################
### Info: Login page objects List ###
#####################################
#
${NoThanks_CloseModal}    //*[contains(@id, 'onesignal-slidedown-cancel-button')]
${Close_Modal}            //*[contains(@id, 'bounceModalClose')]
${Click_Login_Options}    //a[contains(@id, 'login-register')] 
#
#
#####################################
######## Info: Login Options ########
#####################################
#
${Insert_Username}        //input[contains(@id, 'UserNameLogin')] 
${Insert_Password}        //input[contains(@id, 'PasswordLogin')] 
${Click_Login}            //button[contains(@id, 'Login')] 
#
#
#####################################
####### Info: Shopping Page  ########
#####################################
#
${Cartoes_de_Visita_Option}    //div/a[contains(@title, 'Cartões de Visita')]
${Select_Card_Type}            //div[contains(@class, 'hit hidden-xs') and contains(.//span, 'Cartões de Visita 85 x 55 mm Retangular')]
${Save_Price}                  //div[contains(text(), '7,76 €')]
${Confirm_Calculator}          //div[contains(@id, 'begin_purchase') and contains(., 'INICIAR COMPRA')] 
#
#
#####################################
####### Info: Choose Template #######
#####################################
#
${Choose_Template}             //div/img[contains(@ng-src, 'https://pullpt-4c63.kxcdn.com/Templates/BUSINESSCARD/BUSINESSCARD_55x85/11841/front_preview.pt-PT_transparent.png')]
${Compare_Price}               //div[contains(@class, 'current-price')]
${Confirm_Template}            //button[contains(@id, 'chooseBtn')]
#
#
#####################################
###### Info: Finalize Template ######
#####################################
#
${Close_Tip_Modal}             //a[contains(@class, 'introjs-skipbutton btn360 btn360mini btn-red btn-tour')]
${Finish_Template}             //div[contains(text(), 'Finalizar »')]
#
#
#####################################
####### Info: Compare Prices  #######
#####################################
#
${Compare_Price_Cart}          //div/p/strong[contains(@ng-bind, '(line.PriceWithDiscount | customCurrency : _culture)')]