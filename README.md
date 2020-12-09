# R_Docker_Intro

# Harmonizing Docker and R 

#### Stephanie LaHaye, PhD
R-Ladies Columbus  
Thursday December 10, 2020


### We will cover the following focus points:
## 1. What is Docker and why should we use it?
## 2. Launching Docker Desktop
## 3. Running Docker via command line
## 4. Pulling from Docker Hub (Rocker)
## 5. Create a Dockerfile and Build a Docker Image



  
    
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
  
  
##### Container != VMs
#### Docker container PROS:
More lightweight, start much faster, and use a fraction of the memory compared to booting an entire OS  
Applications that are running on containers are completely segregated and isolated from each other  
Have a consistent environment (reproducible) and shareable to outside environments  
Easy to maintain versioning and updates (i.e. CodeCommit/CodePipeline in AWS)  



