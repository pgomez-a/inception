# inception

Similar to the ft_server project, Inception invites us to make a web server composed of different services and using our own Docker images (one for each service). All services used to launch the server will be isolated in their own container and, once the server is up, they will connect to the same network. If you do not know ft_server, I recommend you to do it before starting Inception, because it covers many of the concepts we see in Inception but without having to experiment with more difficult topics like docker-compose.

### What is a Virtual Machine
We deal with the Virtual Machine concept in depth with the Born2BeRoot project. A virtual machine (or VM) is software that creates an independent layer within the system capable of emulating the behavior of a real computer. This VM uses the hardare of the machine on which it is hosted, being able to run all kinds of operating systems and programs. None of the things that run inside a VM can get out of it. Therefore, it could be very useful to use a virtual machine in case we want to test an unstable version of an operating system.

### What is Docker?
Docker is a software technology based on creating containers for running applications. Docker uses some of the technology used by the Linux kernel, such as Cgroups and namespaces, to generate processes that can be run independently. Thanks to this, we will be able to execute different processes independent of the rest, making better use of the system infrastructure and preserving the security that everyone would have with isolated systems.<br>
With Docker we obtain the following advantages:
<ul>
  <li>Modularity: with Docker we can edit a part of an application without compromising the operation of the rest of the services that the application can offer. Thanks to the use of containers, we can create an application composed of different services, where each service is hosted in its own container.</li>
  <li>Layer control: each Docker image is made up of layers. All these layers are merged into a single image. A layer is created when a modification occurs in the current layer, obtaining only the new characteristics.</li>
  <li>Rapid deployment: with a container for each process, all processes can be quickly delivered to different applications</li>
</ul>

### What is the difference between Docker and VMs?
The main difference between a virtual machine and a container is that with VMs what you want is to emulate an environment whose behavior is the same as that of a computer. However, Docker looks for the best way to implement an application by isolating its dependencies from the rest of the system.<br>
Moreover, there are also some other differences that could help us to differenciate both softwares:
<ul>
  <li>Operating system: each virtual machine has its own guest operating system, which makes the virtual machine slow. Instead, Docker containers share the same host system, so they are very smooth.</li>
  <li>Security: since VMs do not share the operating system and there is a strong level of isolation, they are much more secure compared to containers. A container has many risks and vulnerabilities.</li>
  <li>Portability: Docker containers are easy to transport because they don't have separate OSs. A container can be moved to another operating system and can be quickly configured.</li>
</ul>

### Docker-compose
As we have seen before, Docker allows us to create our own applications using containers. Today most applications are made by different microservices that all connect together to display the entire application. With docker-compose we can define and share an application between different containers. Thanks to the use of a .yaml file, the services are defined and, with a single command, we will be able to execute the entire application. <br>
Basically, docker-compose is a powerful tool for deploying applications that need to use different containers to run. By default, docker containers will be isolated from the rest of the system and other containers. However, using compose creates a network to which all the created containers indicated in the .yaml file will belong. In this way communication between containers is allowed.
