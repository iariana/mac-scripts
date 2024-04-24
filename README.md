# mac-scripts
macOS-Automation-Scripts

This year 2023, I have successfully completed my secondary education as a computer scientist specializing in systems engineering. :)

During my internship, I wrote automation scripts for macOS.
### 2024: Today, these scripts are still in the editing phase and are constantly being improved
My goal is to be able to share my "simple" scripts and maybe even help further. Since I know how time-consuming it can be to create a script.
Perhaps these also serve as auxiliary material to be developed even better.

I would also like to add that this was not perfectly solved, but it works for the requirements I needed to that time.

## Good to know
These scripts were tested on Apple Silicon processor and Intel processor.

## Never change your running system
Therefore, I am also open for suggestions or information that enrich my knowledge and allow me to develop further.

## Introduction
The scripts are intended to be used in conjunction with the iMazing software to easily set up macOS environments. 

Note that the iMazing profiles are mentioned in the individual explanations, but it is not explained how to configure/create them.
The focus here is on the scripts.

## Why .command and not .sh
This is for this simple reason, so that the scripts are executed immediately only by double-clicking. 
Normally .sh scripts still have to be adapted so that the terminal executes the scripts.

There are five different scripts:
As usual, everything is commented out and explained in the script files, but I would like to briefly mention again what they are for;

### 1_copy_directories.command
This script creates directories, to copy files from (source) Volume to this (destination) device.
It's also possible to overwrite the existing file if those are changed.

### 1_copy_directories_dynamic_path.command
Instead of needing the usb stick as a source, you can use this script. 
You can start it from any location.

### 3_google_chrome_installer.command
This script allows you to install Google Chrome with a stable URL and also accepts in the next step the Google Chrome terms of service.
After using it, user is ready to use the browser.

### 4_clamxaw_installer.command
This Script installs the latest version of ClamXAV

Source: script used from googlechromeinstaller.sh https://community.jamf.com/t5/jamf-pro/google-chrome-script-for-installing-either-intel-or-m1-apple/td-p/250409

### 6_createusernhostname.command
The last scrpt is used to create users and rename all three hostnames with help of the text file # 5_user_information.txt.

Possibilities:
- Create admin/local user
- Using all possible special characters and name variations
- Assign UID cleanly
- Assign GID cleanly
- Home directory cleanly created
- Group membership can be configured
- Rename hostname (Groupname, Hostname, Local Hostname)

This script definitely has room for improvement, but it works fine.
