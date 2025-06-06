# Setup Slurm
This play will install and configure the cluster to use slurm. It will download slurm, perform an rpmbuild and will install the rmps on the headnode. Then the rpms (exept the slurmctl) are copyed the compute nodes and installed. The firewall gets enabled and the slurm configuration gets roldout. Finaly the nessasrary serviceses get started.

## Vars
- `installerTmpFolder`
  -  The Folder in which the installer puts everything that is not neaded after installation (i.e. download, buildoutput...) . This will not be cleand up afterwards
  -  Values: a path that exists on each node (sould not be a scheard folder)
  -  Default: none
- `slurmVersion`
  -  Values: a slurm version i.e. 24.05.4
  -  Default: none
- `privateSSHkey`
  -  Values: a name of private SSHkey file that is allready in `autorized_keys` of root user and that is pressent on the ansible controler (i.e. your Laptop) in `~/.ssh/`
  -  Default: none
- `rebuild`
  -  rebuilds the slurm rpms and reinstalls them on the head node wenn true
  -  Values: a boolean value
  -  Default: `false`
- `reinstall`
  -  reinstalls the slurm rpms on the compute nodes wenn true
  -  Values: a boolean value or not set
  -  Default: `false`
- `zone`
  -  the firewall zone in which the ports for slurm are enabled
  -  Values: a valid firewall zone name
  -  Default: `cluster`



Vars that would brick play wenn changed from default are not listed

## Roles
- [`update`](../../roles/update)
- [`enable-repos`](../../roles/enable-repos)
- [`create-slurm-users`](../../roles/create-slurm-users`)
- [`enable-firewall-ports`](../../roles/enable-firewall-ports)
- [`install-package`](../../roles/install-package)
- [`folder`](../../foleder)
- [`install-slurm`](../../install-slurm)
- [`munge-create-key`](../../munge-create-key)
- [`enable-autostart`](../../enable-autostart)
- [`allow-internode-ssh`](../../allow-internode-ssh)
- [`install-slurm-from-headnode`](../../install-slrum-from-head)
- [`munge-key-rollout`](../../munge-key-rollout)
- [`configure-slurm`](../../configure-slurm)
