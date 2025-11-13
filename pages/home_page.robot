***Settings***
Library  SikuliLibrary  
Resource  ../configs/configs.robot

***Variables***
${MANUAL_MODE_TILE}        ${IMAGE_PATH}home_page_images/manual_mode_tile.png
${AUTOMATIC_MODE_TILE}     ${IMAGE_PATH}home_page_images/automatic_mode_tile.png
${BLS_INSTRUCTOR_TILE}     ${IMAGE_PATH}home_page_images/BLS_Instructor_tile.png
${BLS_LEARNER_TILE}        ${IMAGE_PATH}home_page_images/BLS_Learner_tile.png
${LAERDAL_SCENARIO_CLOUD}  ${IMAGE_PATH}home_page_images/Laerdal_Scenario_Cloud_tile.png
${SYSTEM_SETTINGS}         ${IMAGE_PATH}home_page_images/System_settings_tile.png
${BATTERY_INDICATOR}       ${IMAGE_PATH}home_page_images/battery_indicator.png

*** Keywords ***

Click On Manual Mode Tile
    [Documentation]   This keywork is used to click on the Manual mode
    Win Activate    SimPad rcgui
    Click    ${MANUAL_MODE_TILE}
    

Verify that home Page is displayed properly
    [Documentation]   This keyword verifies that the Home page is dispalyed as expected
         Wait Until Screen Contain    ${MANUAL_MODE_TILE}    20
         Wait Until Screen Contain    ${AUTOMATIC_MODE_TILE}    20
         Wait Until Screen Contain    ${BLS_INSTRUCTOR_TILE}    20
         Wait Until Screen Contain    ${BLS_LEARNER_TILE}    20
         Wait Until Screen Contain    ${LAERDAL_SCENARIO_CLOUD}    20
         Wait Until Screen Contain    ${SYSTEM_SETTINGS}    20


Click on battery indictor
    [Documentation]  This keyword is used to click on the battery indicator
    Click    ${BATTERY_INDICATOR}
    



    
    
     


    
