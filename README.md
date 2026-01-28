# Set up your Github / Gitpod Workspace

Below, you will find instructions for creating a github repository and setting up your Gitpod workspace. Read all instructions carefully before moving on. If you get stuck, encounter an issue, or simply need help, reach out to your instructor immediately.

## Step 0: Pre-requisites:

Before continuing on to the next steps, make sure that you have done the following:

- Created an account on Greenlight
- Created an account on GitHub
- Joined the Operation Spark GitHub Team

All of the above should already have been done if you are in the advanced course, but if they are not, see the <a href="https://github.com/OperationSpark/fsd-setup">fsd-setup instructions</a> for how to do so.

## Step 1: Set up your computer

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

- Click in the Windows search area and type "Powershell"
- Right click on "Windows PowerShell" and select "Run as administrator"
- Paste the following into the PowerShell terminal: `Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux`
- Confirm that this is what you want to do and restart your computer after the prompt (or after PowerShell finishes working if the prompt doesn't appear)
- Reopen VS Code. You should see a prompt to install WSL (Windows Subsystem for Linux). Install this. If the prompt doesn't show up, then search for Remote - WSL in the Extensions section of VS Code.

#### Git support

- Go to https://git-scm.com/download/win and download the Git installer
- Walk through the installation using the default options
- Restart your computer

### Set up Workspace

- Windows users, enter "CTRL + SHIFT + P". Mac users, enter "CMD + SHIFT + P".
- In the form that opens up, type `"git clone"` and select the `Git: Clone` option.
- Click `Clone from GitHub`
- Authorize GitHub
- Go to your GitHub repository on GitHub, click the green `Code` button, and copy the URL provided to you into the VS Code form.

### Final VS Code Setup Steps

- Open up the Extensions section of VS Code and and search for "live server". You should see a version of "live server" with version 5.6.1 by "Ritwick Dey". Click "Install" for this extension. This will allow you to open up any HTML files you create directly in your browser by right-clicking on the file (in the VS Code file browser) and selecting "Open with Live Server".

## Step 2: Install your projects

Copy and paste the following command into your terminal, then press enter.

```bash copy
curl -sSL https://raw.githubusercontent.com/OperationSpark/iot-setup/main/setup.sh | bash
```

## Step 3: Add Projects to Portfolio

In your VS Code workspace, open your `portfolio.html` file. Below the list of asd projects, add the following html:

```HTML
<h2>IOT Projects (Not all links will work; some require locally run servers)</h2>
<ul id ="portfolio">
    <li><a href="iot-projects/underpants-lite"> Underpants Lite: Complete a small library of functions</a></li>
    <li><a href="iot-projects/are-you-being-served"> Are You Being Served: Create a server to handle requests from clients</a></li>
    <li><a href="iot-projects/catch-server"> Catch Server: Create a server that catches errors while running</a></li>
    <li><a href="iot-projects/interface-inyourface/polling-temp-charts.html"> Interface InYourFace: Use simulated data to display information</a></li>
    <li><a href="iot-projects/hardware-setup"> Hardware Setup: Set up hardware for IoT projects</a></li>
    <li><a href="iot-projects/first-slice-of-pi"> First Slice of Pi: Get started with Raspberry Pi</a></li>
    <li><a href="iot-projects/second-slice-of-pi/data-requester.html"> Second Slice of Pi: Continue learning about Raspberry Pi</a></li>
    <li><a href="iot-projects/pi-inyourface/ws_client.html"> Pi InYourFace: Build an interactive IoT application</a></li>
    <li><a href="iot-projects/automatic-routing"> Automatic Routing: Implement automatic routing for IoT devices</a></li>
</ul>
```

## Step 4: Push your code

Down in the bash terminal, enter these commands:

- `git add -A`
- `git commit -m "add IoT projects"`
- `git push`
