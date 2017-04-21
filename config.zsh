# Config Command
#

# Config main page
enrol.config() {
	echo "Enrol config command"
	echo "Type enrol.config + TAB to see your available commands."
	echo "Those will make the configuration of enrol easier."
}

# Config global setting in nano (command line)
enrol.config.global() {
	eval nano ~/.oh-my-zsh/plugins/enrolzsh/.enrolzsh_global
}

# Open explorer at global config file
enrol.config.explorer() {
	eval cmd.exe /C "explorer \"C:\Users\WINDOWS USER\AppData\Local\lxss\home\BASHUSER\.oh-my-zsh\plugins\enrolzsh\""
}
