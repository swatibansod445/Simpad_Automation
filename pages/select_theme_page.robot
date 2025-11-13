***Settings***
Library  SikuliLibrary 
Resource  ../configs/configs.robot
*** Variables ***

${SELECT_THEME_LOGO}         ${IMAGE_PATH}select_theme_page_images/select_theme_logo.png
${SELECT_THEME_TITLE}        ${IMAGE_PATH}select_theme_page_images/select_theme_title.png
${SELECT_THEME_TITLE_TEXT}   ${IMAGE_PATH}select_theme_page_images/select_theme_title_text.png
${CIRCULATION_THEME_BUTTON}  ${IMAGE_PATH}select_theme_page_images/circulation_button.png
${HEMORRHAGE_THEME_BUTTON}   ${IMAGE_PATH}select_theme_page_images/hemorrhage_button.png
${RESPIRATION_THEME_BUTTON}  ${IMAGE_PATH}select_theme_page_images/respiration_button.png
${SIM_NEWB_THEME_BUTTON}     ${IMAGE_PATH}select_theme_page_images/sim_newb_button.png
${HEALTHY_THEME_BUTTON}      ${IMAGE_PATH}select_theme_page_images/healthy_theme_buttom.png

*** Keywords ***
Select Healthy theme
    [Documentation]   This keyword is used to click on the healthy  buttom to enter the healthy theme
    Win Activate    SimPad rcgui
    Click   ${HEALTHY_THEME_BUTTON} 

Verify that the select theme page is displayed properly
    [Documentation]  This keyword is used to verify that all the components on the Select Theme page are displayed
         Wait Until Screen Contain    ${SELECT_THEME_LOGO}    20
         Wait Until Screen Contain    ${SELECT_THEME_TITLE}    20
         Wait Until Screen Contain    ${SELECT_THEME_TITLE_TEXT}    20
         Wait Until Screen Contain    ${CIRCULATION_THEME_BUTTON}    20
         Wait Until Screen Contain    ${HEMORRHAGE_THEME_BUTTON}    20
         Wait Until Screen Contain    ${RESPIRATION_THEME_BUTTON}    20
         Wait Until Screen Contain    ${SIM_NEWB_THEME_BUTTON}    20
         Wait Until Screen Contain    ${HEALTHY_THEME_BUTTON}    20
    
