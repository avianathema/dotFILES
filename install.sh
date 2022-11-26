cp -rfv .config .config .fonts .icons .local .themes dotXYZ ~/
for i in .bashrc .dmrc .p10k.zsh .profile .selected_editor .zshenv .zshrc 
do
  ln -rsfv $i ~/$i
  sudo ln -rsfv $i /root/$i
done
