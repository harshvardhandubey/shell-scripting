echo "code to zip and unzip "
read -p "Enter the directory and file name to compress :" filename
gzip "$filename"
echo "Compression complete.."
gunzip "$filename".gz
echo "Extraction complete.."
