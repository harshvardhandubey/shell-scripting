echo "Copy multiple files to another directory "
read -p "Enter source directory :" sourcedir
read -p "Enter the names of the files you want to copy to another directory :" file1 file2 file3
read -p "Enter the directory where you want to copy the files to :" destdir
sed 's/./\u&/' <<< "$file1"   
sed 's/./\u&/' <<< "$file2" 
sed 's/./\u&/' <<< "$file3"  
cp "$sourcedir"/{"$file1","$file2","$file3"} "$destdir"
echo "Copy successful" 
read -p "Enter the user you want to allocate this file to :" user
chown "$user" "$file1" 
chown "$user" "$file2"
chown "$user" "$file3"
echo "Files allocated to $user "
read -p "Enter permission (eg. 777 etc) :" per
chmod -R "$per" "$destdir"
echo "Destination folder permissions updated to $per"
