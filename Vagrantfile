Vagrant.configure("2") do |config|
	config.ssh.forward_agent = true
	config.vm.provider :vmware_fusion do |v|
		v.gui = true
		v.vmx["memsize"] = "1024"
		v.vmx["numvcpus"] = "2"
		v.vmx["vhv.enable"] = "TRUE"
	end
end
