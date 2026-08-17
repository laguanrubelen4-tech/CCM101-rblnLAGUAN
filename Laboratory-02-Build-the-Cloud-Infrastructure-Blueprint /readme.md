# Laboratory 02 – Build the Cloud Infrastructure Blueprint

## Mission Overview

Laboratory Activity 2 focused on understanding and investigating the fundamental components of cloud infrastructure. In this mission, a Linux server environment was examined using the KillerCoda Playground. The investigation included the operating system, kernel, CPU, memory, disk storage, mounted file systems, hostname, and IP address.

The laboratory also introduced the relationship between compute, storage, networking, and operating system resources in a cloud environment. In addition, the major cloud providers—Amazon Web Services (AWS), Microsoft Azure, and Google Cloud Platform (GCP)—were compared based on their equivalent infrastructure services. A simple cloud infrastructure blueprint was also designed to demonstrate how a user, internet connection, network, compute resource, and storage resource work together.

## Objectives

* Explain the major components of cloud infrastructure.
* Investigate hardware and software resources in a Linux cloud environment.
* Identify compute, storage, networking, and operating system resources.
* Understand how cloud infrastructure components work together.
* Compare equivalent services offered by AWS, Microsoft Azure, and Google Cloud Platform.
* Create a simple cloud infrastructure diagram.
* Practice professional technical documentation using Markdown.
* Organize and improve the Cloud Computing GitHub portfolio.

## Cloud Infrastructure Components

### Compute Resources

Compute resources provide the processing power required to run applications, commands, services, and workloads. In the KillerCoda environment, the CPU and available CPU cores represent the compute resources of the Linux server.

### Storage Resources

Storage resources provide space for the operating system, applications, configuration files, and user data. The Linux environment uses disk storage that can be examined using commands such as `df -h` and `lsblk`.

### Networking Resources

Networking resources allow the Linux server to communicate with other systems and access network services. The KillerCoda environment has network interfaces and an IP address that can be investigated using commands such as `ip addr` and `hostname -I`.

### Operating System

The operating system manages the server's hardware and provides the environment where applications and commands can run. The KillerCoda Playground provides a Linux-based environment, which can be identified using `cat /etc/os-release`.

## Tools Used

* **KillerCoda Playground** – Used to access and investigate the cloud-based Linux environment.
* **Linux Terminal** – Used to execute system investigation commands.
* **GitHub** – Used to store, organize, document, and submit the laboratory outputs.
* **Markdown** – Used to create technical documentation.
* **Web Browser** – Used to research official cloud provider documentation.
* **Cloud Architecture Diagramming Tool** – Used to create the cloud infrastructure blueprint.
* **Screenshot Tool** – Used to capture evidence of completed tasks.

## Linux Commands Executed

The following Linux commands were used to investigate the cloud server:

| Command                      | Purpose                                                      |
| ---------------------------- | ------------------------------------------------------------ |
| `cat /etc/os-release`        | Identifies the operating system and distribution information |
| `uname -r`                   | Displays the Linux kernel version                            |
| `lscpu`                      | Displays CPU information                                     |
| `lscpu \| grep "Model name"` | Displays the CPU model                                       |
| `nproc`                      | Displays the number of available CPU processing units        |
| `free -h`                    | Displays total and available memory                          |
| `df -h`                      | Displays disk usage and storage capacity                     |
| `findmnt`                    | Displays mounted file systems                                |
| `hostname`                   | Displays the server hostname                                 |
| `hostname -I`                | Displays the server's IP address                             |
| `ip addr`                    | Displays network interface and IP address information        |

## Skills Learned

This laboratory improved my understanding of cloud infrastructure and Linux system administration. I learned how to inspect a cloud-based Linux server and identify its available compute, storage, networking, and operating system resources.

I also learned how to use Linux commands to gather system information and document the results in Markdown. Comparing AWS, Azure, and GCP helped me understand that different cloud providers may use different service names while providing similar infrastructure capabilities.


## Challenges Encountered

One challenge encountered during this laboratory activity was becoming familiar with different Linux commands and understanding the information displayed by each command. Some commands produce a large amount of technical information, so it was necessary to identify the specific values required for the laboratory report.

Creating and organizing the GitHub repository structure was also a learning experience. Properly naming folders, Markdown files, and screenshots required careful attention to the laboratory instructions. Despite these challenges, the activity improved my confidence in Linux, cloud infrastructure concepts, technical documentation, and GitHub portfolio management.
