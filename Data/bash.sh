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

# my_date=$(date)
# echo "Date : $my_date"

# readonly lists=$(date)
# echo $lists
# lists=$(pwd) #! ERROR مش هنعرف نغير قمته لان استخدمنا readonly فوق
# echo $lists

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
