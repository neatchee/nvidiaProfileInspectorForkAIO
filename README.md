## What is this fork? Why does it exist? What do you mean by "fork all-in-one?"
With the main repo from Orbmu2k having gone without updates since 2023, this fork aims to collect changes made across various forks into a single release that represents the "most up to date version" possible. Changes are reviewed and manually merged from forks of the original nvidiaProfileInspector repo found on GitHub.

If you would like to contribute directly - or take over this project - please reach out! I am not a C# developer, just an enthusiast who knows enough to resolve merge conflicts.

## What's New
The best way to know what has changed is to browse the commits that are not included upstream: https://github.com/Orbmu2k/nvidiaProfileInspector/compare/master...neatchee:nvidiaProfileInspectorForkAIO:master

In summary...
- Exposed several settings that were otherwise not visible without a CustomSettingNames.xml file, such as RTX HDR and Dynamic Vibrance from NVapp, override settings for DLSS 3.1.11+, image sharpening settings, and a number of settings for stereocopic viewing that are disabled in the Reference.xml file (marked as code comments) but can be made available by uncommenting sections of that file (such as stereoscopic settings)
  - The DLSS settings are considered "UNKNOWN" so to make them visible you must enable the second-to-last button on the toolbar (magnifying glass): "Show unknown settings from NVIDIA predefined profiles"
- Improved usability of the search/filter field, e.g. it automatically applies as you type, can be cleared using the "escape" key, etc
- Code formatting improvements and bug fixes
- Improved error messaging
- Improved performance (fast load, etc)

## Original README body

![](/nspector/Images/n1-016.png) **NVIDIA Profile Inspector**

This tool is used for modifying game profiles inside the internal driver database of the nvidia driver.
All game profiles are provided by the nvidia driver, but you can add your own profiles for games missing in the driver database.
You also have access to hidden and undocumented settings, which are not provided by the drivers control panel.

For more information how to use this tool, you can find some very good wikis here:
* https://wiki.step-project.com/Guide:NVIDIA_Inspector
* https://www.pcgamingwiki.com/wiki/Nvidia_Profile_Inspector

![](npi_screenshot.png)
