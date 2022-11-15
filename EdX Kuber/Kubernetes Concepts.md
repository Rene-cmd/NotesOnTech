According to the [Kubernetes](https://kubernetes.io/) website,

_"Kubernetes is an open-source system for automating deployment, scaling, and management of containerized applications"_.

**Kubernetes** comes from the Greek word **κυβερνήτης**, which means _helmsman_ or _ship pilot_. With this analogy in mind, we can think of Kubernetes as the pilot on a ship of containers.

For more than a decade, Borg has been Google's secret, running its worldwide containerized workloads in production. Services we use from Google, such as Gmail, Drive, Maps, Docs, etc., they are all serviced using Borg. 

Among the initial authors of Kubernetes were Google employees who have used Borg and developed it in the past. They poured in their valuable knowledge and experience while designing Kubernetes. Several features/objects of Kubernetes that can be traced back to Borg, or to lessons learned from it, are:

-   API servers
-   Pods
-   IP-per-Pod
-   Services
-   Labels.

Kubernetes offers a very rich set of features for container orchestration. Some of its fully supported features are:

-   **Automatic bin packing**  
    Kubernetes automatically schedules containers based on resource needs and constraints, to maximize utilization without sacrificing availability.
-   **Designed for extensibility**  
    A Kubernetes cluster can be extended with new custom features without modifying the upstream source code.
-   **Self-healing**  
    Kubernetes automatically replaces and reschedules containers from failed nodes. It terminates and then restarts containers that become unresponsive to health checks, based on existing rules/policy. It also prevents traffic from being routed to unresponsive containers.
-   **Horizontal scaling**  
    With Kubernetes applications are scaled manually or automatically based on CPU or custom metrics utilization.
-   **Service discovery and load balancing**  
    Containers receive IP addresses from Kubernetes, while it assigns a single Domain Name System (DNS) name to a set of containers to aid in load-balancing requests across the containers of the set.

Additional fully supported Kubernetes features are:

-   **Automated rollouts and rollbacks**  
    Kubernetes seamlessly rolls out and rolls back application updates and configuration changes, constantly monitoring the application's health to prevent any downtime.
-   **Secret and configuration management**  
    Kubernetes manages sensitive data and configuration details for an application separately from the container image, in order to avoid a re-build of the respective image. Secrets consist of sensitive/confidential information passed to the application without revealing the sensitive content to the stack configuration, like on GitHub.
-   **Storage orchestration**  
    Kubernetes automatically mounts software-defined storage (SDS) solutions to containers from local storage, external cloud providers, distributed storage, or network storage systems.
-   **Batch execution**  
    Kubernetes supports batch execution, long-running jobs, and replaces failed containers.
-   **IPv4/IPv6 dual-stack**  
    Kubernetes supports both IPv4 and IPv6 addresses.


CNCF hosts a multitude of projects, with more to be added in the future. CNCF provides resources to each of the projects, but, at the same time, each project continues to operate independently under its pre-existing governance structure and with its existing maintainers. Projects within CNCF are categorized based on their maturity levels: Sandbox, Incubating, and Graduated. At the time of this writing, over a dozen projects had reached Graduated status with many more Incubating and in the Sandbox.

Popular graduated projects:

-   [Kubernetes](https://kubernetes.io/) container orchestrator
-   [etcd](https://etcd.io/) distributed key-value store
-   [CoreDNS](https://coredns.io/) DNS server
-   [containerd](http://containerd.io/) container runtime
-   [Envoy](https://www.envoyproxy.io/) cloud native proxy
-   [Fluentd](http://www.fluentd.org/) for unified logging
-   [Harbor](https://goharbor.io/) registry
-   [Helm](https://www.helm.sh/) package management for Kubernetes
-   [Linkerd](https://linkerd.io/) service mesh for Kubernetes
-   [Open Policy Agent](https://www.openpolicyagent.org/) policy engine
-   [Prometheus](https://prometheus.io/) monitoring system and time series DB
-   [Rook](https://rook.io/) cloud native storage orchestrator for Kubernetes

Key incubating projects:

-   [argo](https://argoproj.github.io/) workflow engine for Kubernetes
-   [Buildpacks.io](https://buildpacks.io/) builds application images
-   [CRI-O](https://cri-o.io/) container runtime
-   [Contour](https://projectcontour.io/) ingress controller for Kubernetes
-   [gRPC](http://www.grpc.io/) for remote procedure call (RPC)
-   [CNI](https://www.cni.dev/) for Linux containers networking
-   [flux](https://fluxcd.io/) continuous delivery for Kubernetes
-   [Knative](https://knative.dev/) serverless containers in Kubernetes
-   [KubeVirt](https://kubevirt.io/) Kubernetes based Virtual Machine manager
-   [Notary](https://github.com/theupdateframework/notary) for data security
-   And many [more](https://www.cncf.io/projects/).

There are many dynamic projects in the CNCF [Sandbox](https://www.cncf.io/sandbox-projects/) geared towards metrics, monitoring, identity, scripting, serverless, nodeless, edge, expecting to achieve Incubating and possibly Graduated status. While many active projects are preparing for takeoff, others are being [archived](https://www.cncf.io/archived-projects/) once they become less active and no longer in demand. The first projects to be archived are the [rkt](https://github.com/rkt/rkt) container runtime and the distributed [OpenTracing](https://www.cncf.io/projects/opentracing/).