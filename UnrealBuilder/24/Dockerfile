# escape=`

# https://docs.microsoft.com/en-us/virtualization/windowscontainers/deploy-containers/version-compatibility?tabs=windows-server-20H2%2Cwindows-10-2004
# Version must match windows version for app isolation to work
# Use the latest Windows image with .NET Framework 4.8.
FROM mcr.microsoft.com/windows:20H2 

# Restore the default Windows shell for correct batch processing.
SHELL ["cmd", "/S", "/C"]

# Download the Build Tools bootstrapper.
ADD https://aka.ms/vs/16/release/vs_buildtools.exe C:\TEMP\vs_buildtools.exe

# Install Build Tools with the Microsoft.VisualStudio.Workload.AzureBuildTools workload, excluding workloads and components with known issues.
# https://docs.microsoft.com/en-us/visualstudio/install/workload-component-id-vs-build-tools?view=vs-2019
RUN C:\TEMP\vs_buildtools.exe --quiet --wait --norestart --nocache `
    --installPath C:\BuildTools `
    --add Microsoft.VisualStudio.Workload.UniversalBuildTools `
    --add Microsoft.VisualStudio.Workload.ManagedDesktopBuildTools `
    --add Microsoft.VisualStudio.Workload.MSBuildTools `
    --add Microsoft.VisualStudio.Workload.VCTools `
    --add Microsoft.VisualStudio.Workload.NetCoreBuildTools `
    --add Microsoft.VisualStudio.Component.VC.14.20.CLI.Support `
 || IF "%ERRORLEVEL%"=="3010" EXIT 0

ADD https://go.microsoft.com/fwlink/?linkid=2099466 C:\TEMP\DotNet462Install.exe

RUN C:\TEMP\DotNet462Install.exe /q /norestart

ADD https://go.microsoft.com/fwlink/p/?linkid=2120843 C:\TEMP\Win10SDK.exe

RUN C:\TEMP\Win10SDK.exe /quiet 

# Define the entry point for the docker container.
# This entry point starts the developer command prompt and launches the PowerShell shell.
ENTRYPOINT ["C:\\BuildTools\\Common7\\Tools\\VsDevCmd.bat", "&&", "powershell.exe", "-NoLogo", "-ExecutionPolicy", "Bypass"]
