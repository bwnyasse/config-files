#!/usr/bin/env bash

#Display the help message for the script usage
usage() {
	cat <<-EOF

	usage: ./install_pkg [name]

	This script check if a specific package is installed , and install it if not according
	to the given sequence of command to be executed for his installation.

	OPTIONS:
	========
	    name		The name of package to check the installation status or to be install.
	    -h|help		show the help message.

	EXAMPLE:
	========
		./install_pkg ansible
	EOF
}


# Install a package according to a given command sequence.
# $1: package name
install() {
    case "$1" in
     ansible)
            echo "install ansible"
            sudo apt-add-repository -y ppa:ansible/ansible \
                && sudo apt-get update \
                && sudo apt-get install -y ansible
            ;;
         *)
            echo "the package $1 is not take in consideration by this script , add it "
            ;;
    esac
}

# Read the input param
option="${1}"
case $option in
	-h|help)
		usage
		exit 1 # Command to come out of the program with status 1
		;;
esac


# Check if a package is installed : 1 (installed) or 0 (not installed)
is_pkg_installed=$(dpkg-query -W -f='${Status}' $option 2>/dev/null | grep -c "ok installed")

if [ $is_pkg_installed -eq 0 ];
then
    echo " $option is not installed , trying to install it... "
    instal $option
else
    echo  " The required $option package is installed , nothing to do -:) "
fi
