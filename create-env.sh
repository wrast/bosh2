# create a bosh2 director environment

bosh2 create-env bosh-deployment/bosh.yml \
    --state=state.json \
    --vars-store=creds.yml \
    -o bosh-deployment/vsphere/cpi.yml \
    -o bosh-deployment/jumpbox-user.yml \
    -v director_name=bosh-v2 \
    -v internal_cidr=172.28.68.0/24 \
    -v internal_gw=172.28.68.1 \
    -v internal_ip=172.28.68.50 \
    -v network_name=Lab06-NetH \
    -v vcenter_dc=Lab06-Datacenter01 \
    -v vcenter_ds=nfs-lab06-vol1 \
    -v vcenter_ip=172.29.0.11 \
    -v vcenter_user=lab06admin@lab.ecsteam.local \
    -v vcenter_password=Ecsl@b99 \
    -v vcenter_templates=bosh-v2-templates \
    -v vcenter_vms=bosh-v2-vms \
    -v vcenter_disks=bosh-v2-disks \
    -v vcenter_cluster=Lab06-Cluster01 \
    -v vcenter_rp=boshPool
