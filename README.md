**UnrealDocker**
Setting Up Unreal to Build and Compile Shaders, in Docker, on Windows

_Maybe also run? TBD?_

# DirectXContainers
Now that you can run DirectX in a container, let's explore where that is useful

# To start a container with GPU acceleration, run the following command:

1.  docker run --isolation process --device class/5B45201D-F2F2-4F3B-85BB-30FF1F953599 mcr.microsoft.com/windows:1809

- _This feature is available in Docker Desktop, version 2.1 and Docker Engine - Enterprise, version 19.03 or later._
- GPU acceleration for workloads in Hyper-V-isolated Windows containers is not currently supported.
- GPU acceleration for workloads in Hyper-V-isolated Linux containers is not currently supported.

for more info see https://github.com/MicrosoftDocs/Virtualization-Documentation/tree/master/windows-container-samples/directx

1. From PowerShell
   - docker build . -t winml-runner
   - docker run --isolation process --device class/5B45201D-F2F2-4F3B-85BB-30FF1F953599 winml-runner
   
## Easy Links

- https://hub.docker.com/_/microsoft-windows?ref=login&tab=description
    - >docker pull mcr.microsoft.com/windows:1903 
    - >docker pull mcr.microsoft.com/windows:1909
- https://hub.docker.com/editions/community/docker-ce-desktop-windows/

# Visual Studio Tools
- https://docs.microsoft.com/en-us/visualstudio/install/build-tools-container?view=vs-2019
    - https://docs.microsoft.com/en-us/visualstudio/containers/overview?view=vs-2019
