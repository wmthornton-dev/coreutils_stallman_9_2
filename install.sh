#/bin/sh

# This script installs the "stallman" command to the /bin directory of your system and installs
# the corresponding manual pages to the proper directory and then updates the mandb database.

# First, ensure your local man page directory exists for your section of
# interest (section 1 in this case, so the `man1` dir)
sudo mkdir -p /usr/local/share/man/man1

#  **copy** over the man page to section 1
sudo cp stallman.1 /usr/local/share/man/man1/

# **copy** over the "stallman" executable to the /bin directory and create a symlink file called "molest"
sudo cp stallman /bin/
sudo ln -sf /bin/stallman /bin/molest

# Update the mandb database
sudo mandb

echo "Stallman has now been installed to your /bin directory!. You can access it by using the 'stallman' or 'molest'  commands."
echo "The manual for the 'stallman' command can be access by typing 'man stallman' anywhere in your terminal."
