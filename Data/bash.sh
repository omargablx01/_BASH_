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
# if [ $age -ge 21 ];then echo "True" ; fi
# age=25
# if [ $age -ge 21 ];then
#     echo "True"
# fi
#* ------------------------------ >>
# if [ $age -lt 21 ];then echo "True" ; fi
# age=25
# if [ $age -lt 21 ];then
#     echo "True"
# fi
#* ------------------------------ >>
# if [ $age -le 21 ];then echo "True" ; fi
# age=25
# if [ $age -le 21 ];then
#     echo "True"
# fi
#? ------------------------------------- 12 -------------------------------------
# Video 12 => https://www.youtube.com/watch?v=eleB6KHiatY&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=12

#                          >>>>>>>>> If Statements Part 2 <<<<<<<<<<
#? ------------------------------------- 12 -------------------------------------
# age=20
# if [ $age -lt 21 ];then echo "True" ; fi
#* ------------------------------ >>
# age=26
# if [ $age -lt 25 ] ; then echo "$age Less Than 25" ; else echo "$age Greater Than 25" ; fi
#* ------------------------------ >>
# if [ $age -lt 25 ] ; then
#     echo "$age Less Than 25"
# else
#     echo "$age Greater Than 25"
# fi
#? ------------------------------------- 13 -------------------------------------
# Video 13 => https://www.youtube.com/watch?v=4ix-A3PC1VA&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=13

#                          >>>>>>>>> If Statements Part 3 <<<<<<<<<<
#? ------------------------------------- 13 -------------------------------------
# age=15
# if [ $age -lt 25 ] ; then
#     echo "$age Less Than 25" 
# elif [ $age -eq 25 ] ; then
#     echo "$age Equal Than 25"
# else
#     echo "$age Greater Than 25"
# fi
#* ------------------------------ >>
# age=25
# if [ $age -lt 25 ] ; then echo "$age Less Than 25"
# elif [ $age -eq 25 ];then echo "$age Equal Than 25" # > 25 Equal Than 25
# else echo "$age Greater Than 25";fi
#? ------------------------------------- 14 -------------------------------------
# Video 14 => https://www.youtube.com/watch?v=8dB0e_jgoK4&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=14

#                          >>>>>>>>> If Statements Part 4 <<<<<<<<<<
#? ------------------------------------- 14 -------------------------------------
# read -p "Enter Name : " name
# read -p "Enter Age : " age
# if [ $age -ge 20 ] ;then
#     read -p "Enter Gpa : " gpa
#     if [ $gpa -ge 80 ] ;then
#         echo "Welcome $name Your GPA Greater Than Or Equal 80"
#     else 
#         echo "Bad GPA ${gpa} Less Than 80 Please Try Again.."
#     fi
# else 
#     echo "Sorry Your Age ${age} Less Than 20"
# fi
#* ------------------------------ > AND 1 >
# read -p "Enter Age : " age
# read -p "Enter Gpa : " gpa
# if [ $age -ge 20 ] && [ $gpa -ge 80 ] ;then
#     echo "Welcome!"
# else 
#     echo "Sorry Age And Gpa Err..!"
# fi
#* ------------------------------ > AND 2 >
# read -p "Enter Age : " age
# read -p "Enter Gpa : " gpa
# if [[ $age -ge 20 && $gpa -ge 80 ]] ;then
#     echo "Welcome!"
# else 
#     echo "Sorry Age Or Gpa Err..!"
# fi
#* ------------------------------ > AND 3 >
# read -p "Enter Age : " age
# read -p "Enter Gpa : " gpa
# if [[ $age -ge 20 ]] && [[ $gpa -ge 80 ]] ;then
#     echo "Welcome!"
# else 
#     echo "Sorry Age Or Gpa Err..!"
# fi
#* ------------------------------ > AND 4 >
# read -p "Enter Age : " age
# read -p "Enter Gpa : " gpa
# if [ $age -ge 20 -a $gpa -ge 80 ] ;then
#     echo "Welcome!"
# else 
#     echo "Sorry Age Or Gpa Err..!"
# fi
#* ------------------------------ > OR 1 >
# read -p "Enter Age : " age
# read -p "Enter Gpa : " gpa
# if [ $age -ge 20 ] || [ $gpa -ge 80 ] ;then
#     echo "Welcome!"
# else 
#     echo "Sorry Age And Gpa Err..!"
# fi
#* ------------------------------ > OR 2 >
# read -p "Enter Age : " age
# read -p "Enter Gpa : " gpa
# if [[ $age -ge 20 || $gpa -ge 80 ]] ;then
#     echo "Welcome!"
# else 
#     echo "Sorry Age Or Gpa Err..!"
# fi
#* ------------------------------ > OR 3 >
# read -p "Enter Age : " age
# read -p "Enter Gpa : " gpa
# if [[ $age -ge 20 ]] || [[ $gpa -ge 80 ]] ;then
#     echo "Welcome!"
# else 
#     echo "Sorry Age Or Gpa Err..!"
# fi
#* ------------------------------ > OR 4 >
# read -p "Enter Age : " age
# read -p "Enter Gpa : " gpa
# if [ $age -ge 20 -o $gpa -ge 80 ] ;then
#     echo "Welcome!"
# else 
#     echo "Sorry Age Or Gpa Err..!"
# fi
#* ------------------------------ > ! >
# read -p "Enter Age : " age
# read -p "Enter Gpa : " gpa
# if ! [[ $age -ge 20 ]] || [[ $gpa -ge 80 ]] ;then
#     echo "Welcome!"
# else 
#     echo "Sorry Age And Gpa Err..!"
# fi
#* ------------------------------ >>
# age=17
# gpa=77
# if [[ $age -ge 20 ]] || ! [[ $gpa -ge 80 ]] ;then
#     echo "Welcome" # Welcome
# else 
#     echo "Sorry"
# fi
#* ------------------------------ > -o ! ,, -a ! >
# age=17
# gpa=77
# if [ $age -ge 20 -o ! $gpa -ge 80 ] ;then
#     echo "Welcome" # Welcome
# else 
#     echo "Sorry"
# fi
#* ------------------------------ >>
# ممكن نستخدمها في اي مكان زي ما في المثال كدا 
# age=17
# gpa=77
# if ! [[ $age -ge 20 ]] || [[ $gpa -ge 80 ]] ;then
#     echo "Welcome" # Welcome
# else 
#     echo "Sorry"
# fi
#* ------------------------------ >>
# age=21
# gpa=77
# if ! [[ $age -ge 20 ]] || [[ $gpa -ge 80 ]] ;then
#     echo "Welcome"
# else 
#     echo "Sorry" # Sorry
# fi
#? ------------------------------------- 15 -------------------------------------
# Video 15 => https://www.youtube.com/watch?v=9mIJqg7aU7s&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=15

#                          >>>>>>>>> If Statements Part 5 <<<<<<<<<<
#? ------------------------------------- 15 -------------------------------------
# -d / -e / -s / -r / -w / -x
#* ------------------------------ >>
# path="ntfsv7"
# if [ -d $path ] ;then
#     echo "${path} Is directory. AND ${path} Exists"
# else
#     echo "${path} Not Directory. OR ${path} Not Exists"
# fi
#* ------------------------------ >>
# path="ntfsv6"
# if [ -e $path ] ;then
#     echo "$path Is Exists."
# else
#     echo "$path Is Not Exists."
# fi
#* ------------------------------ >>
# path="ntfsv6"
# if [ -s $path ] ;then
#     echo "$path Is Exists AND Not Empty."
# else
#     echo "$path Is Not Exists. OR Empty."
# fi
#* ------------------------------ >>
# path="ntfsv6"
# if [ -r $path ] ;then
#     echo "You Have Readable In file $path"
# else
#     echo "You Not Have Readable In file $path"
# fi
#* ------------------------------ >>
# path="ntfsv6"
# if [ -w $path ] ;then
#     echo "You Have Writable In file $path"
# else
#     echo "You Not Have Writable In file $path"
# fi
#* ------------------------------ >>
# path="notes.sh"
# if [ -x $path ] ;then
#     echo "You Have Executable In file $path"
# else
#     echo "You Not Have Executable In file $path"
# fi
#* ------------------------------ >>
# ls -la
# read -ep "Enter File Name : " filename
# if [ -x $filename ] ; then
#     echo "File $filename is Already Execute."
# elif [ -e $filename ] ; then
#     echo '#!/bin/bash' > $filename
#     echo "File Now Execute."
#     ls -la
# else 
#     echo "File Not Exist."
# fi
#* ------------------------------ >>
# ls -la
# read -ep "Enter File Name : " filename
# if [ -d $filename ] ; then
#     echo "$filename Is Here Already."
#     echo "Will Copy This File to New Path."
#     read -p "Enter New Path To copy ${filename} : " newfile
#     cp -r "${filename}" "${newfile}"
#     echo "Done! Current Directory Status:"
#     ls -la
# else 
#     echo "Dir Not Found.."
# fi
#* ------------------------------ >>
# ls -la
# read -ep "Enter Dir Name : " filename
# if [ -d $filename ] ; then
#     echo "${filename} is Exist Will Remove Right Now.."
#     rm -r $filename
#     echo "${filename} Removed.!"
#     ls -la
# else
#     echo "${filename} Not Found,,"
# fi
#* ------------------------------ >>
# ls -la
# read -ep "Enter File Or Dir Name : " filename
# if [ -e $filename ] ; then
#     echo "${filename} is Exist Will Remove Right Now.."
#     rm -r $filename
#     echo "${filename} Removed.!"
#     ls -la
# else
#     echo "${filename} Not Found,,"
# fi

# age=20
# gpa=80
# if [[ $age -ge 20 || $gpa -ge 80 ]] ;then
#     echo "Welcome"
# else 
#     echo "Sorry"
# fi
#? ------------------------------------- 16 -------------------------------------
# Video 16 => https://www.youtube.com/watch?v=rv4sXWeJa_4&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=16

#                          >>>>>>>>> Regular Expression part 1 <<<<<<<<<<
#? ------------------------------------- 16 -------------------------------------
#! Regular Expression هنا عامل زي ال python بالظبط مفيش اي اختلاف
#* \d => One digit > رقم واحد
#* \D => One non-digit > اي حاجه غير الارقام
#* \s => One whitespace > بيعلم علي المسطره " "
#* \S => One non-whitespace > بيعلم علي اي حاجه غير المسطره 
#* \w => One word character > بيعلم علي الاحرف والارقام
#* \W => One non-word character > بيعلم علي اي حاجه غير الاحرف والارقام
#* \d\s => كدا عايز رقم وراه مسطره
#* \d\d => كدا عايز رقمين واره بعض وكل ما تزود كل ما تزود رقم
# *	0 or more
#! مثال > \w* > صفر او اكثر
# +	1 or more
#! مثال > \w+ > حرف واحد او اكثر 
# ?	0 or 1
#! مثال > \d? > لو رقم موجود تمام لو مش موجود اكن مفيش حاجه
# {3}	Exactly 3
#! مثال > \w{3} > هيدور علي 3 حروف فقط
# {1,3}	Between 1 and 3
#! مثال > \w{1,3} > هيدور علي الي بين 1 و 3
# {2,}	2 or more
#! مثال > \w{1,} > هيدور علي 2 او اكثر 
# (,5}	Up to 5
#! مثال > \w{,5} > من ال 0 حتي ال 5 اخرك 5
# [0-9] > من 0 الي 9
# [^0-9] > اعرض كل حاجه معاده من 0 الي 9 
# [A-Z] > من A الي Z حروف كبيره
# [^A-Z] > اعرض كل حاجه معاده من A الي Z 
# [a-z] من a الي z حروف صغيره
# [^a-z] اعرض كل حاجه معاده من a الي z 
# [a-z0-9] > كدا الي بين a , z & 0 , 9
# [^a-z0-9] > كدا معاده الي بين a , z & 0 , 9
# \s[0-9] > اعرض الي قبله مسطره وبعده حرف واحد فقط من 0,9
# ?	0 or 1
#! مثال > \d? > لو رقم موجود تمام لو مش موجود اكن مفيش حاجه
# ^  Start of String
#! مثال > ^\d > لازم يبداء برقم 
# $  End of string
#! مثال > $\d > لازم ينتهي برقم 
# |	  Or
#? (\d-|\d\)|\d>) > بيشوف لو بيبداء برقم و علامه - او رقم وعلامه ) او رقم وعلامه > و
# \	  Escape Special Characters
# ()  Separate Groups
#? (\d{4}) > دا كدا يسمي مجموعه مع بعض 
# .  اي حاجه حروف etc..
#! (.+) > نستخدم ال .+ بعمني اي حاجه وكمان مش عارف العدد بتاعها
#? ------------------------------------- 17 -------------------------------------
# Video 17 => https://www.youtube.com/watch?v=Uknv-I7wCXY&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=17

#                          >>>>>>>>> Regular Expression part 2 <<<<<<<<<<
#? ------------------------------------- 17 -------------------------------------
# https://regexone.com/lesson/introduction_abcs
# solution > \w+  (OR)  abc 
# abcdefg
# abcde
# abc
#* ------------------------------ >>
# https://regexone.com/lesson/letters_and_digits
# solution > \d+  (OR)  \d{3}
# abc123xyz
# define "123"
# var g = 123;
#* ------------------------------ >>
# https://regexone.com/lesson/wildcards_dot
# solution > ...\.  (OR)  \.  (OR)  .*[^abc1]
# match : cat.
# match : 896.
# match : ?=+.
# Skip  : abc1
#? ------------------------------------- 18 -------------------------------------
# Video 18 => https://www.youtube.com/watch?v=cBpNghupEeY&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=18

#                          >>>>>>>>> Regular Expression part 3 <<<<<<<<<<
#? ------------------------------------- 18 -------------------------------------
# https://regexone.com/lesson/matching_characters
# solution > [^drp]an  (OR)  [cmf]an  (OR)  ^[cmf]an$
# match	: can	
# match	: man	
# match	: fan	
# skip	: dan
# skip	: ran
# skip	: pan
#* ------------------------------ >>
# https://regexone.com/lesson/excluding_characters
# solution > ^[hd]og$  (OR)  [^b]og$
# match	 : hog
# match	 : dog
# skip	 : bog 
#* ------------------------------ >>
# https://regexone.com/lesson/character_ranges
# solution > [^a-z][a-z]{2}$  (OR)  [A-Z][a-z]{2}$  (OR)  [A-Z]\w{2}$  (OR)  [A-Z]\w+$  (OR)  [A-C][a-p]{2}$
# solution > [A-C][n-p][a-c]  (OR)  
# match	 : Ana
# match	 : Bob
# match	 : Cpc
# skip	 : aax
# skip	 : bby
# skip	 : ccz
#? ------------------------------------- 19 -------------------------------------
# Video 19 => https://www.youtube.com/watch?v=tFB8AY-ShRE&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=19

#                          >>>>>>>>> Regular Expression part 4 <<<<<<<<<<
#? ------------------------------------- 19 -------------------------------------
# https://regexone.com/lesson/repeating_characters
# solution > waz{3,5}up  (OR)  
# match	:  wazzzzzup
# match	:  wazzzup
# skip	:  wazup
#* ------------------------------ >>
# https://regexone.com/lesson/kleene_operators
# solution > [a-c]{3,}  (OR)  a+b*c+  (OR)  a{2,4}b{0,4}c{1,2}
# match	:  aaaabcc
# match	:  aabbbbc
# match	:  aacc
# skip	:  a
#* ------------------------------ >>
# https://regexone.com/lesson/optional_characters
# solution > .+\? (OR) ^[1-4]{1,2}.+  (OR) [1-4]{1,2}\sfiles?\s\w+\? (OR) \d+ files? \w+\? (OR) \d+ files? found\?
# match	:  1 file found?
# match	:  2 files found?
# match	:  24 files found?
# skip	:  No files found
#? ------------------------------------- 20 -------------------------------------
# Video 20 => https://www.youtube.com/watch?v=I6NMdwAx2Ho&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=20

#                          >>>>>>>>> Regular Expression part 5 <<<<<<<<<<
#? ------------------------------------- 20 -------------------------------------
# https://regexone.com/lesson/whitespaces
# solution > \S\.\s+abc (OR) \d+.\s+[a-c]+ (OR) \d\.\s+abc (OR) 
# match	 : 1.   abc
# match	 : 2.	abc
# match	 : 3.           abc
# skip	 : 4.abc
#* ------------------------------ >>
# https://regexone.com/lesson/line_beginning_end
# solution > ^Mission: successful$ (OR) ^Mission: \w+ful$ (OR) ^[Ma-z:]+\s\w+$ (OR) 
# match	:  Mission: successful
# skip	:  Last Mission: unsuccessful
# skip	:  Next Mission: successful upon capture of target
#* ------------------------------ >>
# https://regexone.com/lesson/capturing_groups
# solution > ^(file\w+).+ (OR) ^(file\w+)\.pdf (OR) ^(file.+)\.pdf$
# capture	:  file_record_transcript.pdf	    file_record_transcript
# capture	:  file_07241999.pdf	            file_07241999
# skip	    :  testfile_fake.pdf.tmp
#* ------------------------------ >>
# https://regexone.com/lesson/nested_groups
# solution > ([A-Za-z]{1,3}\s(\d+)) (OR) (\w+ (\d+)) 
# capture	 : Jan 1987	   Jan 1987     1987
# capture	 : May 1969	   May 1969     1969
# capture	 : Aug 2011	   Aug 2011     2011
#* ------------------------------ >>
# https://regexone.com/lesson/more_groups
# solution > (.*)x(.*) (OR) (\d+)x(\d+) (OR) 
# capture	:  1280x720	    1280 720
# capture	:  1920x1600	1920 1600
# capture	:  1024x768     1024 768
#* ------------------------------ >>
# https://regexone.com/lesson/conditionals
# solution > [A-Z] love (cats|dogs)$ (OR) I love (cats|dogs)
# match	 : I love cats
# match	 : I love dogs
# skip	 : I love logs
# skip	 : I love cogs
#* ------------------------------ >> OUT OF Course
#! دي حاجات انا حليتها من نفسي
# https://regexone.com/problem/matching_decimal_numbers
# solution > ^-?\d+(,\d+)*(\.\d+(e\d+)?)?$
# match	 :  3.14529
# match	 :  -255.34
# match	 :  128
# match	 :  1.9e10
# match	 :  123,340.00
# skip	 :  720p
#* ------------------------------ >> OUT OF Course
# https://regexone.com/problem/matching_phone_numbers
# solution > 1? ?\(?(\d{3}?)\)?-?\s?\d+-?\s?\d+ (OR) 1?[\s-]?\(?(\d{3})\)?[\s-]?\d{3}[\s-]?\d{4}
# capture	 :    415-555-1234	    415
# capture	 :    650-555-2345	    650
# capture	 :    (416)555-3456	    416
# capture	 :    202 555 4567	    202
# capture	 :    4035555678	    403
# capture	 :    1 416 555 9292    416
#* ------------------------------ >> OUT OF Course
# https://regexone.com/problem/matching_emails
# solution > (\w+\.?\w+)(@|\+)\w+(\.|@)?\w+(\.)?com$ (OR) ^([\w\.]*)(@|\+)\w+(\.|@)?\w+(\.)?com$
# capture	 :  tom@hogwarts.com	                    tom
# capture	 :  tom.riddle@hogwarts.com	                tom.riddle
# capture	 :  tom.riddle+regexone@hogwarts.com	    tom.riddle
# capture	 :  tom@hogwarts.eu.com	                    tom
# capture	 :  potter@hogwarts.com	                    potter
# capture	 :  harry@hogwarts.com	                    harry
# capture	 :  hermione+regexone@hogwarts.com          hermione
#* ------------------------------ >> OUT OF Course
# https://regexone.com/problem/matching_html
# solution > <([a-z]{1,3})>?\s?.+ (OR) <(\w+).+
# capture	  :  <a>This is a link</a>	                    a
# capture	  :  <a href='https://regexone.com'>Link</a>	a
# capture	  :  <div class='test_style'>Test</div>	        div
# capture	  :  <div>Hello <span>world</span></div>        div
#* ------------------------------ >> OUT OF Course
# https://regexone.com/problem/matching_filenames
# solution > (\w+)?(img\w+)?\.?(gif|png|jpg)$ (OR) (\w+)?\.(gif|png|jpg)$
# skip	       :  .bash_profile
# skip	       :  workspace.doc
# capture	   :  img0912.jpg	                 img0912 jpg
# capture	   :  updated_img0912.png	         updated_img0912 png
# skip	       :  documentation.html
# capture	   :  favicon.gif	                 favicon gif
# skip	       :  img0912.jpg.tmp
# skip	       :  access.lock
#* ------------------------------ >> OUT OF Course
# https://regexone.com/problem/trimming_whitespace
# solution > (\s+)?(.+)$ (OR) ^\s*(.*)\s*$
# capture	:			The quick brown fox...	    The quick brown fox...
# capture	:   jumps over the lazy dog.	        jumps over the lazy dog.
#* ------------------------------ >> OUT OF Course
# https://regexone.com/problem/extracting_log_data
# solution > (\w+)\((\w+\.\w+):(\d+)\) (OR) (\w+)\(([\w+\.]+):(\d+)\)
# skip	    :  W/dalvikvm( 1553): threadid=1: uncaught exception
# skip	    :  E/( 1553): FATAL EXCEPTION: main
# skip	    :  E/( 1553): java.lang.StringIndexOutOfBoundsException
# capture	:  E/( 1553):   at widget.List.makeView(ListView.java:1727) 	makeView    ListView.java    1727
# capture	:  E/( 1553):   at widget.List.fillDown(ListView.java:652)	    fillDown    ListView.java     652
# capture	:  E/( 1553):   at widget.List.fillFrom(ListView.java:709)	    fillFrom    ListView.java     709
#* ------------------------------ >> OUT OF Course
# https://regexone.com/problem/extracting_url_data
# solution > (\w+)://(\w+-?\w+\.?com)?(\w+)?:?(\d+)? (OR) (\w+)://([\w\-\.]+)(:(\d+))?
# capture	:  ftp://file_server.com:21/top_secret/life_changing_plans.pdf	   ftp     file_server.com   21
# capture	:  https://regexone.com/lesson/introduction#section	               https   regexone.com
# capture	:  file://localhost:4040/zip_file	                               file    localhost         4040
# capture	:  https://s3cur3-server.com:9999/	                               https   s3cur3-server.com 9999
# capture	:  market://search/angry%20birds	                               market  search
#? ------------------------------------- 21 -------------------------------------
# Video 21 => https://www.youtube.com/watch?v=PJN3HzaoZ4A&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=21

#                          >>>>>>>>> Strings Comparison part 1 <<<<<<<<<<
#? ------------------------------------- 21 -------------------------------------
# var1="Linux"
# var2="Linux"
# # if [ "$var1" = "$var2" ]
# if [[ "$var1" == "$var2" ]]
# then
#     echo "${var1} == ${var2}"
# else 
#     echo "${var1} != ${var2}"
# fi
#* ------------------------------ >>
# var1='GUN\Linux is an OS MY PC'
# if [[ $var1 == *"Linux"* ]]
# then
#     echo "Linux in ${var1}"
# else 
#     echo "Fasle"
# fi
#* ------------------------------ >>
# var1='GUN\Linux is an OS MY PC'
# if [[ $var1 =~ .*Linux.* ]]
# then
#     echo "Linux in ${var1}"
# else 
#     echo "Fasle"
# fi
#* ------------------------------ >>
# var1=''
# if [[ -z $var1 ]]
# then
#     echo "${var1} Is Empty."
# else 
#     echo "${var1} Is Not Empty."
# fi
#* ------------------------------ >>
# var1='Not Empty String'
# if [[ -n $var1 ]]
# then
#     echo "${var1} Is Not Empty."
# else 
#     echo "${var1} Is Empty."
# fi
#? ------------------------------------- 22 -------------------------------------
# Video 22 => https://www.youtube.com/watch?v=zz4VZNaFbfA&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=22

#                          >>>>>>>>> Strings Comparison part 2 <<<<<<<<<<
#? ------------------------------------- 22 -------------------------------------
# str='abc'
# patt1='a*'
# patt2='x*'
# if [[ $str != $patt2 ]] ;then
#     echo "The String '${str}' Not Equal '${patt2}'"
# else
#     echo "The String ${str} Equal ${patt2}"
# fi
#* ------------------------------ >>
# var1="Linux"
# var2="Linuxd"

# if [[ $var1 > $var2 ]] ;then
#     echo "${var1} is greater Than $var2"
# elif [[ $var1 < $var2 ]] ;then
#     echo "${var1} is Less Than $var2"
# else 
#     echo "${var1} & ${var2} Equal"
# fi
#? ------------------------------------- 23 -------------------------------------
# Video 23 => https://www.youtube.com/watch?v=-dHhiUWttD8&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=23

#                          >>>>>>>>> Case Statements part 1 <<<<<<<<<<
#? ------------------------------------- 23 -------------------------------------

read -p "Enter the name of a country: " COUNTRY

echo -n "The official language of $COUNTRY is "

case $COUNTRY in

  Lithuania)
    echo "Lithuanian"
    ;;

  Romania | Moldova)
    echo "Romanian"
    ;;

  Italy | "San Marino" | Switzerland | "Vatican City")
    echo "Italian"
    ;;

  *)
    echo "unknown"
    ;;
esac