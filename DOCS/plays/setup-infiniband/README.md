# Setup InfiniBand
> [!WARNING]
> this will install the RHEL driver not The MLNX/DOCA-OFED. This causes has massiv problems with InfiniBand NDR and should there for olny be used with older InfiniBand versions

All the unsers will be added to rdma group which has no limits for locking memory.
This installes the InfiniBand driver from the Distribution repos on `all` nodes and installs opensm on the `head` node.
InfiniBand debug tools like `ibdiagnet` are installed from mellanox. This playbook will also configure IP addresses for the IB interfaces. 
> [!IMPORTANT]
> The Configured IP addresses will only tacke afect after a reboot

## Vars
- `IB_IPaddresses`
  -  The IB interfaces will be given an IP address from this list in the order as anible lists them
  -  values: a list of valid IP addresses
  -  Default: none
- `IBnetmask`
  -  the Netmask that will be given to the IB interfaceses in longform i.e. 255.255.255.0 not /24
  -  values: a valid subnet mask
  -  Default: none
- `clusterUsers`
  -  the list of users for which memlock limits are removed
  -  values: a list of usersnames
  -  Default: none
- `override_IB_IPaddress`
  -  Wenn true the Playbook will override an existing configurationfile containing the IP address
  -  values: a Boolean
  -  Default: false
- `ignore_unactive_IB_interface`
  -  wenn true interfaces that are down will be scipt 
  -  values: a boolean
  -  Default: true
## Roles
- [`unlimit-rdma-users`](../../roles/unlimit-rdma-users)
- [`intsall-package`](../../roles/install-package)
- [`configure-ib-ip`](../../roles/configure-ib-ip)
- [`enable-autostart`](../../roles/enable-autostart)
- [`install-infinibandDebug`](../../roles/install-infinibandDebug)
