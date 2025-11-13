*** Settings ***
Library    SikuliLibrary
Resource    ../configs/configs.robot
*** Variables ***

${SESSION_NAME}  Test Automation session
${INSTRUCTOR}    Instructor 1
${PARTICIPANT_1}  Participant 1
${HR_SLIDER_VALUE}  100
${VALUE_OF_SOUND_SLIDER}    9
${X_OFFSET}  0
${Y_OFFSET}   -40
${SLIDER_VALUE}  9


${HANDLE1_X}   1588
${HANDLE2_X}   1651
${HANDLE3_X}   1714
${HANDLE4_X}   1462
${HANDLE5_X}   1777
${HANDLE6_X}   1399
${HANDLE7_X}   1399
${HANDLE8_X}   1525
${HANDLE9_X}   1462
${HANDLE1_Y}   519
${HANDLE2_Y}   519
${HANDLE3_Y}   519
${HANDLE4_Y}   759
${HANDLE5_Y}   519
${HANDLE6_Y}   759
${HANDLE7_Y}   459
${HANDLE8_Y}   459
${HANDLE9_Y}   459

*** Variables ***
&{HANDLE1}    x=${HANDLE1_X}    y=${HANDLE1_Y}
&{HANDLE2}    x=${HANDLE2_X}    y=${HANDLE2_Y}
&{HANDLE3}    x=${HANDLE3_X}    y=${HANDLE3_Y}
&{HANDLE4}    x=${HANDLE4_X}    y=${HANDLE4_Y}
&{HANDLE5}    x=${HANDLE5_X}    y=${HANDLE5_Y}
&{HANDLE6}    x=${HANDLE6_X}    y=${HANDLE6_Y}
&{HANDLE7}    x=${HANDLE7_X}    y=${HANDLE7_Y}
&{HANDLE8}    x=${HANDLE8_X}    y=${HANDLE8_Y}
&{HANDLE9}    x=${HANDLE9_X}    y=${HANDLE9_Y}

@{SLIDER_HANDLES}    &{HANDLE1}    &{HANDLE2}    &{HANDLE3}    &{HANDLE4}    &{HANDLE5}    &{HANDLE6}    &{HANDLE7}    &{HANDLE8}    &{HANDLE9}


