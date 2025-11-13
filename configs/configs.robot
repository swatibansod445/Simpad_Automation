*** Settings ***
Library    SikuliLibrary
Library    AutoItLibrary
*** Variables ***
${APP}       C:\\Program Files (x86)\\Laerdal Medical\\SimPad\\rcgui.exe
${APP_DIR}   C:\\Program Files (x86)\\Laerdal Medical\\SimPad
${SCREENSHOT_FOLDER}    ${CURDIR}/../SimpadProject/screenshots/
${IMAGE_PATH}    ${EXECDIR}/../SimpadProject/images/


*** Keywords ***
Initialize Desktop Environment
    Add Image Path    ${IMAGE_PATH}

Setup
    Open Simpad Application
    
Teardown
   Close Application  ${APP}
    
    
Open Simpad Application
    
     Run    ${APP}    ${APP_DIR}

