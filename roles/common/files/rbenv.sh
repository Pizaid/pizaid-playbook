vm_home_path=$1

echo "# rbenv configuration" >> $vm_home_path/.bashrc
echo "export PATH=${vm_home_path}/.rbenv/bin:\$PATH" >> $vm_home_path/.bashrc
echo 'eval "$(rbenv init -)"' >> $vm_home_path/.bashrc
source $vm_home_path/.bashrc
