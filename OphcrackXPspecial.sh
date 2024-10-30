# prereq
sudo apt update
sudo apt install ophcrack

# Step 2: Place the XP Free Special Tables in the Right Directory
# The XP Free Special tables need to be in the right directory for 
# Ophcrack to use them. Assuming you’ve already downloaded the tables 
# and they’re in your Downloads folder, here’s how to move them:


# Create the table directory:
sudo mkdir -p /usr/share/ophcrack/tables/xp_free_special

# Move the tables to the Ophcrack directory:
sudo cp -r ~/Downloads/xp_free_special/* /usr/share/ophcrack/tables/xp_free_special/

# Verify the files: Ensure the files are in the directory by listing them:
ls /usr/share/ophcrack/tables/xp_free_special

# You should see files like table0.bin, table0.index, etc.

# Step 3: Prepare the NTLM Hash File
# Create a new file for the NTLM hashes:
# Use a text editor like nano to create a file and paste your hashes.

nano ntlm_hashes.txt
# Paste the hashes: Paste the following hashes into ntlm_hashes.txt:

makefile
Copy code #Example hashes shown below from 2024 NCL Gym
21259DD63B980471AAD3B435B51404EE:1E43E37B818AB5EDB066EB58CCDC1823
11CB3F697332AE4C4A3B108F3FA6CB6D:13B29964CC2480B4EF454C59562E675C
65711C079DC4CD3CC2265B23734E0DAC:47F747C5190DC0F0B921AA4A07F06285
FBBDA33FC12E83FB0C240E84A183686E:DDE9DC6E34E2E6E11EF9E51C6B27ED96
21C4E7C2EFE8E8D1C00B70065ED76AA7:A7A0F9AFD4A78F531A1CF4C42E531BBF
E85B4B634711A266AAD3B435B51404EE:FD134459FE4D3A6DB4034C4E52403F16
BA756FB317B622DBAAD3B435B51404EE:C8405270B10B13AE8A24612BB853567A
199C926FA387EAB7AAD3B435B51404EE:F196F77BF8BB15781BA8364C649C5FD4
FE4AACAAAD7D986AAAD3B435B51404EE:3928E16F614E2316CA51C336FA5B3011
3613F7EC15407F56AAD3B435B51404EE:C82E164316183AA3AF3EA6BAA642A237

# Save and exit: Press Ctrl + O, then Enter to save, and Ctrl + X to exit.

# Step 4: Run Ophcrack with the XP Free Special Tables

# Now that everything is set up, use Ophcrack to crack the hashes.
# Run Ophcrack with the NTLM hash file:

ophcrack -t /usr/share/ophcrack/tables/xp_free_special -h ntlm_hashes.txt

# Interpret the Output: Ophcrack will process each hash and attempt to crack it using the XP Free Special tables.
# If it successfully cracks a hash, it will display the cracked password.
# For any hashes that cannot be cracked with the available tables, Ophcrack will indicate they were not cracked.

# Step 5: Review Cracked Passwords
# After the process completes, review the output to see which passwords 
# were successfully cracked. You should see the corresponding plaintext 
# passwords for any hashes that matched entries in the XP Free Special tables.

# Additional Tips --> Use GUI: Ophcrack has a graphical interface as well, which you can launch by simply typing ophcrack and selecting the ntlm_hashes.txt file along with the XP tables.
# Alternative Tables: If the XP Free Special tables don’t crack all hashes, 
# you may need to download additional tables for stronger passwords or Windows 7/10 hashes.