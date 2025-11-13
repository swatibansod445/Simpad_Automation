***Settings***
Library  SikuliLibrary 
Resource  ../configs/configs.robot
Resource  ../utilities/common_utilities.robot

*** Variables ***
${SESSION_NAME_LABEL}               ${IMAGE_PATH}session_information_page_images/session_name_textbox_label.png
${INSTRUCTOR_LABEL}                 ${IMAGE_PATH}session_information_page_images/instructor_textbox_label.png
${PARTICIPANT_!_LABEL}              ${IMAGE_PATH}session_information_page_images/participant_1_textbox_label.png
${OK_ACTION_BUTTON}                 ${IMAGE_PATH}session_information_page_images/ok_action_button.png
${SESSION_INFORMATION_TITLE_TEXT}   ${IMAGE_PATH}session_information_page_images/session_information_page_title.png
${ADD_PARTICIPANT_BUTTON}           ${IMAGE_PATH}session_information_page_images/add_participant.png



*** Keywords ***
Enter data in session information
    [Documentation]  This keyword is used to enter  SESSION_NAME, INSTRUCTOR and PARTICIPANT_1 and click on OK button
    [Arguments]   ${SESSION_NAME}    ${INSTRUCTOR}   ${PARTICIPANT_1}
    Win Activate    SimPad rcgui
    #Enter data in Name Session textbox
    Enter data in the textbox  ${SESSION_NAME_LABEL}    ${SESSION_NAME}
    #Enter data in Instructor textbox
    Enter data in the textbox  ${INSTRUCTOR_LABEL}    ${INSTRUCTOR}
    #Enter data in Instructor textbox
    Enter data in the textbox  ${PARTICIPANT_!_LABEL}    ${PARTICIPANT_1}
    Click on OK button


Click on OK button
   Click    ${OK_ACTION_BUTTON}
    
Enter data in the textbox
    [Documentation]    This Keyword is used to click on the textbox, erase already present data , enetr new text and click on OK
    [Arguments]  ${LABEL_NAME}  ${TEXT_TO_ENTER}
    Click    ${LABEL_NAME}    100    0
    Type With Modifiers   a    CTRL             
    Press Special Key    BACKSPACE     
    Type With Modifiers    ${TEXT_TO_ENTER} 
    Click on OK button 

 
Verify that the Session Information Page is displayed properly
    [Documentation]  This keyword is used to verify that all the components of Session information page is dispalyed as expected
         Wait Until Screen Contain    ${SESSION_INFORMATION_TITLE_TEXT}    20
         Wait Until Screen Contain    ${SESSION_NAME_LABEL}    20
         Wait Until Screen Contain    ${INSTRUCTOR_LABEL}    20
         Wait Until Screen Contain    ${PARTICIPANT_!_LABEL}    20
         Wait Until Screen Contain    ${SESSION_INFORMATION_TITLE_TEXT}    20
         Wait Until Screen Contain    ${OK_ACTION_BUTTON}    20
         Wait Until Screen Contain    ${ADD_PARTICIPANT_BUTTON}    20
    

    
  



    
     
     
     
    