***Settings***
Library  SikuliLibrary 
Resource  ../configs/configs.robot
*** Variables ***
${TECHNICAL_INFO_ERROR_MESSAGE}   ${IMAGE_PATH}device_information_page_images/technical_information_error_message.png
${DEVIC_INFORMATION_PAGE_TITLE}   ${IMAGE_PATH}device_information_page_images/device_information_page_title.png
${WIFI_ICON}                      ${IMAGE_PATH}device_information_page_images/WIFI_icon.png
${BATTERY_ICON}                   ${IMAGE_PATH}device_information_page_images/battery_image.png
${BATTERY_PERCENTAGE_ICON}        ${IMAGE_PATH}device_information_page_images/battery_percentage_image.png
${STANDARDIZED_PATIENT_TEXT}      ${IMAGE_PATH}device_information_page_images/standardized_patient_text.png
${SIMPAD_INFORMATION_IMAGE}       ${IMAGE_PATH}device_information_page_images/simpad_information_image.png
${i_ICON}                         ${IMAGE_PATH}device_information_page_images/i_icon.png

*** keywords ***
Verify that the technical information error message is displayed
    [Documentation]    This keyword verifies the error message displayed while taking logs
    Wait For Image      ${TECHNICAL_INFO_ERROR_MESSAGE}  notWantedImage   10
    ${EXISTS}=  Exists  ${TECHNICAL_INFO_ERROR_MESSAGE}
     IF    ${exists}
        Log    Technical information Error Message Verified
    ELSE
        Fail    No Error message displayed
    END

Verify that the Device Information page is displayed properly
    [Documentation]    This keyword verifies that the device information page is displayed as expected
        
        Wait Until Screen Contain     ${BATTERY_ICON}    20
        Wait Until Screen Contain     ${BATTERY_PERCENTAGE_ICON}    20
        Wait Until Screen Contain     ${SIMPAD_INFORMATION_IMAGE}    20
        Wait Until Screen Contain     ${i_ICON}   20
        
Click on i icon
    [Documentation]   This keyword is used to click on the i icon on the device information page
    Click     ${i_ICON}
