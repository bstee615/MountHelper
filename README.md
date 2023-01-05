# MountHelper
Tool to mount and unmount external drives on WSL.
Run with PowerShell in Administrator mode.

```powershell
# In Windows powershell
PS C:\Windows\system32> C:\Code\MountHelper\MountHelper.ps1 mount
Found drive 'Seagate Portable SCSI Disk Device' with DeviceID '\\.\PHYSICALDRIVE1'
Mounting...
The disk was successfully mounted as '/mnt/wsl/PHYSICALDRIVE1p1'.
Note: The location will be different if you have modified the automount.root setting in /etc/wsl.conf.
To unmount and detach the disk, run 'wsl.exe --unmount \\.\PHYSICALDRIVE1'.

PS C:\Windows\system32> C:\Code\MountHelper\MountHelper.ps1 unmount
Found drive 'Seagate Portable SCSI Disk Device' with DeviceID '\\.\PHYSICALDRIVE1'
Unmounting...
The operation completed successfully.
```

After running `mount`, you will be able to access the drive from the path displayed.

```bash
# In WSL bash
benjis@WSL:/mnt/c/Windows/system32$ ls /mnt/wsl/PHYSICALDRIVE1p1
Files  lost+found
```
