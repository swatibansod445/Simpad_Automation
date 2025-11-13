***Settings***
Library  SikuliLibrary  
Resource  ../configs/configs.robot

***Variables***
${HEART_RATE_PAGE_TITLE}        ${IMAGE_PATH}heart_rate_page_images/heart_rate_page_title.png
${HR_RATE_TEXT_VALUE}           ${IMAGE_PATH}heart_rate_page_images/HR_text_and_value.png
${HR_SLIDER}                    ${IMAGE_PATH}heart_rate_page_images/HR_slider.png
${CREATE_NEW_STATE_BUTTON}      ${IMAGE_PATH}heart_rate_page_images/create_new_state_button.png
${ACTIVATE_BUTTON}              ${IMAGE_PATH}heart_rate_page_images/activate_button.png

*** Keywords ***
Verify that the Heart Rate page is dispøayed properly
    [Documentation]    This  keyword verifies that the Heart Rate page is displayed as expected.
        Wait Until Screen Contain     ${HEART_RATE_PAGE_TITLE}    20
        Wait Until Screen Contain     ${HR_RATE_TEXT_VALUE}    20
        Wait Until Screen Contain     ${HR_SLIDER}    20
        Wait Until Screen Contain     ${CREATE_NEW_STATE_BUTTON}    20
        Wait Until Screen Contain     ${ACTIVATE_BUTTON}    20
          
   


