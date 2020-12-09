# R_Docker_Intro

# Harmonizing Docker and R 

#### Stephanie LaHaye, PhD
###### R-Ladies Columbus  
###### Thursday December 10, 2020
&nbsp;  

![Docker_gif](/Docs/Cute_Docker.gif)

### We will cover the following focus points:
### 1. What is Docker and why should we use it?
### 2. Launching Docker Desktop
### 3. Running Docker via command line
### 4. Pulling from Docker Hub (Rocker)
### 5. Create a Dockerfile and Build a Docker Image

&nbsp;  
&nbsp;  
  
    
# 1. What is Docker and why should we use it?
#### “Docker is an open platform for developing, shipping, and running applications.” - [link to Docker Getting Started](docs.docker.com/get-started/overview/)  
Docker Provides the following benefits:  
Provides ability to package and run application in a container  
Containers are lightweight (fast)  
Consistent and reproducible  
Self contained  
Responsive deployment and scaling  

### Is using a container the same as using a virtual machine (VM)?
![vm_vs_container](/Docs/vm_vs_container.png)  
Photo from https://www.softserveinc.com/en-us/blog/security-containers-vs-virtual-machines  
  
  
## Container != VMs
#### Docker container PROS:
More lightweight, start much faster, and use a fraction of the memory compared to booting an entire OS  
Applications that are running on containers are completely segregated and isolated from each other  
Have a consistent environment (reproducible) and shareable to outside environments  
Easy to maintain versioning and updates (i.e. CodeCommit/CodePipeline in AWS)  

## Breakdown of basic Docker Architecture and Objects

![basic_info](/Docs/Docker_Basic.png)  
Photo and info below is from https://docs.docker.com/get-started/overview/

  
#### Docker daemon  
The Docker daemon (dockerd) listens for Docker API requests and manages Docker objects such as images, containers, networks, and volumes. A daemon can also communicate with other daemons to manage Docker services.  

#### Docker client
The Docker client is the primary way that many Docker users interact with Docker. When you use commands such as docker run, the client sends these commands to dockerd, which carries them out. The docker command uses the Docker API. The Docker client can communicate with more than one daemon.  

#### Docker registry
Docker registry stores Docker images. Docker Hub is a public registry that anyone can use, and Docker is configured to look for images on Docker Hub by default.   
  
### Docker objects
###### When you use Docker, you are creating and using images, containers, networks, volumes, plugins, and other objects.   
  
#### Docker image
An image is a read-only template with instructions for creating a Docker container. Often, an image is based on another image, with some additional customization. For example, you may build an image which is based on the ubuntu image, but installs the Apache web server and your application, as well as the configuration details needed to make your application run.  
  
#### Docker Container
A container is a runnable instance of an image. You can create, start, stop, move, or delete a container using the Docker API or CLI. You can connect a container to one or more networks, attach storage to it, or even create a new image based on its current state.  
  
# 2. Launching Docker Desktop

#### Begin by installing Docker Desktop:
- mac (https://docs.docker.com/mac/step_one/)  
- linux (https://docs.docker.com/linux/step_one/)   
- windows (https://docs.docker.com/get-started/)  

##### I will be performing all presentation examples using Docker Desktop for Mac
My docker desktop version is 2.5.0.1 
![basic_info_screenshot](/Docs/Docker_Desktop_screenshot.png)  

&nbsp;  
Please note the Advanced Preferences where you can select CPUs and Memory (this is important if you do not have enough resources when building your image, as it will fail)  
![advanced_preferences](/Docs/advanced_prefereces.png.png)  



