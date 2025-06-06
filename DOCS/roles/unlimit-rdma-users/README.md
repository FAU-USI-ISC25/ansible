# unlimit RDMA users
This role will configure the `/etc/security/limits.conf` to allow members of the rdma group to have no hard or soft memlock limit. This file sould exsit upon OS instalation an will not be created. Then the `rdma` group will be created and the given users will be added to this group. This is importand to ensure the proper funktionalty of RDMA transfares used for example by InfiniBand. 
## Vars
- `clusterUsers`
  -  the list of users that will be added to the `rdma` group. 
  -  values: a list of usernames
  -  Default: none
