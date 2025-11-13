***Settings***
Library  SikuliLibrary 
Resource  ../configs/configs.robot
Resource  ../test_data/simpad_test_data.robot

*** Variables ***
${END_SESSION_BUTTON}   ${IMAGE_PATH}menu_manual_mode_page_images/end_session_button.png

*** Keywords ***
Click on End Session button
    [Documentation]    This Keyword is used to click on the End session action button
    Click   ${END_SESSION_BUTTON}