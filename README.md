My Ubuntu environment for a good life!
======================================

Step 1 - Basic
==============
Install basic stuff.

##### Command for copy-paste:
```
sudo apt install git
sudo apt install vim
```

---

Step 2 - Ease The Flow
======================
### Enable `sudo` without a password
- Update `/etc/sudoers` to enable `sudo` without a password.
- See the example `sudoers.no_password` file.

Replace:
```
%sudo	ALL=(ALL:ALL) ALL
```
with:
```
%sudo	ALL=(ALL) NOPASSWD:ALL
```
in `/etc/sudoers` file.

##### Command for copy-paste:
```
sudo cp ./sudoers.no_password /etc/sudoers
```

---

### Enable all apt repositories
- Uncomment all `deb http://...` repos at `/etc/apt/sources.list` file.
- Update `apt` cache and upgrade the machine:

##### Command for copy-paste:
```
sudo vim /etc/apt/sources.list
sudo apt update
sudo apt upgrade
sudo reboot
```

##### Fix error for avahi-daemon during update/upgrade
Note - in case of problems with **avahi-daemon** during `sudo apt update` or `sudo apt upgrade`
disable the avahi-deamon and re-enable after the update/upgrade.
Reference: https://ubuntuforums.org/showthread.php?t=2388648

Example of error with avahi-daemon:
```
Job for avahi-daemon.socket canceled.
dpkg: error processing archive /var/cache/apt/archives/avahi-dnsconfd_0.6.32~rc+dfsg-1ubuntu2.1_amd64.deb (--unpack):
 subprocess new pre-removal script returned error exit status 1
Errors were encountered while processing:
 /var/cache/apt/archives/avahi-dnsconfd_0.6.32~rc+dfsg-1ubuntu2.1_amd64.deb
E: Sub-process /usr/bin/dpkg returned an error code (1)
```

##### Command for copy-paste:
```
sudo systemctl disable avahi-daemon
sudo apt update
sudo apt upgrade
sudo systemctl enable avahi-daemon
```

---

Step 3 - Git
============
Install git using the command below.
##### Command for copy-paste:
```
./setup_021_git.sh
```

Update name and email in git configuration file `~/.gitconfig`.
```
[user]
	name = Barak Adam
	email = barak1adam@gmail.com
```

---

Step 4 - Main Blow
==================
Install the main utils for life and happiness.

##### Command for copy-paste:
```
./setup_011_bashrc.sh
./setup_010_server.sh
./setup_030_server_manual.sh
./setup_080_opx.sh # only if needed for OPX
./setup_012_clang_silversearcher.sh
./setup_140_server_repo_tool.sh
./setup_170_server_python.sh
./setup_070_misc.sh
./setup_220_ripgrep.sh
```

---

Step 5 - ZShell My Life
=======================
Install zsh (Z Shell).

##### Command for copy-paste:
```
./setup_120_zsh.sh
```

Configure zsh - update `~/.zshrc` with:
  - Add `source ~/.bashrc.baraka` after `source $ZSH/oh-my-zsh.sh` line.
  - Set `DISABLE_AUTO_TITLE="true"`.

##### Command for copy-paste:
```
vim ~/.zshrc
```

Configure zsh - update default theme with double `\n\n` and full path:
  - In `~/.oh-my-zsh/themes/robbyrussell.zsh-theme` file replace `%c` with `%d` and add `$'\n'`
  - The end result should like below:
    `PROMPT=$'\n''${ret_status} %{$fg[cyan]%}%d%{$reset_color%} $(git_prompt_info)'$'\n\n'`

##### Command for copy-paste:
```
vim ~/.oh-my-zsh/themes/robbyrussell.zsh-theme
cd ~/.oh-my-zsh
ga -u
gcsm 'WIP'
cd -
```

---

Step 6 - Golang
===============
Install go language.

##### Command for copy-paste:
```
./setup_110_golang.sh
```

---

Step 7 - Vim It All
===================
Install vim with best plugins.

##### Command for copy-paste:
```
./setup_020_vim_vundle.sh
vim ~/.vimrc
```
Inside vim run `:PluginInstall` to install all vim plugins.

---

Step 8 - Atom-Fast Search
=========================
Install FZF tool for fastest searchers in the world!

##### Command for copy-paste:
```
./setup_013_fzf_manual.sh
```
Answer yes (`y`) for all questions.

---

Step 9 - Make It Fresh
======================
##### Command for copy-paste:
```
sudo reboot
```

---

Step 10 - Install GUI apps
==========================
#### Note: Do **not** do it if you want only the GUI-less functionality!

##### Command for copy-paste:
```
./setup_010_desktop.sh
./setup_030_desktop_manual.sh
./setup_040_gui.sh
./setup_040_zoom.sh
```

---

Step 11 - Enable VNC via vino server
=============================
##### Command for copy-paste:
```
sudo apt install vino
```

Configure vino VNC server.

##### For Ubuntu 16.04:
##### Command for copy-paste:
```
sudo vino-preferences
```

##### For Ubuntu 18.04:
Use GUI settings `Sharing` to enable remote VNC vino sessions.

Enable VNC connection without an encryption.
##### Command for copy-paste:
```
sudo dconf write /org/gnome/desktop/remote-access/require-encryption false
```

Done! :-)
