# Vagrant Command
#

enrol.vu() { eval cd $ER_VM_DIR && cmd.exe /C "vagrant up" }
enrol.vh() { eval cd $ER_VM_DIR && cmd.exe /C "vagrant halt" }
enrol.vr() { eval cd $ER_VM_DIR && cmd.exe /C "vagrant reload" }
enrol.vs() { eval cd $ER_VM_DIR && cmd.exe /C "vagrant ssh" }
enrol.vb() { eval cd $ER_VM_DIR && cmd.exe /C "vagrant box update" }
