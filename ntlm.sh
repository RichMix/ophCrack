# Step 1: Mount and copy the ISO contents
sudo mkdir /mnt/ophcrack_iso
sudo mount -o loop ophcrack-vista-livecd-3.6.0.iso /mnt/ophcrack_iso
cp -r /mnt/ophcrack_iso/* ntlm/
sudo umount /mnt/ophcrack_iso
sudo rmdir /mnt/ophcrack_iso

# Step 2: Unzip the tables into ntlm
unzip tables_xp_free_small.zip -d ntlm/

# Step 3: Create the hash file
nano ntlm_hashes.txt
# (Paste hashes and save the file)

# Step 4: Launch Ophcrack and load tables and hashes via the GUI
ophcrack
