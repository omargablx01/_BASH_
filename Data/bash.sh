#!/bin/bash
#!/bin/bash  >> لازم يكون اول سطر في الملف علشان الجهاز يفهم ان دا ملف bash
# t~ cd "D:\OMAR\Git_Github\_BASH_\Data"
# ? ------------------------------------- 01 -------------------------------------
# * Bash Script Course => 50 Video ( https://www.youtube.com/playlist?list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd => Osama Sbeih )
# ? ------------------------------------- 01 -------------------------------------
# t~ bash script هو عباره عن اوامر ال terminal بالظبط ولكن بداخل ملف script
# mkdir cryptic_x01
# ls
#? ------------------------------------- 02 -------------------------------------
# Video 2 => https://www.youtube.com/watch?v=oKvXY5YodhQ&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=2
#? ------------------------------------- 02 -------------------------------------
# echo -n "Hello1" # علشان اعرض السطرين جنب بعض نستخدم -n  >> Hello1Hello2 هتبقي كدا
# echo "Hello2"
# echo -e "Hello3\vKKkk" # علشان اقدر استخدم ال \n \\ \t \b \v لازم نستخدم ال -e 
# echo "Hello4"
# wel="Welcome"
# hel="Hello"
# name="Cryptic_x01"
# echo -e "${wel} $name\n"
# echo "${hel} $name"
# echo "${hel} Cryptic_x01"
# echo "${wel}Cryptic_x01"
#? ------------------------------------- 03 -------------------------------------
# Video 3 => https://www.youtube.com/watch?v=GbY3BzS1GMI&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=3
#? ------------------------------------- 03 -------------------------------------
# my_date=date
# $my_date
#* ------------------------------
# my_date=$(date)
# echo "Date : $my_date"
#* ------------------------------
# readonly lists=$(date)
# echo $lists
# lists=$(pwd) #! ERROR مش هنعرف نغير قمته لان استخدمنا readonly فوق
# echo $lists
#* ------------------------------
# echo "File Name : $0"
# echo "File Name : $0 ,, Arg Two Is : $1 &; $2"
# echo "Number : $#"
# echo $@
# echo $*
# ls
# echo $_
# echo $$
# echo $!
# echo $?
# echo $_
# echo $-

#? ------------------------------------- 04 -------------------------------------
# Video 4 => https://www.youtube.com/watch?v=JdR-8lLiwyo&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=4
#? ------------------------------------- 04 -------------------------------------
# echo "\$5.00"
# echo '$5.00'
# echo "Date : `date`"
# echo "Date This Day : $(date)"
# echo "My Place File : $(pwd)"
#? ------------------------------------- 05 -------------------------------------
# Video 5 => https://www.youtube.com/watch?v=ex60OTFAfm0&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=5
#? ------------------------------------- 05 -------------------------------------
# read >> عباره عن input بتاخده من المستخدم
# دي الطريقه التقليدية ل اخذ ال input من المستخدم
# echo -n "Enter Name : "
# read name
# echo "Welcome $name"
#* ------------------------------
# read -p >> يعني تقدر تكتب رساله جنب ال input بدل استخدام echo الي فوق
# read -p "Enter Name : " name2
# echo "Welcome $name2"
#* ------------------------------
# read -sp "Enter Passwd : " passwd
# echo -e "\nWelcome $passwd"
#* ------------------------------
# read -sp "Enter Passwd : " passwd
# printf "\nWelcome %s" "$passwd"
#* ------------------------------
# read -t 2 -sp "Enter Name : " name
# echo -e "\nWelcome ${name}"
#* ------------------------------
# read -d "." -p "Enter Name : " name
# echo -e "\nWelcome ${name}"
#* ------------------------------
# read -d "." -p "Enter Name (end with . => ahmed ali. ): " name
# echo -e "\nWelcome ${name}"
#* ------------------------------
# read -N 9 -p "Enter Name : " name
# echo -e "\nWelcome ${name}"
#* ------------------------------
# read -e -p "Enter Name : " name
# echo -e "\nWelcome ${name}"
#* ------------------------------
# read -r -p "Enter text: " mytext
# echo "$mytext"
#* ------------------------------
# read -re -p "Enter Username: " -i "admin" username
# echo "The username is: $username"
#* ------------------------------
# read -re -p "Confirm project path: " -i "$PWD" folder_path
# echo "Target folder: $folder_path"
#* ------------------------------
# read -p "Enter your favorite fruits (separated by space): " -a fruits
# echo "The first fruit is: ${fruits[0]}"
# echo "ALl fruit: ${fruits[@]}"
# echo "Total fruits entered: ${#fruits[@]}"

#? ------------------------------------- 06 -------------------------------------
# Video 6 => https://www.youtube.com/watch?v=pBrQl6muY4g&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=6

#                          >>>>>>>>> Arithmetic Operators Part 1 <<<<<<<<<<
#? ------------------------------------- 06 -------------------------------------
# result=$((5+4))
# echo $result
#* ------------------------------
# read -p "Enter First Num : " var1
# read -p "Enter Second Num : " var2
# echo "$var1 + $var2 => $((var1+var2))"
# echo "$var1 - $var2 => $((var1-var2))"
# echo "$var1 * $var2 => $((var1*var2))"
# echo "$var1 / $var2 => $((var1/var2))"
# echo "$var1 % $var2 => $((var1%var2))"
# echo "$var1 ** $var2 => $((var1**var2))"
#* ------------------------------ >> ./bash.sh 5 5
# var1=$1
# var2=$2
# echo "$var1 + $var2 => $((var1 + var2))" # 10
# echo "$var1 - $var2 => $((var1 - var2))" # 0
# echo "$var1 * $var2 => $((var1 * var2))" # 25
# echo "$var1 / $var2 => $((var1/var2))" # 1
# echo "$var1 % $var2 => $((var1%var2))" # 0
# echo "$var1 ** $var2 => $((var1**var2))" # 3125
#* ------------------------------ >>
# var1=5
# var2=8
# echo $((++var1 + 2))
# echo $((var2++ + 2))
#* ------------------------------ >>
# var2=8
# echo $((var2++ + 2)) # => 10
# echo $var2 # => 9
#? ------------------------------------- 07 -------------------------------------
# Video 7 => https://www.youtube.com/watch?v=q6XNA8pS2ew&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=7

#                          >>>>>>>>> Arithmetic Operators Part 2 <<<<<<<<<<
#? ------------------------------------- 07 -------------------------------------
