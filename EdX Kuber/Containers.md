**Containers** are an application-centric method to deliver high-performing, scalable applications on any infrastructure of your choice. Containers are best suited to deliver microservices by providing portable, isolated virtual environments for applications to run without interference from other running applications.

![Container Deployment](https://courses.edx.org/assets/courseware/v1/1256618e247da221e7c3cc4bab9af3e3/asset-v1:LinuxFoundationX+LFS158x+1T2022+type@asset+block/container_deployment.png)

**Container Deployment**

**Microservices** are lightweight applications written in various modern programming languages, with specific dependencies, libraries and environmental requirements. To ensure that an application has everything it needs to run successfully it is packaged together with its dependencies.

Containers encapsulate microservices and their dependencies but do not run them directly. Containers run container images.

A **container image** bundles the application along with its runtime, libraries, and dependencies, and it represents the source of a container deployed to offer an isolated executable environment for the application. Containers can be deployed from a specific image on many platforms, such as workstations, Virtual Machines, public cloud, etc.

In Development (Dev) environments, running containers on a single host for development and testing of applications may be a suitable option. However, when migrating to Quality Assurance (QA) and Production (Prod) environments, that is no longer a viable option because the applications and services need to meet specific requirements:

-   Fault-tolerance
-   On-demand scalability
-   Optimal resource usage
-   Auto-discovery to automatically discover and communicate with each other
-   Accessibility from the outside world
-   Seamless updates/rollbacks without any downtime.

**Container orchestrators** are tools which group systems together to form clusters where containers' deployment and management is automated at scale while meeting the requirements mentioned above.


Although not exhaustive, the list below provides a few different container orchestration tools and services available today:

-   **Amazon Elastic Container Service**  
    [Amazon Elastic Container Service](https://aws.amazon.com/ecs/) (ECS) is a hosted service provided by [Amazon Web Services](https://aws.amazon.com/) (AWS) to run containers at scale on its infrastructure.
-   **Azure Container Instances**  
    [Azure Container Instance](https://azure.microsoft.com/en-us/services/container-instances/) (ACI) is a basic container orchestration service provided by [Microsoft Azure](https://azure.microsoft.com/en-us/).
-   **Azure Service Fabric**  
    [Azure Service Fabric](https://azure.microsoft.com/en-us/services/service-fabric/) is an open source container orchestrator provided by [Microsoft Azure](https://azure.microsoft.com/en-us/).
-   **Kubernetes**  
    [Kubernetes](https://kubernetes.io/) is an open source orchestration tool, originally started by Google, today part of the [Cloud Native Computing Foundation](https://www.cncf.io/) (CNCF) project.
-   **Marathon**  
    [Marathon](https://mesosphere.github.io/marathon/) is a framework to run containers at scale on [Apache Mesos](https://mesos.apache.org/) and [DC/OS](https://dcos.io/).
-   **Nomad**  
    [Nomad](https://www.nomadproject.io/) is the container and workload orchestrator provided by [HashiCorp](https://www.hashicorp.com/).
-   **Docker Swarm**  
    [Docker Swarm](https://docs.docker.com/engine/swarm/) is a container orchestrator provided by [Docker, Inc](https://www.docker.com/). It is part of [Docker Engine](https://docs.docker.com/engine/).

Although we can manually maintain a couple of containers or write scripts to manage the lifecycle of dozens of containers, orchestrators make things much easier for users especially when it comes to managing hundreds and thousands of containers running on a global infrastructure.

Most container orchestrators can:

-   Group hosts together while creating a cluster
-   Schedule containers to run on hosts in the cluster based on resources availability
-   Enable containers in a cluster to communicate with each other regardless of the host they are deployed to in the cluster
-   Bind containers and storage resources
-   Group sets of similar containers and bind them to load-balancing constructs to simplify access to containerized applications by creating an interface, a level of abstraction between the containers and the client
-   Manage and optimize resource usage
-   Allow for implementation of policies to secure access to applications running inside containers.