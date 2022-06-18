# Windows Lab on Proxmox

References:

https://getlabsdone.com/how-to-install-windows-11-on-proxmox/
https://getlabsdone.com/how-to-install-windows-server-2022-on-proxmox-ve/

1. Set up the Server.

```
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
```

2. Set up the Workstation.

Note the virtio-tools ISO.

Open Administrator Windows Terminal

Install Chocolatey - https://chocolatey.org/install#individual

Once installed install:
    * choco install vscode
    * choco install git

Create a repo for tracking notes, code etc.

