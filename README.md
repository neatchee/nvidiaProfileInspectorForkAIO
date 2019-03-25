# NVidiaProfileInspectorDmW
[![HitCount](http://hits.dwyl.io/DeadManWalkingTO/NVidiaProfileInspectorDmW.svg)](../../)
[![GitHub release](https://img.shields.io/github/release/DeadManWalkingTO/NVidiaProfileInspectorDmW/all.svg)](../../releases/latest)
[![GitHub Release Date](https://img.shields.io/github/release-date-pre/DeadManWalkingTO/NVidiaProfileInspectorDmW.svg)](../../releases/latest)
[![GitHub top language](https://img.shields.io/github/languages/top/DeadManWalkingTO/NVidiaProfileInspectorDmW.svg)](../../)
[![GitHub language count](https://img.shields.io/github/languages/count/DeadManWalkingTO/NVidiaProfileInspectorDmW.svg)](../../)
[![GitHub repo size in bytes](https://img.shields.io/github/repo-size/DeadManWalkingTO/NVidiaProfileInspectorDmW.svg)](../../)

[![GitHub last commit](https://img.shields.io/github/last-commit/DeadManWalkingTO/NVidiaProfileInspectorDmW.svg)](../../)
[![Github commits (since latest release)](https://img.shields.io/github/commits-since/DeadManWalkingTO/NVidiaProfileInspectorDmW/latest.svg)](../../)
[![GitHub stars](https://img.shields.io/github/stars/DeadManWalkingTO/NVidiaProfileInspectorDmW.svg)](../../stargazers)
[![GitHub forks](https://img.shields.io/github/forks/DeadManWalkingTO/NVidiaProfileInspectorDmW.svg)](../../network)
[![GitHub issues](https://img.shields.io/github/issues/DeadManWalkingTO/NVidiaProfileInspectorDmW.svg)](../../issues)
[![GitHub closed issues](https://img.shields.io/github/issues-closed/DeadManWalkingTO/NVidiaProfileInspectorDmW.svg)](../../issues)

[![DMCA Protection](https://img.shields.io/badge/DMCA-Protected-brightgreen.svg)](https://www.dmca.com/Takedowns.aspx?r=m)
[![GitHub license](https://img.shields.io/github/license/DeadManWalkingTO/NVidiaProfileInspectorDmW.svg)](./LICENSE)
[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg)](./README.md)

>Nvidia GPU Profile Inspector by [DeadManWalking (DeadManWalkingTO-GitHub)](https://github.com/DeadManWalkingTO)

NVidiaProfileInspectorDmW is a Fork from Orbmu2k/nvidiaProfileInspector for full optimization that increase hashrate on NVidia graphic cards.
- Updated settings constants to [**R418**](https://www.nvidia.com/download/driverResults.aspx/143117/en-us).
- Microsoft [**.NET Framework v4.0**](https://www.microsoft.com/en-us/download/details.aspx?id=17718)
- Supported Operating System
  - Windows XP SP3
  - Windows Server 2003 SP2
  - Windows Vista SP1 or later
  - Windows Server 2008
  - Windows 7
  - Windows Server 2008 R2
  - Windows 7 SP1
  - Windows Server 2008 R2 SP1
- Supported Architectures:
  - x86
  - x64

## Table of Contents
- [Features](#features)
- [Download](#download)
- [Install](#install)
- [Usage](#usage)
- [Build](#build)
- [Feedback](#feedback)
- [Maintainers](#maintainers)
- [Contribute](#contribute)
- [License](#license)
- [Donations](#donations)
- [Common Issues](#common-issues)

## Features
Full optimization NVidia graphic cards.

Autocheck for new version since version 3.2.5.5.

Lots of modifications.

## Download
Download [Last release here.](../../releases/latest)

## Install
Standalone executable is provided in the [Releases](../../releases/latest) section. (No installation required)

## Usage
Download, unzip and run NVidiaProfileInspectorDMW.exe

For the best mining hashrate choose from sector "5 - Common":
* CUDA - Force P2 State (Set to "Off")
* Power managment mode (Set to "Prefer maximum performance")

## Build
For build needed [GIT](https://git-scm.com/downloads) (optional) and [Microsoft Build Tools 2015](https://www.microsoft.com/en-us/download/details.aspx?id=48159)

Open Command Prompt and run 
```
git clone https://github.com/DeadManWalkingTO/NVidiaProfileInspectorDmW.git
```
Open Visual C++ 2015 MSBuild Command Prompt, go to NVidiaProfileInspectorDmW folder and run 
```
msbuild nvidiaProfileInspectorDmW.sln /verbosity:minimal /t:Rebuild /p:Configuration=Release
```
Release files build in NVidiaProfileInspectorDmW\nspector\bin\release
```
AutoClosingMessageBox.dll
NVidiaProfileInspectorDMW.exe
NVidiaProfileInspectorDMW.exe.config
Reference.xml
```

## Feedback
Please inform me for aditional Improvments. [Open an Issue](../../issues).

If you like please give a [GitHub Star](../../stargazers) (it's free!).

## Maintainers
[DeadManWalking (DeadManWalkingTO-GitHub)](https://github.com/DeadManWalkingTO).

## Contribute
Feel free to open an [Issue](../../issues/new) or submit [Pull Requests](../../pulls).

## License
Licensed under the [MIT LICENSE](./LICENSE).

## Donations

Bitcoin Address (BTC):
* 15G2BTErGg3i8zTmLfKYStUKtqDLXz6Jc9

Ethereum Address (ETH):
* 0x7013275311fc37ccc1e40193D75086293eCb43A4

Monero Address (XMR):
* 42q4HmXdsp1XgNCrDmPubL8ndtgG2JBtmZMEn28sB4XtEGHhwYojvB65HXPidByfNUFSzxg6ysQsHUHa3ZSrsKLX5pTkCET

Aeon Address (AEON):
* WmssXd9iiPCjjhfVyqYvPzhBuPKkZ5wkVXP5q8L7aYxfPJG5Z8nLyLJXUzxMeuvna9dCEBAmqBzCRWezF6AQqUS51EDJtjAYL

## Common Issues

#### NVAPI_ACCESS_DENIED:
Issue [#9](../../issues/9) | Status: **Solved**.
#### Application window is not visible:
Issue [#12](../../issues/12) | Status: **Solved**.
Issue [#13](../../issues/13) | Status: **Solved**.
