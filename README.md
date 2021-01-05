<u>**Automated ELK Stack Deployment :**</u>
The files in this repository were used to configure the network depicted below. <br>  
 
[Network Diagram](https://github.com/Rishi-Chauhan-2020/BootCamp_Rep1/blob/main/Diagram/Rishi_Class2_Week12_Network%20Diagram.drawio)

[![Network Diagram](https://github.com/Rishi-Chauhan-2020/BootCamp_Rep1/blob/main/Diagram/Rishi_Class2_Week12_Network%20Diagram.jpg)](https://github.com/Rishi-Chauhan-2020/BootCamp_Rep1/blob/main/Diagram/Rishi_Class2_Week12_Network%20Diagram.jpg)

<u>**How to use Ansible Build**</u>
<br>
These Ansible scripts have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the ansible YML script file may be used to install only certain pieces of it, such as Filebeat.

Loaction of Ansible scripts: [YML Scripts](https://https://github.com/Rishi-Chauhan-2020/BootCamp_Rep1/tree/main/Ansible)

| Name of script                   | Function                                                                                                                                                   |
| :-------------                   | :--------------------------------------------------------------------------------------------------------------------------------------------------------: | 
| my-playbook.yml.txt              | This script will install Apache2 on Webservers.<br> Webserver's IP address shall be defined <br> in host file of Ansible                                            | 
| playbook-docker-python3.yml.txt  | This script will configure webserver virtual <br> machines with Docker, Python and setup <br> DVWA container                                                         |
| install-elk.yml.txt              | This script will configure ELK virtual mahcine <br> with docker, install python, increase <br>virtual memory to 262144, configure ELK with <br>ports 5601/9200/5044     | 
| metricbeat-playbook.yml.txt      | This script will install and configure webservers <br> with metricbeat  | 
| filebeat-playbook.yml.txt        | This script will install and configure webservers <br>with filebeat    |
|                                  |              |
<br>




Availability : Load balancing ensures that the application will be high availability. Load Balancer is put in with two webservers ( web-1 & Web-2) in backend pool, with a health probe to monitor the webservers hosting DVWA (D*am Vulnerable Web Application). Loadbalancer public IP fronts and restrict network access. <br>


TODO: Enter the playbook file.

This document contains the following details:

Description of the Topologu
Access Policies
ELK Configuration

Beats in Use
Machines Being Monitored


How to Use the Ansible Build


Description of the Topology
The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.
Load balancing ensures that the application will be highly _____, in addition to restricting _____ to the network.

TODO: What aspect of security do load balancers protect? What is the advantage of a jump box?

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the _____ and system _____.

TODO: What does Filebeat watch for?
TODO: What does Metricbeat record?

The configuration details of each machine may be found below.
<<<<<<< HEAD


| Name                 | Function     | IP Address   | Operating System   |
| :-------------       | :----------: | -----------: | -----------:       |
| Jump-Box-Provisioner | Gateway      | 10.0.1.4     | Linux-Ubuntu       |
| Web-1                | WebServer    | 10.0.1.5     | Linux-Ubuntu       |
| Web-2                | WebServer    | 10.0.1.6     | Linux-Ubuntu       |
| ELK                  | ELK Server   | 10.1.0.4     | Linux-Ubuntu       |
|                      |              |              |                    |




<br>Access Policies
=======
Note: Use the Markdown Table Generator to add/remove values from the table.



Name
Function
IP Address
Operating System




Jump-Box-Provisioner
Gateway
10.0.1.4
Linux


Web-1
WebServer
10.0.1.5
Linux


Web-2
WebServer
10.0.1.6
Linux


TODO







Access Policies
>>>>>>> 6337d8b9f85551945317a2e7f61a715e9d99cbb1
The machines on the internal network are not exposed to the public Internet.
Only the _____ machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:

TODO: Add whitelisted IP addresses

Machines within the network can only be accessed by _____.

TODO: Which machine did you allow to access your ELK VM? What was its IP address?

A summary of the access policies in place can be found in the table below.



Name
Publicly Accessible
Allowed IP Addresses




Jump Box
Yes/No
10.0.0.1 10.0.0.2














Elk Configuration
Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...

TODO: What is the main advantage of automating configuration with Ansible?

The playbook implements the following tasks:

TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc.
...
...

The following screenshot displays the result of running docker ps after successfully configuring the ELK instance.
Note: The following image link needs to be updated. Replace docker_ps_output.png with the name of your screenshot image file.


Target Machines & Beats
This ELK server is configured to monitor the following machines:

TODO: List the IP addresses of the machines you are monitoring

We have installed the following Beats on these machines:

TODO: Specify which Beats you successfully installed

These Beats allow us to collect the following information from each machine:

TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., Winlogbeat collects Windows logs, which we use to track user logon events, etc.


Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned:
SSH into the control node and follow the steps below:

Copy the _____ file to _____.
Update the _____ file to include...
Run the playbook, and navigate to ____ to check that the installation worked as expected.

TODO: Answer the following questions to fill in the blanks:

Which file is the playbook? Where do you copy it?
Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?
_Which URL do you navigate to in order to check that the ELK server is running?

As a Bonus, provide the specific commands the user will need to run to download the playbook, update the files, etc.
<<<<<<< HEAD


=======
>>>>>>> 6337d8b9f85551945317a2e7f61a715e9d99cbb1
