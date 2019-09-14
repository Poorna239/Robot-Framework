*** Settings ***

Library    SeleniumLibrary    

Suite Setup       Log    I am inside Test suite setup    
Suite Teardown    Log    I am inside Test suite Teardown
Test Setup        Log    I am inside Test case setup
Test Teardown     Log    I am inside Test case Teardown      

Default Tags    Sanity

*** Test Cases ***
Myfirstapplication
    [Tags]    Smoke
    Log    HelloWorld...Robot  

GoogleSearch
    Set Tags    regression1
    Open Browser    https://google.de    chrome
    Input Text    name=q    Automation step by step
    Press Keys    name = q    ENTER  
    # Click Button    name = btnK    
    Sleep    2    
    Close Browser  
    Log    Test Completed using robot framework    
    Remove Tags    regression1
LoginTest
    [Documentation]    Testing Login functionality
    LoginKW
    
*** Variables ***

${URL}    https://www.facebook.com/ 

@{CREDENTIALS}     example@gmail.com     efrwsxyswdade

&{DATA}     email=example@gmail.com    password=efrwsxyswdade


*** Keywords ***
LoginKW
    Open Browser       ${URL}     chrome
    Set Browser Implicit Wait    5
    Input Text         id=email     @{CREDENTIALS}[0]
    Input Password     id=pass      &{DATA}[password]
     Sleep    2    
    Click Button       id=u_0_b        
    Close Browser 
    Log                logged into facebook
    


