#!/usr/bin/bash

if [[ "$1" == "" ]]; then
	echo "Please specify the VM name as argument!"
	exit 1
fi

vm_name="${1}"
vm_memory="4096"
vm_cpus="2"
vm_disk="/var/lib/libvirt/images/almalinux-${vm_name}.qcow2"

ci_user_data="/root/cloud-init/user-data.yaml"
ci_meta_data="/root/cloud-init/meta-data-${vm_name}.yaml"
ci_network_data="/root/cloud-init/network-${vm_name}.yaml"

virt-install \
	--name "$vm_name" \
	--memory "$vm_memory" \
	--machine q35 \
	--vcpus "$vm_cpus" \
	--cpu host-passthrough \
	--import \
	--cloud-init user-data="$ci_user_data",meta-data="$ci_meta_data",network-config="$ci_network_data" \
	--osinfo name=almalinux10 \
	--disk "$vm_disk" \
	--virt-type kvm
