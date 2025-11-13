*** Settings ***

Resource   ../pages/home_page.robot
Resource   ../pages/connect_to_simulator_page.robot
Resource   ../pages/select_theme_page.robot
Resource   ../pages/session_information_page.robot
Resource   ../pages/session_page.robot
Resource   ../pages/menu_manual_mode_page.robot
Resource   ../pages/session_ended_page.robot
Resource   ../pages/device_information_page.robot
Resource   ../pages/heart_rate_page.robot
Resource   ../pages/vocal_page.robot
 
Test Setup  Setup
Test Teardown  Teardown

*** Test Cases ***

It is possible to run a session using Virtual simulator
    [Documentation]  This testcase verififes that it is possible to run a healthy theme using a virtual simulator.
    Verify that home Page is displayed properly
    Click on Manual Mode tile
    Verify that Connect To Simulator page is displayed properly
    Click on standardised patient
    Verify that the select theme page is displayed properly
    Select Healthy theme
    Verify that the Session Information Page is displayed properly
    Enter data in session information  ${SESSION_NAME}    ${INSTRUCTOR}   ${PARTICIPANT_1}
    Verify that the session page is displayed properly
    Start the session
    Click on HR
    Verify that the Heart Rate page is dispøayed properly
    Set the value of slider    ${HR_SLIDER_VALUE}
    Click on Activate button
    Verify that the HR value is changed
    Click on Speaker icon
    Move All Sliders   ${SLIDER_VALUE}
    Click on Back_button
    Verify that the HR value is changed
    Click on the Vocal icon
    Verify that the Vocal Page is displayed properly
    Click on coughing button
    Click on Back_button
    Click on End button
    Click on Quit button
    Verify that home Page is displayed properly
    

Error message is displayed when attempting to collect logs
    [Documentation]  This testcase verifies that there is an error while collecting logs in the applicaion.
    Verify that home Page is displayed properly
    Click on battery indictor
    Verify that the Device Information page is displayed properly
    Click on i icon
    Click on OK button 
    Verify that the technical information error message is displayed





    


