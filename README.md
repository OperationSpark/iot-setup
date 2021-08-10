# Set up your Github / Gitpod Workspace

Below, you will find instructions for creating a github repository and setting up your Gitpod workspace. Read all instructions carefully before moving on. If you get stuck, encounter an issue, or simply need help, reach out to your instructor immediately.

## 0) Pre-requisites:

Before continuing on to the next steps, make sure that you have done the following:
* Created a personal email account on Gmail.
* Created an account on Greenlight
* Created an account on GitHub
* Created an account on Gitpod
* Joined the Operation Spark GitHub Team

All of the above should already have been done if you are in the advanced course, but if they are not, see the <a href="https://github.com/OperationSpark/fsd-setup">fsd-setup instructions</a> for how to do so.

## 1) Set up your computer

### Install Visual Studio Code (VS Code for short)
 - We will be running all of our projects on our own machines for this class. To that end, we will make use of Visual Studio Code.
 - If you are on a Mac, you may already have Visual Studio Code already installed. If it is not, you can download the installer here (https://code.visualstudio.com/download).
 #### Mac Installation
 - Download the only option available and walk through the setup using the default options.
 #### Windows Installation
 - Download the 64 bit System Installer and walk through the setup using the default options. You might want to set a Desktop shortcut
 
### Further Windows Setup
 - If you use Windows, adding in Bash and Git support will make your life much easier with these projects. In Windows 10, the easiest way to do this is with the following steps:
 
 #### Bash Support
 * Click in the Windows search area and type "Powershell"
 * Right click on "Windows PowerShell" and select "Run as administrator"
 * Paste the following into the PowerShell terminal: `Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux`
 * Confirm that this is what you want to do and restart your computer after the prompt (or after PowerShell finishes working if the prompt doesn't appear)
 * Reopen VS Code. You should see a prompt to install WSL (Windows Subsystem for Linux). Install this. If the prompt doesn't show up, then search for Remote - WSL in the Extensions section of VS Code.
 
 #### Git support
 * Go to https://git-scm.com/download/win and download the Git installer
 * Walk through the installation using the default options
 * Restart your computer

### Set up Workspace
 - Windows users, enter "CTRL + SHIFT + P". Mac users, enter "CMD + SHIFT + P".
 - In the form that opens up, type `"git clone"` and select the `Git: Clone` option.
 - Click `Clone from GitHub`
 - Authorize GitHub
 - Go to your GitHub repository on GitHub, click the green `Code` button, and copy the URL provided to you into the VS Code form.

### Final VS Code Setup Steps
 - Open up the Extensions section of VS Code and and search for "live server". You should see a version of "live server" with version 5.6.1 by "Ritwick Dey". Click "Install" for this extension. This will allow you to open up any HTML files you create directly in your browser by right-clicking on the file (in the VS Code file browser) and selecting "Open with Live Server".

## 2) Install your projects

Open your VS Code workspace. With your workspace open, find the bash terminal and enter these commands one at a time:
* `git clone https://github.com/OperationSpark/iot-setup.git`
* `chmod +x iot-setup/setup.sh`
* `./iot-setup/setup.sh`
* `rm -rf ./iot-setup`

Enter your username and your password.

## 3) Push your code

Down in the bash terminal, enter these commands:

`git add -A`

`git commit -m "adding IoT projects"`

`git push`
