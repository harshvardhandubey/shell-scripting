echo "Program to convert the DOS files to UNIX files "
read -p "Enter the DOS filename :" dos
sed 's/$'"/`echo \\\r`/" "$dos" > unix.txt
echo "The DOS file with CR and LF has
been converted to UNIX file with only LF"
