***Settings***
Library  SikuliLibrary 
Library  OperatingSystem
Resource  ../configs/configs.robot
*** Variables ***

${VOCAL_PAGE_TITLE}      ${IMAGE_PATH}vocal_page_images/vocal_page_title.png
${COUGHING_BUTTON}       ${IMAGE_PATH}vocal_page_images/coughing_button.png
${MOANING_BUTTON}        ${IMAGE_PATH}vocal_page_images/moaning_button.png
${VOMITING_BUTTON}       ${IMAGE_PATH}vocal_page_images/vomiting_button.png
${SOB_BREATHING}         ${IMAGE_PATH}vocal_page_images/sob_breathing.png
${SCRREAMING_BUTTON}     ${IMAGE_PATH}vocal_page_images/screaming_button.png
${YES_BUTTON}            ${IMAGE_PATH}vocal_page_images/yes_button.png
${NO_BUTTON}             ${IMAGE_PATH}vocal_page_images/NO_button.png
${REPEAT_SOUND_BUTTON}   ${IMAGE_PATH}vocal_page_images/repeat_sound.png
${VCA_PLAYING_BUTTON}    ${IMAGE_PATH}vocal_page_images/vca_playing_button.png
${MUTE_SOUND}            ${IMAGE_PATH}vocal_page_images/mute_sound_button.png
${VOLUME_SLIDEROUND}     ${IMAGE_PATH}vocal_page_images/volume_slider.png

*** Keywords ***
Verify that the Vocal Page is displayed properly
    [Documentation]   This keyword is created to verify that all the components are dispalyed as expected.
         Wait Until Screen Contain    ${VOCAL_PAGE_TITLE}    20
         Wait Until Screen Contain    ${COUGHING_BUTTON}    20
         Wait Until Screen Contain    ${MOANING_BUTTON}    20
         Wait Until Screen Contain    ${VOMITING_BUTTON}    20
         Wait Until Screen Contain    ${SOB_BREATHING}    20
         Wait Until Screen Contain    ${SCRREAMING_BUTTON}    20
         Wait Until Screen Contain    ${YES_BUTTON}    20
         Wait Until Screen Contain    ${NO_BUTTON}    20
         Wait Until Screen Contain    ${REPEAT_SOUND_BUTTON}    20
         Wait Until Screen Contain    ${VCA_PLAYING_BUTTON}    20
         Wait Until Screen Contain    ${MUTE_SOUND}    20
         Wait Until Screen Contain    ${VOLUME_SLIDEROUND}    20
     

Click on coughing button
    [Documentation]   This keyword is created to click on teh Coughing button
    Click    ${COUGHING_BUTTON}