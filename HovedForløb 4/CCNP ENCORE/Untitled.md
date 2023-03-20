```yaml
//ansible-playbook --- 
   - name: config 
   - hosts: all connection: local gather_facts: no tasks: - name: configure provider set_fact: provider: username: cisco password: cisco - name: set hostname ios_config: provider: "{{provider}}" lines: hostname {{ inventory_hostname }} - name: interface IP address ios_config: provider: "{{provider}}" lines: - ip address 192.168.1.10 255.255.255.0 - no shutdown - full-duplex parents: interface FastEthernet 1/0 - name: loopback interface ios_config: provider: "{{provider}}" lines: - ip address 1.1.1.1 255.255.255.255 - no shutdown parents: interface Loopback0 - name: configure ospf network ios_config: provider: "{{provider}}" lines: - router-id 1.1.1.1 - network 192.168.1.10 0.0.0.255 area 0 parents: router ospf 1
```