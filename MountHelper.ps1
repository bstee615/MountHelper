param (
    [Parameter(Mandatory=$true)][string][ValidateSet("mount", "unmount")]$RunMode,
    [string]$Caption = "Seagate Portable SCSI Disk Device",
    [int]$Partition = 1,
    [string]$FilesystemType = "ext4"
)

$drive= GET-CimInstance -query "SELECT * from Win32_DiskDrive WHERE Caption = '$Caption'"
"Found drive '$($drive.Caption)' with DeviceID '$($drive.DeviceID)'"
if (!$RunMode) {
    "Please provide a mode: [mount, unmount]"
    exit -1
}
if ($RunMode -eq "mount") {
    "Mounting..."
    wsl --mount $drive.DeviceID --partition $Partition --type $FilesystemType
    exit $?
}
elseif ($RunMode -eq "unmount") {
    "Unmounting..."
    wsl --unmount $drive.DeviceID
    exit $?
}
else {
    "Please provide a mode: [mount, unmount]"
    exit -1
}
