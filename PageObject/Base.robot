*** Settings ***
Documentation               Base related keyword
Library                     AppiumLibrary

*** Variables ***
${REMOTE_URL}             http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}          Android
${PLATFORM_VERSION}       8.1
${DEVICE_NAME}            emulator-5554
${ACTIVITY_NAME}          com.example.myapplication.MainActivity
${PACKAGE_NAME}           com.example.myapplication

*** Keywords ***
Open Flight Application
  Open Application        ${REMOTE_URL}
  ...                     platformName=${PLATFORM_NAME}
  ...                     platformVersion=${PLATFORM_VERSION}
  ...                     deviceName=${DEVICE_NAME}
  ...                     automationName=UiAutomator2
  ...                     newCommandTimeout=2500
  ...                     appActivity=${Activity_NAME}
  ...                     appPackage=${PACKAGE_NAME}
#  ...                     app=/Users/user/personal/flightApp.apk

