# AppleScript-Automation
Xojo example project

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

## Description
There used to be a time where any application just could execute AppleScripts to Automate other applications such as: `tell application X to do Y`.  
That's no longer the case starting with `macOS 10.14``. It's become a bit trickier to do that with a Xojo built application, since not everything is built in.

This example project shows:
- How to use AppleScript for Automation in a Xojo built application by providing an `Info.plist` with `NSAppleEventsUsageDescription`.  
  *Without that, nothing will work at all.*
- How to determine if the application has permission for AppleEvents / Automation (`AEDeterminePermissionToAutomateTarget`).
- Explains how to deal with the permission results.
- In case you determine the application has no permission:  
  How to open System Preferences at Privacy - Automation *(so that the user can allow the app)*.

## Xojo
### Requirements
[Xojo](https://www.xojo.com/) is a rapid application development for Desktop, Web, Mobile & Raspberry Pi.  

The Desktop application Xojo example project ```applescript-automation.xojo_project``` is using:
- Xojo 2023r3
- API 2

### How to use in your own Xojo project?
1. Drag the example `Info.plist` into your project.  
   Edit it and change the `NSAppleEventsUsageDescription` to fit your app's purpose.
2. Copy-and-Paste the Module `modAppleScriptUtils` into your project.
3. Use the provided Methods it in a similar way to this example project.


## About
Juerg Otter is a long term user of Xojo and working for [CM Informatik AG](https://cmiag.ch/). Their Application [CMI LehrerOffice](https://cmi-bildung.ch/) is a Xojo Design Award Winner 2018. In his leisure time Juerg provides some [bits and pieces for Xojo Developers](https://www.jo-tools.ch/).

### Contact
[![E-Mail](https://img.shields.io/static/v1?style=social&label=E-Mail&message=xojo@jo-tools.ch)](mailto:xojo@jo-tools.ch)
&emsp;&emsp;
[![Follow on Facebook](https://img.shields.io/static/v1?style=social&logo=facebook&label=Facebook&message=juerg.otter)](https://www.facebook.com/juerg.otter)
&emsp;&emsp;
[![Follow on Twitter](https://img.shields.io/twitter/follow/juergotter?style=social)](https://twitter.com/juergotter)

### Donation
Do you like this project? Does it help you? Has it saved you time and money?  
You're welcome - it's free... If you want to say thanks I'd appreciate a [message](mailto:xojo@jo-tools.ch) or a small [donation via PayPal](https://paypal.me/jotools).  

[![PayPal Dontation to jotools](https://img.shields.io/static/v1?style=social&logo=paypal&label=PayPal&message=jotools)](https://paypal.me/jotools)
