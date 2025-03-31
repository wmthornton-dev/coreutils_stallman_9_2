#/bin/sh

# This script uninstalls the "stallman" command from the /bin directory of your system and uninstalls
# the corresponding manual pages from the proper directory and then updates the mandb database.

#  **remove** the man page from section 1
sudo rm /usr/local/share/man/man1/stallman.1

# **remove** the "stallman" executable from the /bin directory and **remove** a symlink file called "molest"
sudo rm /bin/stallman
sudo rm /bin/molest

# Update the mandb database
sudo mandb

echo "Stallman has now been uninstalld from  your /bin directory!."
