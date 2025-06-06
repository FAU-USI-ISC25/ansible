# Setup Firewall
This will configure the firewall by creating a zone in which all nodes from the hostfile are pressent and ssh gets enabled. For all the InfiniBand interfaces a new zone is created in which all ports are enabled (tcp/udp).

## Vars
- `zone`

Vars the could be set for the roles but would darsticaly change intendet behavior of playbook are not listed
## Roles
[`enable-firewall-ports`](../../roles/enable-firewall-ports)
[`enable-firewall-infiniband`](../../roles/enable-firewall-infiniband)
[`enable-autostart`](../../roles/enable-autostart)
