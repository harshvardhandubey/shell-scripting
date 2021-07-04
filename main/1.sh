echo "Broken symbolic link program "
find ./ -type l -exec file {} \; |grep broken
echo "Broken symbolic link found"
