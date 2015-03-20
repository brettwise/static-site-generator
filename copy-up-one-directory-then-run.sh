#!bash/bin

echo "Type the name of your site without the .com This will rename the folder you're about to copy and be used throughout the commands that are about to be executed:"
read sitename
cp -r static-site-generator $sitename
cd $sitename
export sitename
bash gogo-static.sh
