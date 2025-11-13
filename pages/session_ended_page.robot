***Settings***
Library  SikuliLibrary 
Resource  ../configs/configs.robot
Resource  ../test_data/simpad_test_data.robot

*** Variables ***
${QUIT_BUTTON}   ${IMAGE_PATH}session_ended_page_images/quit_button.png
*** Keywords ***

Click on Quit button
    [Documentation]   tHIS KEYWORD IS USED TO CLICK ON THE qUIT BUTTON
    Click   ${QUIT_BUTTON}
    