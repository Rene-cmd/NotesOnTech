
At a very high level, Kubernetes is a cluster of compute systems categorized by their distinct roles:

-   One or more **control plane** nodes
-   One or more **worker** nodes (optional, but recommended).

![Components of Kubernetes Architecture](https://courses.edx.org/assets/courseware/v1/524d69e2587d4a25ce96fdd0bd51eb06/asset-v1:LinuxFoundationX+LFS158x+1T2022+type@asset+block/Components_of_Kubernetes_Architecture.png)

**Components of Kubernetes Architecture**

## Controle Plane

The **control plane node** provides a running environment for the **control plane agents** responsible for managing the state of a Kubernetes cluster, and it is the brain behind all operations inside the cluster. The control plane components are agents with very distinct roles in the cluster's management. In order to communicate with the Kubernetes cluster, users send requests to the control plane via a Command Line Interface (CLI) tool, a Web User-Interface (Web UI) Dashboard, or an Application Programming Interface (API).

![Stacked etcd Topology](https://courses.edx.org/assets/courseware/v1/de93f27f3cf43ffecf1bd32ac7b0eee9/asset-v1:LinuxFoundationX+LFS158x+1T2022+type@asset+block/Stacked_etcd_topology.png)

**Stacked etcd Topology**

For data store isolation from the control plane components, the bootstrapping process can be configured for an external etcd topology, where the data store is provisioned on a dedicated separate host, thus reducing the chances of an etcd failure.

![External etcd Topology](https://courses.edx.org/assets/courseware/v1/4e5258a38354c2d18fc66321c73416e1/asset-v1:LinuxFoundationX+LFS158x+1T2022+type@asset+block/External_etcd_topology.png)

**External etcd Topology**

Both stacked and external etcd topologies support HA configurations. etcd is based on the [Raft Consensus Algorithm](https://web.stanford.edu/~ouster/cgi-bin/papers/raft-atc14) which allows a collection of machines to work as a coherent group that can survive the failures of some of its members. At any given time, one of the nodes in the group will be the leader, and the rest of them will be the followers. etcd gracefully handles leader elections and can tolerate node failure, including leader node failures. Any node can be treated as a leader. 

![Leader and Followers](https://courses.edx.org/assets/courseware/v1/7bfd48e669933e86a5aa40033e18904b/asset-v1:LinuxFoundationX+LFS158x+1T2022+type@asset+block/Leader_and_Followers.png)

**Leader and Followers**

etcd is written in the Go programming language. In Kubernetes, besides storing the cluster state, etcd is also used to store configuration details such as subnets, ConfigMaps, Secrets, etc.