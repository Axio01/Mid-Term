#!/bin/bash

echo "Hello Stranger!"
echo "Welcome to my script!"
sleep 2
clear

echo "I'm first creating a file called file1."
touch file1.txt
echo "Seeing if the file has been created."
ls
sleep 2

echo "Next, i'm going to create a directory."
echo "I'm calling it Hello."
mkdir Hello
echo "Now i'm copying file1 into another file!"
cp file1.txt file2.txt
ls
echo "Moving files into Hello directory"
mv file1.txt Hello
mv file2.txt Hello
echo "Checking"
ls 
sleep 3
clear

echo "Cat Command!!!"
sleep 1
echo "Please answer!"
read -p "What is your favorite music genre? " genre
echo "$genre" >> file1.txt
cat file1.txt
echo "Removing file and directory"
rm file1.txt
rm -r Hello
echo "Thank You!"
sleep 2
clear

cd /dev 
echo hello > /dev/null 
sudo dmesg | grep sd
sleep 3

echo "Creating empty file"
sudo dd if=/dev/zero of=./empty.file bs=1M count=32
hexdump empty.file
sleep 3
sudo mkfs -t ext4 ./empty.file
echo "Mount image"
mkdir /mnt/tmp
sudo mount ./empty.file /mnt/tmp
sudo mount; df -h
lsblk 
sleep 3
clear

echo "Analyze kernel boot"
cat /proc/cmdline
who -r
sleep 1
clear 

