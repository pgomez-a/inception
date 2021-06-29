# inception

**If you want to learn more about IT topics, visit my website:** [**IA Notes**](https://ia-notes.com/)

Similar to the [**ft_server project**](https://github.com/pgomez-a/ft_server), Inception invites us to make a **web server composed of different services** and using our own **Docker images** (one for each service). All services used to launch the server will be isolated in their own container and, once the server is up, they will connect to the same network. If you do not know ft_server, I recommend you to do it before starting Inception, because it covers many of the concepts we see in Inception but without having to experiment with more difficult topics like docker-compose.

### What is a Virtual Machine
We deal with the Virtual Machine concept in depth with [**the Born2BeRoot project**](https://github.com/pgomez-a/born2beroot). A virtual machine (or VM) is **software that creates an independent layer within the system capable of emulating the behavior of a real computer**. This VM uses the hardare of the machine on which it is hosted, being able to run all kinds of operating systems and programs. None of the things that run inside a VM can get out of it. Therefore, it could be very useful to use a virtual machine in case we want to test an unstable version of an operating system.

### What is Docker?
Docker is a **software technology based on creating containers for running applications**. Docker uses some of the technology used by the Linux kernel, such as Cgroups and namespaces, to generate processes that can be run independently. Thanks to this, we will be able to execute different processes independent of the rest, making better use of the system infrastructure and preserving the security that everyone would have with isolated systems.<br>
With Docker we obtain the following advantages:
<ul>
  <li><b>Modularity:</b> with Docker we can edit a part of an application without compromising the operation of the rest of the services that the application can offer. Thanks to the use of containers, we can create an application composed of different services, where each service is hosted in its own container.</li>
  <li><b>Layer control:</b> each Docker image is made up of layers. All these layers are merged into a single image. A layer is created when a modification occurs in the current layer, obtaining only the new characteristics.</li>
  <li><b>Rapid deployment:</b> with a container for each process, all processes can be quickly delivered to different applications</li>
</ul>

#### Docker Volumes
A Docker volume is a **space on the host** where all the **data contained in a container is stored**, so in case the container is deleted we will still have all the information that the container has stored during its execution. Without volumes, when you delete a container, all the information it contains is deleted. When we use volumes, we say that we are mounting a directory or a file from our host in a part of the container that was just launched.<br>
When it comes to volumes, we have two alternatives:
<ul>
  <li><b>Data volumes:</b> created in the /var/lib/docker/ file and can be shared between different containers.</li>
  <li><b>Mounted volumes:</b> the same as a data volume but now we specify the path where the volume will be stored.</li>
</ul>

#### Docker Network
Since we want to set up a **server made by different containers**, we have to find a way to communicate to all of our containers so that they can communicate with each other. This is when we discovered the concept of the Docker network. By default, Docker comes with three types of networks:
<ul>
  <li><b>Bridge:</b> to intercommunicate containers.</li>
  <li><b>Host:</b> removes the isolation between the container and the Docker host.</li>
  <lis><b>None:</b> the container is not accessible.</li>
</ul>

### What is the difference between Docker and VMs?
The main difference between a virtual machine and a container is that with VMs what you want is to emulate an environment whose behavior is the same as that of a computer. However, Docker looks for the best way to implement an application by isolating its dependencies from the rest of the system.<br>
Moreover, there are also some other differences that could help us to differenciate both softwares:
<ul>
  <li><b>Operating system:</b> each virtual machine has its own guest operating system, which makes the virtual machine slow. Instead, Docker containers share the same host system, so they are very smooth.</li>
  <li><b>Security:</b> since VMs do not share the operating system and there is a strong level of isolation, they are much more secure compared to containers. A container has many risks and vulnerabilities.</li>
  <li><b>Portability:</b> Docker containers are easy to transport because they don't have separate OSs. A container can be moved to another operating system and can be quickly configured.</li>
</ul>

### Docker-compose
As we have seen before, Docker allows us to create our own applications using containers. Today most applications are made by different microservices that all connect together to display the entire application. With **docker-compose** we can **define and share an application between different containers**. Thanks to the use of a **.yaml file**, the services are defined and, with a single command, we will be able to execute the entire application. <br>
Basically, docker-compose is a powerful tool for deploying applications that need to use different containers to run. By default, docker containers will be isolated from the rest of the system and other containers. However, using compose creates a network to which all the created containers indicated in the .yaml file will belong. In this way **communication between containers is allowed**.

### What is Nginx?
**Web server** also used as a **reverse proxy** or as an HTTP cache. Nginx is designed to offer **low memory usage** while handling a **large amount of traffic**. Instead of creating a new process for each request from a client, Nginx uses an **asynchronous event-based system** where all requests are handled on the same thread. With Nginx, a single master process can control many worker processes. The master process is the one that manages all the work processes, which are the ones that do the actual work.<br>
With Nginx, we will have for our use:
<ul>
  <li><b>Reverse proxy:</b> a proxy is a server that works as an intermediary for client-server communication when a client sends a request to a server, all focused on client protection. A reverse proxy is the same as a proxy but focused on server protection. The reverse proxy receives the request from the client and sends it to the server. Then, it receives the response from the server and sends it back to the client, as if the proxy had been in charge of processing the request.</li>
  <li><b>IPv6:</b> <a href="https://github.com/pgomez-a/netwhat">visit <b>Netwhat</b></a></li>
  <li><b>FastCGI support:</b> CGI is a web protocol that allows a web server (HTTP server) to interact with external applications, such as PHP. CGI allows us to display dynamic content on our web server. FastCGI is a CGI enhancement.</li>
  <li><b>Websockets:</b> a socket is an abstract concept that allows two processes to intercommunicate with each other, in a secure and orderly way. The concept of a web server is the same but it is used to refer to the two-way channel that is created between the client and the server.</li>
  <li><b>TLS/SSL:</b> Transport Layer Security, a protocol used to encrypt communications on a network, commonly the Internet.</li>
</ul>

### What is PHP-FPM?
Once we have seen what FastCGI is, we know that we will have to use FastCGI on our web server if we want to offer dynamic content. However, instead of using FastCGI we are going to use **PHP-FPM (FastCGI Process Manager)** which is an alternative implementation for PHP-FastCGI with additional features that make it more useful to use in our project. The main reason to use PHP-FPM is that it has been designed to be implemented on high traffic web servers. Since Nginx has the same purpose, we should combine both to get a powerful server using all the advantages that both have.

### What is MariaDB?
MariaDB is a database management system used to create, modify, and obtain information from a database. It also has other functionalities such as user management and data restoration in the event of a program crash. The most useful commands that we can find with MariaDB are:

- Show all users in the mysql database:

      select * from msyql.user;

- Delete a user:

      delete from mysq.user where user = 'username';
      
- Change user name:

      update mysql.user set user="new-username" where user = "old-username"; 

- Add a new user with specific privileges:

      grant select, insert, update, delete, create, drop, index, alter on db_name.* TO 'username'@'localhost' identified by 'password';

- Change user password:

      update mysql.user set password=oldpass("password") where user='username';

- Delete user:

      delete from mysql.user whre user="username";

- Show all databases:

      show databases;

- Use a specific database:

      use db_name;

- Create a database:

      create database db_name;

- Delete a database:

      drop database db_name;

- Show all tables of a database:

      show tables;

- Show data of a specific table:

      select * from table_name;

- Drop table from a database:

      drop table table_name;
