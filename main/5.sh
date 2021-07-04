echo "Add directory to PATH variable "
read -p "Enter the directory :" path
export PATH=$PATH:"$path"
echo "---echo successful---"
echo "Your directory has been added to the path variable..
Now you can invoke programs directly from that directory without specifying the whole directory "
