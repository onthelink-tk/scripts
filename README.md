# Scripts
Here you can find all of our scripts we create to make installations easier, we don't create every single thing ourself, we only want to make the installation process super easy and that's why we use other programs in our scripts to achieve this goal

# Before you begin
THESE SCRIPTS ARE MEANT FOR THE CHROMEBOOKS, IF YOU USE IT ON ANOTHER DEVICE THINGS SHOULD STILL WORK BUT THEY MIGHT NOT WORK PROPERLY...

# SCRIPTS COMPATIBLE ON ALL DEBIAN BASED DEVICES
<details>
  <summary>Click to show installers!</summary>
  
  ## - The AnyDesk Installer
  <details>
  <summary>Click to show installer</summary>
<b><h1 align="center">=======================================</h1></b>

<H3 align="center">
We are not responsible for any damage done to your device by using our scripts!!
</H3>

<b><h1 align="center">=======================================</h1></b>


# HOW TO USE:

1. Open a terminal
2. Choose the script you want to install and paste the command in the terminal
3. Press "Return" (ENTER)
4. Follow the instructions on your screen

<b><h2 align="center">==================================================</h2></b>

<H2 align="center">
ANYDESK INSTALLER
</H2>

<b><h2 align="center">==================================================</h2></b>

Copy and paste this command into the terminal and hit "Return" (ENTER):
`sudo curl -LO "https://raw.githubusercontent.com/onthelink-nl/scripts/master/AnyDesk%20Unofficial%20Installer%20(Debian)/anydeskinstaller.sh" && bash anydeskinstaller.sh`

<b><h3 align="center">========================================================================</h3></b>

  </details>
</details>

# SCRIPTS ONLY COMPATIBLE WITH CHROMEBOOKS (ONLY CHROMEBOOKTESTED INCLUDED)
<details>
  <summary>Click to show installers!</summary>
  
## - The QGIS Installer
<details>
  <summary>Click to show installer</summary>
<b><h1 align="center">=======================================</h1></b>

<H3 align="center">
We are not responsible for any damage done to your device by using our scripts!!
</H3>

<b><h1 align="center">=======================================</h1></b>

<b><h2 align="center">==================================================</h2></b>

<H4 align="center">
The following section is only for the QGIS-MENU
</H4>

<b><h2 align="center">==================================================</h2></b>

The terminal protection software (TPS) is a minimum protection that only helps if the user doesn't know about the .bashrc file in his home directory of his Chromebook (Please do not install the TPS on a chromebook that you do not own, we are not responsible for anything when and if you do this)


The TPS replaces that .bashrc file with a modified one, this will cause the terminal to close automatically
It does say some stuff before it closes but that's just for fun, ofcourse it isn't updating or checking if the user may or may not use the terminal, but it does exit the terminal (even if users try to cancel the .bashrc file using ctrl_c)

The reason why this protection is so minimal is because QGIS is a free to use program and we just simply cannot give stuff to "granted" users because that would be changing their project and we just simply do not have the rights to do that, so we won't!


How to restore the .bashrc file?
Please follow this tutorial to restore the .bashrc file:

[Restore .bashrc file](https://raw.githubusercontent.com/onthelink-nl/scripts/master/MUFU/qgis/MUFU/Tutorials/HowToRestoreBashrcFile.txt "Tutorial to restore .bashrc file")


Still want that better "Terminal Lockdown"?
We are working on our new Terminal Lockdown Script (TLS), it will be available in a few months...

Release Date TLS: ??/??/????

# HOW TO USE:

1. Open a terminal
2. Choose the script you want to install and paste the command in the terminal
3. Press "Return" (ENTER)
4. Follow the instructions on your screen

<b><h2 align="center">==================================================</h2></b>

<H2 align="center">
QGIS INSTALLER
</H2>

<b><h2 align="center">==================================================</h2></b>

Copy and paste this command for the EN version:
`sudo curl -LO https://raw.githubusercontent.com/onthelink-nl/scripts/master/MUFU/OnTheLink_QGIS-MENU_EN.sh && bash "OnTheLink_QGIS-MENU_EN.sh"`

Copy and paste this command for the NL version:
`sudo curl -LO https://raw.githubusercontent.com/onthelink-nl/scripts/master/MUFU/OnTheLink_QGIS-MENU_NL.sh && bash "OnTheLink_QGIS-MENU_NL.sh"`

<b><h3 align="center">========================================================================</h3></b>

WE ALSO HAVE CREATED A COMPLETE INSTRUCTIONS PDF WITH MORE DETAILS ABOUT THE QGIS INSTALLATION ####
[OPEN INSTRUCTIONS](https://github.com/onthelink-nl/scripts/blob/master/MUFU/qgis/MUFU/Tutorials/INSTRUCTIONS/QGIS%20Instructions.pdf "INSTRUCTIONS PDF FILE")

</details>
</details>

# Version History
<details>
  <summary>QGIS</summary>
  
## QGIS
==========

### **MUFU** - *This is the first working main-version (This version has no checks for files but it should try to get rid of any unnecessary files when reïnstalling or updating QGIS (so it'll just try to remove unnecessary things (if those things even exist on your chromebook ofcourse... (Don't forget that this version is for the most part stable but there could be bugs hiding in the dark, if you find any, please report them to us as soon as possible!!!)))*
</details>
<details>
  <summary>AnyDesk</summary>

## AnyDesk
==========

### **DEBIAN** - *STABLE INSTALLER OF ANYDESK, If you find out that something is wrong about the installer please report it in an issue...*
</details>

# Credits
Creating: Misha Opstal & Leopold Siccama Hiemstra
WARNING: WE DO NOT OWN THE SOFTWARE THAT WE CREATE THE INSTALLERS FOR, ALL COPYRIGHTS GO TO THE CREATORS OF THE SOFTWARE AND WE DO *NOT* CLAIM IT AS OURS!

Tools used: [Flatpak](https://flatpak.org/ "The Future Of Apps On Linux")


Software: [QGIS](https://qgis.org/en/site/ "A Free and Open Source Geographic Information System") | [AnyDesk](https://anydesk.com/ "Remote Desktop Software - AnyWhere. AnyTime. AnyDesk")
