echo "WGET Program"
read -p "Enter the website URL :" url
wget "$url"
echo "Successfully created "
echo "Now, creating gzip archive... "
gzip index.html
read -p "Enter directory to put the archive in :" path
cp index.html.gz "$path"
echo "Successfully archived "
