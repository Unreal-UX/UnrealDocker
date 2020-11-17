REM https://docs.microsoft.com/en-us/virtualization/windowscontainers/deploy-containers/gpu-acceleration
REM Process Isolation Supported on Windows Version Matrix :  https://docs.microsoft.com/en-us/virtualization/windowscontainers/deploy-containers/version-compatibility?tabs=windows-server-20H2%2Cwindows-10-20H2
docker run --isolation process --device class/5B45201D-F2F2-4F3B-85BB-30FF1F953599 unrealbuilder:20H2alpha
