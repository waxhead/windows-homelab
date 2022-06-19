# Windows Lab on Proxmox

### References:
https://getlabsdone.com/how-to-install-windows-11-on-proxmox/

https://getlabsdone.com/how-to-install-windows-server-2022-on-proxmox-ve/

### 1. Set up the Server

```
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
```

### 2. Set up the Workstation

Create the Workstation VM.

Download the virtio drivers:

https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/archive-virtio/virtio-win-0.1.215-2/virtio-win-0.1.215.iso

This can be done in Proxmox or download to your ISO repository.

Add the virtio ISO to the VM via the VM Settings, Hardware, New CD Drive.

Start/Restart the VM, at the command prompt

Open Administrator Windows Terminal install the following:
```
virtio-win-gt-x64.msi
virtio-win-guest-tools.exe
```

Install Chocolatey - https://chocolatey.org/install#individual

Once installed install:
    ```
    choco install vscode
    choco install git
    ```

Create a repo for tracking notes, code etc.

### Set up remote administration

https://docs.microsoft.com/en-us/windows-server/administration/server-manager/add-servers-to-server-manager

```
Set-Item wsman:\localhost\Client\TrustedHosts Server01 -Concatenate -force
```

Set up a PS Session:

```
$cred = Get-Credential
$dc = Get-PSSession -ComputerName dc1 -Credential $cred
Enter-PSSession $dc
```

Some handy commands:

```
Copy-Item <filename> -ToSession $dc c:\Tasks
```

Read JSON:
```
Get-Content <filename> | ConvertFrom-JSON
```
