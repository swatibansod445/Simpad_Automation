***Settings***
Library  SikuliLibrary 

Resource  ../configs/configs.robot
Resource  ../test_data/simpad_test_data.robot

*** Variables ***
${START_BUTTON}              ${IMAGE_PATH}session_page_images/start_button.png
${HR_text}                   ${IMAGE_PATH}session_page_images/HR_text.png
${SLIDER}                    ${IMAGE_PATH}session_page_images/slider.png
${SLIDER_VALUE_IMAGE_PATH}   ${IMAGE_PATH}session_page_images/
${ACTIVATE_BUTTON}           ${IMAGE_PATH}session_page_images/activate_button.png
${SPEAKER_ICON}              ${IMAGE_PATH}session_page_images/speaker_button.png
${SLIDER_HANDLE}             ${IMAGE_PATH}session_page_images/slider_handle.png
${HEART_IN_SOUND_VOLUME}     ${IMAGE_PATH}session_page_images/heart_in_sound_volumes.png
${MENU_BUTTON}               ${IMAGE_PATH}session_page_images/menu_button.png
${HEALTHY_TEXT}              ${IMAGE_PATH}session_page_images/healthy_text-on_session_page.png
${CURRENT_STATE_STATUS}      ${IMAGE_PATH}session_page_images/currect_state_status_on_session_page.png
${ALL_NORMAL_BUTTON}         ${IMAGE_PATH}session_page_images/all_normal_button.png
${THEME_TEXT_AND_GRAPH}      ${IMAGE_PATH}session_page_images/sinus_text_and_graph.png
${SPO2_TEXT_AND_VALUE}       ${IMAGE_PATH}session_page_images/spo2_text_and_value.png
${RR_TEXT_AND_VALUE}         ${IMAGE_PATH}session_page_images/RR_text_and_value.png
${ETCO2_TEXT_AND_VALUE}      ${IMAGE_PATH}session_page_images/etco2_text_and_value.png
${BP_TEXT_AND_VALUE}         ${IMAGE_PATH}session_page_images/BP_text_and_value.png
${TEMP_TEXT_AND_VALUE}       ${IMAGE_PATH}session_page_images/Temp_text_and_value.png
${HEART_IMAGE_SESSION_PAGE}  ${IMAGE_PATH}session_page_images/bowel_sounds_image_on_session_page.png
${LUNG_IMAGE_SESSION_PAGE}   ${IMAGE_PATH}session_page_images/bowel_sounds_image_on_session_page.png
${BOWEL_IMAGE_SESSION_PAGE}  ${IMAGE_PATH}session_page_images/bowel_sounds_image_on_session_page.png
${VOCAL_ICON}                ${IMAGE_PATH}session_page_images/vocal_icon.png
${COMMENT_IMAGE}             ${IMAGE_PATH}session_page_images/comment_image.png
${HR_TEXT_WITH_VALUE_100}    ${IMAGE_PATH}session_page_images/hr_text_with_value_100.png
${VALUE_FOR_SLIDER}          ${IMAGE_PATH}session_page_images/value_9_for_slider.png
${END_BUTTON}                ${IMAGE_PATH}session_page_images/end_button.png



*** Keywords ***
Start the session
    [Documentation]   This keyword is used to click on the Start button on the session page
    Click   ${START_BUTTON}


Click on HR
    [Documentation]   This keyword is used to click on HR text
    Click     ${HR_text}

Set the value of slider
    [Documentation]   This keyword is used to set the slider on the Heart Rate , HR page according to the image passed by the user
    [Arguments]   ${VALUE_OF_SLIDER}
    ${SLIDER_IMAGE}=    Set variable    ${SLIDER_VALUE_IMAGE_PATH}${VALUE_OF_SLIDER}
    Click   ${SLIDER_IMAGE}

Click on Activate button
    [Documentation]   This keyword is used to Active action button
   Click    ${ACTIVATE_BUTTON}


Click on Speaker icon
    [Documentation]   This keyword is used to click on the Speker icon
    Click   ${SPEAKER_ICON}


Click on Menu button
    [Documentation]   This keyword is used to CLICK ON Menu button on the eft top of the session page
    Click   ${MENU_BUTTON}


Click on the Vocal icon
    [Documentation]   This keyword is used to click on the Vocal icon
    Click   ${VOCAL_ICON}


Click on End button
   [Documentation]   This keyword is used to click on teh End Button
   Click    ${END_BUTTON}


Move All Sliders
    [Documentation]   This keyword is used to move all the sliders on the Sound page after clicking on the volume icon, we can update this method by adding multiple if staatements and chaing the offset values
    [Arguments]  ${VALUE_OF_SOUND_SLIDER}
    FOR    ${handle}    IN    @{SLIDER_HANDLES}
        Click    ${SLIDER_HANDLE}  ${handle['x']}    ${handle['y']}
        IF    ${VALUE_OF_SOUND_SLIDER} == 9
          Drag And Drop By Offset   ${SLIDER_HANDLE}   ${X_OFFSET}    ${Y_OFFSET}   
        END
      
    END


Verify that the session page is displayed properly
    [Documentation]   This keyword is used to verify that all the components on the session page is displayed as expectsd
         Wait Until Screen Contain   ${MENU_BUTTON}    20
         Wait Until Screen Contain    ${HEALTHY_TEXT}    20
         Wait Until Screen Contain    ${CURRENT_STATE_STATUS}    20
         Wait Until Screen Contain    ${ALL_NORMAL_BUTTON}    20
         Wait Until Screen Contain    ${THEME_TEXT_AND_GRAPH}    20
         Wait Until Screen Contain    ${SPO2_TEXT_AND_VALUE}    20
         Wait Until Screen Contain    ${HR_text}    20
         Wait Until Screen Contain    ${ETCO2_TEXT_AND_VALUE}    20
         Wait Until Screen Contain    ${BP_TEXT_AND_VALUE}    20
         Wait Until Screen Contain    ${TEMP_TEXT_AND_VALUE}    20
         Wait Until Screen Contain    ${HEART_IMAGE_SESSION_PAGE}    20
         Wait Until Screen Contain    ${LUNG_IMAGE_SESSION_PAGE}    20
         Wait Until Screen Contain    ${BOWEL_IMAGE_SESSION_PAGE}    20
         Wait Until Screen Contain    ${VOCAL_ICON}    20
         Wait Until Screen Contain    ${SPEAKER_ICON}    20
         Wait Until Screen Contain    ${COMMENT_IMAGE}    20
     


Move All Sliders1
    [Arguments]    ${X_OFFSET}    ${Y_OFFSET}
    FOR    ${handle}    IN    @{SLIDER_HANDLES}
        ${x}=    Set Variable    ${handle['x']}
        ${y}=    Set Variable    ${handle['y']}

        # Create a Region object around the coordinates (100x100 box)
        ${region}=    Evaluate    from sikuli import Region; Region(int(${x})-50, int(${y})-50, 100, 100)    modules=sikuli

        ${exists}=    Exists    ${SLIDER_HANDLE}    region=${region}    timeout=1s

        IF    ${exists}
            Log    Moving slider at [${x}, ${y}]
            Drag And Drop By Offset    ${region}    ${X_OFFSET}    ${Y_OFFSET}
        ELSE
            Log    Skipping slider at [${x}, ${y}] (handle not visible)
        END
    END



Verify that the HR value is changed
    [Documentation]   This keyword is used to move to the value 
    ${changed_hr_value}=  Exists  ${HR_TEXT_WITH_VALUE_100} 
    
    IF  ${changed_hr_value}
        Log  Value of HR successfully changed
    ELSE
        Fail  Value of HR was not changed

    END
        




