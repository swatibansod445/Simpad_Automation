***Settings***
Library  SikuliLibrary 
Resource  ../configs/configs.robot

*** Variables ***
${STANDARDIZED_PATIENT}            ${IMAGE_PATH}connect_to_simulator_page_images/standardized_patient.png
${TOOL_ICON}                       ${IMAGE_PATH}connect_to_simulator_page_images/tool_icon.png
${CONNECT_TO_SIMULATOR_TITLE}      ${IMAGE_PATH}connect_to_simulator_page_images/connect_to_simulator_title.png

*** Keywords ***
Click on standardised patient
    [Documentation]   This keyword is used to click on the standardized patient on the Connect To Simulator Page.
     Win Activate    SimPad rcgui
     Click     ${STANDARDIZED_PATIENT} 
    
     

Verify that Connect To Simulator page is displayed properly
    [Documentation]   This keyword is used to verify that the Connect To Simulator Page is displayd as expected
        Wait Until Screen Contain    ${CONNECT_TO_SIMULATOR_TITLE}    20
        Wait Until Screen Contain    ${STANDARDIZED_PATIENT}    20
        Wait Until Screen Contain    ${TOOL_ICON}    20    
        
   

    