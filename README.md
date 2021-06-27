# inception

Similar to ft_server project, Inception aims us to make a web-server infrastructure using our own Docker images. All the services used to run the server will be isolated in their own contariner and, once the server is up, the will be attached to the same network. If you don't know ft_server, I recommend you to do it before doing Inception, because it treats much of the concepts we see in Inception but withouth having to experiment with difficult topics like docker-compose.

### What is a Virtual Machine
We treated this topic with Born2BeRoot. A virtual machine (or VM) is a software that creates an infdependent layer inside the system capable of emulating the behaviour of a real computer with all the hardware that it needs to work, and that is able to run every OS and program. Neither of the things that is executed inside a VM can go out of it. So we could find very helpful to use a VM in case we want to try an unstable version of an OS.

### What is Docker?
Docker is a software technology based on the creation of containers to run applications. Docker uses the kernel of Linux, like Cgroups and namespaces, to generate processes so that they can be executed independently. Thanks to this, we will be able to execute different processes that are independet from the rest, making a better use of the system infrastructure and preserving the security that they would all have with isolated systems.<br>
With Docker , we obtain the following advantages:
<ul>
  <li>Modularity: with Docker, we will be able to edit a part of an application withouth trobule shooting the rest of the services that the app can offer. Thanks to the use of containers, we can create an app made by different container, where each container is executing its own service.</li>
  <li>Layer control: each Docker image is made of layers. All these layers are merged on a single image. A layer is made when the previous one is changed, getting only the new characteristics.</li>
  <li>Quick implementation: since the are one container for each proccess, it can give quickly all the processes to different applications.</li>
</ul>
