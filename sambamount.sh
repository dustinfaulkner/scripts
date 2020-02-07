#Mount Samba
while ! ping -c 1 -W 1 ALEXANDRIA.milkynet; do
echo "Waiting for ALEXANDRIA - network interface might be down..."
sleep 1
done
mount.cifs //ALEXANDRIA/PLEX /mnt/nas/PLEX -o credentials=/etc/smb-credentials_nas,vers=3.0,uid=milky,gid=users
mount.cifs //ALEXANDRIA/Music /mnt/nas/Music -o credentials=/etc/smb-credentials_nas,vers=3.0,uid=milky,gid=users
mount.cifs //ALEXANDRIA/Documents /mnt/nas/Documents -o credentials=/etc/smb-credentials_nas,vers=3.0,uid=milky,gid=users
mount.cifs //ALEXANDRIA/Pictures /mnt/nas/Pictures -o credentials=/etc/smb-credentials_nas,vers=3.0,uid=milky,gid=users
