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
# echo $((5 + 3))
# expr 5 + 3
#* ------------------------------ >>
# var1=6
# var2=3
# echo "$var1 + $var2 = `expr $var1 + $var2`"
# echo "$var1 - $var2 = `expr $var1 - $var2`"
# echo "$var1 * $var2 = `expr $var1 \* $var2`"
# echo "$var1 / $var2 = `expr $var1 / $var2`"
# echo "$var1 % $var2 = `expr $var1 % $var2`"
# echo "$var1 ** $var2 = $((var1 ** var2))"
#* ------------------------------ >length>
# varS="Hello"
# echo `expr length $varS` # => 5
# echo $(expr length ${varS}) # => 5
# echo ${#varS} # => 5
#* ------------------------------
# varS="Hello Man"
# echo `expr length $varS` # expr: syntax error: unexpected argument ‘Bash’
# echo $(expr length ${varS}) # expr: syntax error: unexpected argument ‘Bash’
# echo ${#varS} # => 9
# echo `expr length "$varS"` # 9
# echo $(expr length "${varS}") # 9
#* ------------------------------ >index>
# varS="Hello Man"
# echo `expr index $varS M` # expr: syntax error: unexpected argument ‘M’
# echo `expr index "$varS" M` # 7
#* ------------------------------ >substr>
# varS="HelloMan"
# echo `expr substr $varS 1 7` # HelloMa
#* ------------------------------ >>
# varS="HelloMan"
# echo "${varS:0:7}"  # HelloMa
#* ------------------------------ >>
# varS="HelloMan"
# echo "$varS" | cut -c 1-7  # HelloMa
#* ------------------------------ >match>
# var="Welcome2024"
# expr match "$var" "Welcome.*"
#? ------------------------------------- 08 -------------------------------------
# Video 8 => https://www.youtube.com/watch?v=_hlWUfYMW4Q&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=8

#                          >>>>>>>>> Arithmetic Operators Part 3 <<<<<<<<<<
#? ------------------------------------- 08 -------------------------------------
#* ------------------------------ > | , OR >
# expr 0 \| 2
# expr 0 "|" 3
# echo $((0 | 5))
#* ------------------------------ > & , AND >

#* ------------------------------ >>
# var1=5
# var2=10
# echo "$var1 OR $var2  :   `expr $var1 "|" $var2`"
# echo "$var1 AND $var2 :   `expr $var1 "&" $var2`"
# echo "$var1 < $var2   :   `expr $var1 "<" $var2`"
# echo "$var1 <= $var2  :   `expr $var1 "<=" $var2`"
# echo "$var1 = $var2   :   `expr $var1 "=" $var2`"
# echo "$var1 != $var2  :   `expr $var1 "!=" $var2`"
# echo "$var1 >= $var2  :   `expr $var1 ">=" $var2`"
# echo "$var1 > $var2   :   `expr $var1 ">" $var2`"
# OR 
# echo "$var1 OR $var2  :   `expr $var1 \| $var2`"
# echo "$var1 AND $var2 :   `expr $var1 \& $var2`"
# echo "$var1 < $var2   :   `expr $var1 \< $var2`"
# echo "$var1 <= $var2  :   `expr $var1 \<= $var2`"
# echo "$var1 = $var2   :   `expr $var1 \= $var2`"
# echo "$var1 != $var2  :   `expr $var1 \!= $var2`"
# echo "$var1 >= $var2  :   `expr $var1 \>= $var2`"
# echo "$var1 > $var2   :   `expr $var1 \> $var2`"
#? ------------------------------------- 09 -------------------------------------
# Video 9 => https://www.youtube.com/watch?v=WMLN0LxS2qM&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=9

#                          >>>>>>>>> Arithmetic Operators Part 4 <<<<<<<<<<
#? ------------------------------------- 09 -------------------------------------
# echo 5.2 + 10.7 | bc # bc: command not found

# echo "print(5.2 + 10.8)" | python3
# echo "5.2 10.5" | awk '{print $1 + $2}'
#? ------------------------------------- 10 -------------------------------------
# Video 10 => https://www.youtube.com/watch?v=8FG6pfHOB4A&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=10

#                          >>>>>>>>> Arithmetic Operators Part 5 <<<<<<<<<<
#? ------------------------------------- 10 -------------------------------------
# let x=5+2
# echo $x  # 7
#* ------------------------------ >>
# let arg1=5 arg2=6 arg3=7 arg4=8
# echo $arg1
# echo $arg2
# echo $arg3
# echo $arg4
#* ------------------------------ >>
# var1=55
# let var1++
# echo $var1
# let --var1
# echo $var1
#? ------------------------------------- 11 -------------------------------------
# Video 11 => https://www.youtube.com/watch?v=gNSOGl-Mjxk&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=11

#                          >>>>>>>>> If Statements Part 1 <<<<<<<<<<
#? ------------------------------------- 11 -------------------------------------\
# if [ $age -eq 21 ];then echo "True" ; fi
# age=21
# if [ $age -eq 21 ];then
#     echo "Yes $age Equal 21"
# fi
#* ------------------------------ >>
# if [ $age -ne 21 ];then echo "True" ; fi
# age=21
# if [ $age -ne 21 ];then
#     echo "Yes $age Not Equal 21"
# fi
#* ------------------------------ >>
# if [ $age -gt 21 ];then echo "True" ; fi
# age=25
# if [ $age -gt 21 ];then
#     echo "True"
# fi
#* ------------------------------ >>
# if [ $age -lt 21 ];then echo "True" ; fi
# age=25
# if [ $age -lt 21 ];then
#     echo "True"
# fi
#? ------------------------------------- 12 -------------------------------------
# Video 12 => https://www.youtube.com/watch?v=eleB6KHiatY&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=12

#                          >>>>>>>>> If Statements Part 2 <<<<<<<<<<
#? ------------------------------------- 12 -------------------------------------
# age=20
# if [ $age -lt 21 ];then echo "True" ; fi
#* ------------------------------ >>
if [ $0 -a "./bash.sh" ] ; then 
    echo "Found File $0"
else
    echo "Not Found $0"
fi