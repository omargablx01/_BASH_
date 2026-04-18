#? --------------------------------------------- بسم الله الرحمن الرحيم ---------------------------------------------
#* --------------------------------------------- Start Again (( 15/4/2026 )) **Cryptic_x01** ---------------------------------------------
# ? ------------------------------------- 01 -------------------------------------
# لعملم ملف bash script يكون بالخطوات التاليه 
# 1 ) نفتح ال terminal ونكتب $ touch namefile.sh | $ nano namefile.sh
# 2 ) علشان نظام التشغيل يفهم ان دا ملف bash script لازم نكتب في اول سطر السطر التالي
# >>>>>>>>>>>>>> #!/bin/bash <<<<<<<<<<<<<<<<<
# 3 ) بعد كتابه الاوامر الي عايز تشغلها من خلال الملف دا لازم اهم خطوه بقي وهي كالتالي
# -1- لتشغيل الملف بشكل طبيعي نكتب ( $ bash namefile.sh ) اول طريقة
# t~ -----------------
# -2- تغير صلاحيات الملف من خلال كتابه هذا الامر في terminal ( $ chmod +x namefile.sh )
# -2.1- بعد كدا علشان نشغل الملف بشكل طبيعي بنكتب الامر دا في ال termianl ( $ ./namefile.sh )
#* ----------------- Command in file bash
mkdir filename # بالشكل دا كدا هنخلي ملف الاسكربت لمه نشغله يعمل ملف جديد
ls -la # كدا هنخلي لمه يتشغل يعمل عرض للملفات الي موجوده وكذا 
# ? ------------------------------------- 02 -------------------------------------
echo -n "Hello1" # علشان اعرض السطرين جنب بعض نستخدم -n  >> Hello1Hello2 هتبقي كدا
echo "Hello2"

echo -e "Hello3\nKKkk" # علشان اقدر استخدم ال \n \\ \t \b \v لازم نستخدم ال -e 
echo "Hello4"

namevar="Welcome" # علشان نعمل متغير ونخزن في قيمة بيكون بالشكل دا بالظبط
echo "$namevar Cryptic_x01" # وللطباعة نستخدم echo ثم علامات التنصيص 
# وعلشان نستدعي ال المتغير لازم نستخدم علامه $ قبل اسمه بهذا الشكل التقليدي

echo "${namevar}Cryptic_x01" # علشان افرق بين المتغير و الكلام الي جنبه بحط اسم المتغير بداخل ${namevar} بهذا الشكل
# بمعني ان المتغير بتاعي هو ال داخل ال {} فقط
#? ------------------------------------- 03 -------------------------------------
# Video 3 => https://www.youtube.com/watch?v=GbY3BzS1GMI&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=3
#? ------------------------------------- 03 -------------------------------------
my_date=date # يمكننا عمل متغير ونخلي يعرض ال result بتاع الامر دا من خلال اسم المتغير 
$my_date # كدا هنشغل المتغير الي هو يعتبر امر ال date

my_date=$(date) # بالشكل دا كدا احنا عملنا تخزين لل output بتاع ال date في الوقت الحالي
echo "Date : $my_date" # وطبعنا بالشكل الطبيعي بتاع echo 

readonly lists=$(ls) # نستخدم امر readonly علشان ميقدرش حد يغير قيمه المتغير دا بعد كدا 
echo $lists

lists=$(pwd) #! ERROR مش هنعرف نغير قمته لان استخدمنا readonly فوق
echo $lists #! ERROR ( lists: readonly variable )

# شرح المتغيرات 

# 1 ) $0 >> هي عباره عن اسم ملف الاسكربت ./bash.sh
echo "File Name : $0"

# 2 ) $1 - N >> هو العنصر الي جنب اسم ملف الاسكربت زي ما وضحنا تحت كدا بالظبط 
#     $0      $1       $2       $3      >$etc...
# ./bash.sh  cryptic  hacking  redteam
echo "File Name : $0 ,, Arg One : $1 ,, Arg Two : $2"

# 3 ) $#  >> تستخدم لطباعه عدد ال arg الي جنب اسم الاسكربت
# terminal > $ ./bash.sh arg1 arg2 arg3
echo $# # دي كدا هتطبع عدد ال arg الي جنب اسم الاسكربت

# 4 ) $@ >> تستخدم لطابعة جميع العناصر الي جنب اسم الاسكربت  
# ( "$1" "$2" "$3" ... ) النوع دا بيخلي كل عنصر من العناصر لوحده
echo $@

# 5 ) $* >>  تستخدم لطابعة جميع العناصر الي جنب اسم الاسكربت ولكن
# ( "$1 $2 $3 ... " ) بيخلي كل العناصر كلمه واحده
echo $*

# 6 ) $? >> بتطبع 0 لو الكود تمام غير كدا بيطبع 127 يبقي الكود او اخر امر في مشكله
echo $?

# 7 ) $$ >> بيطبع رقم العمليه الي هو  Process ID (PID) in Shell
echo $$

# 8 ) $! >> PID لخط أنابيب الخلفية الذي تم تنفيذه مؤخرًا
echo $!

# 9 ) $_ >> لطباعه اخر حاجه حصلت في الامر او الاسكربت
echo $_

# 10 ) $- >> تم تعيين الخيارات الحالية لل shell
echo $-

#? ------------------------------------- 04 -------------------------------------
# Video 4 => https://www.youtube.com/watch?v=JdR-8lLiwyo&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=4
#? ------------------------------------- 04 -------------------------------------
# "" => Double Quotes >> بتفهم المتغير الي جوها 
var="Double Quotes"
echo "Hello $var" # output > Hello Double Quotes
#* ------------------------------
# \$ >> علشان ميفهمش ان دا متغير لازم نستخدم ال \ قبل ال $ علشان يبفهم ان دا مش متغير
# دا بالنسبة لل ""
echo "$0.00" # output > ./bash.sh
echo "\$5.00" # output > $5.00
#* ------------------------------
# '' => Single Quotes >> مش بتفهم المتغير الي جوها بتعتبر كله نص واحد
var2="Single Quotes"
echo 'Hello $var2' # output > Hello $var2
#* ------------------------------
# امال لو بنستخدم '' الامر بيختلف بيفهم ان كل الي مكتوب جوها نص واحد
echo '$5.00' # output > $5.00
#* ------------------------------
# `` => Backticks => تستخدم لتطبيق امر معين وهذه طريقه قديمه
echo "Date : `date`" # دي الطريقه القديمه => Date : Thu, Apr 16, 2026 11:10:19 am
#* ------------------------------
echo "Date : $(date)" # دي الطريقه الجديده => Date : Thu, Apr 16, 2026 11:10:19 am
#? ------------------------------------- 05 -------------------------------------
# Video 5 => https://www.youtube.com/watch?v=ex60OTFAfm0&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=5
#? ------------------------------------- 05 -------------------------------------
# -p: لعرض السؤال (Prompt).
# -s: للأمان (يخفي ما تكتبه).
# -t: يحدد عدد ثوانٍ للانتظار، إذا لم يتم الإدخال ينتهي الأمر تلقائياً.
# -d: (Delimiter) لإنهاء الإدخال عند حرف معين بدلاً من زر Enter.
# -N: (Number exact) مثل -n ولكن لا يتوقف إلا بعد استلام العدد المطلوب "بالضبط".
# -n: (Number) لإنهاء الإدخال تلقائياً بعد كتابة عدد محدد من الحروف
# -r: يحمي الـ \ (مثل مسارات ويندوز).
# -e: يجعلك "ملك" السطر (تحكم بالأسهم و Tab).
# -u: (Unit/FD) للقراءة من "ملف" أو Descriptor معين بدلاً من لوحة المفاتيح.
# -i: (Initial) لوضع نص افتراضي (Default) داخل الخانة (يجب استخدامه مع -e).
# -a: (Array) لتخزين الكلمات المدخلة داخل "مصفوفة" (Array) بدلاً من متغير واحد.
#* ------------------------------
# read >> عباره عن input بتاخده من المستخدم
# دي الطريقه التقليدية ل اخذ ال input من المستخدم
echo -n "Enter Name : "
read name
echo "Welcome $name"
#* ------------------------------
# read -p >> يعني تقدر تكتب رساله جنب ال input بدل استخدام echo الي فوق
read -p "Enter Name : " name2
echo "Welcome $name2"
#* ------------------------------
# read -s >> تستخدم لاخفاء ال input
read -sp "Enter Passwd : " passwd
echo "Welcome $passwd"
#* ------------------------------
# echo -e "\n etc.. ">> في مشكله هتقابلنا هنا وهي لمه يجي يطبع رساله ال echo هتطبع جنب ال input الي حطتيه 
# علشان نتفاده المشكله دي نعمل التالي
read -sp "Enter Passwd : " passwd
echo -e "\nWelcome $passwd"
#* ------------------------------
# او باستخدام ال printf
read -sp "Enter Passwd : " passwd
printf "\nWelcome %s" "$passwd"
#* ------------------------------
# read -t 4 >> تستخدم بهذا الشكل لتحديد وقت وضع ال Input
# يعني لو ال 4 ثواني خلصوا كدا خلاص مش هيستقبل input منك
read -t 4 -sp ": " name
echo -e "\n ${name}"
#* ------------------------------
# read -d "." >> تستخدم لتحديد كلمه معينه اول ما تكتبها في ال input هيقف ويتسجل علي كدا 
read -d "." name
echo -e "\nWelcome ${name}"
#* ------------------------------
# لعرض رساله مع ال delim بيكون بهذا الشكل
read -d "." -p "Enter Name (end with .): " name
echo -e "\nWelcome ${name}"
#* ------------------------------
# read -N 9 >> تستخدم لوضع حد لحروف الادخال يعني لازم 9 حروف كدا مينفعش اقل او اكثر
read -N 9 -p "Enter Name : " name
echo -e "\nWelcome ${name}"
#* ------------------------------
# read -n 9 >> تستقبل من 9 و اقل يعني رقم 9 دا حد اقصي للادخال
# يستقبل من 1 الي 9
read -n 9 -p "Enter Name : " name
echo -e "\nWelcome ${name}"
#* ------------------------------
# read -e >> بيخليك تقدر تمسح وتعدل الكلام الخظاء الي في ال input وتقدر تتحرك يميناً ويساراً داخل النص
# مكن للمستخدم الضغط على زر Tab لتكملة اسم الملف أو المجلد تلقائياً، تماماً كما نفعل في Terminal
# تسمح للمستخدم بالضغط على السهم لأعلى لاسترجاع آخر نص قام بكتابته في نفس جلسة
read -e -p "Enter Name : " name
echo -e "\nWelcome ${name}"
#* ------------------------------
# read -r >>  لقراءة النص "خام" كما هو وتجاهل معاني الـ \
read -r -p "Enter Name: " name
# لو المستخدم كتب: Hello \n World
echo "Welcome ${name}"
#* ------------------------------
# read -i >> لوضع قيمه افتراضيه مثل كلمه admin ولازم نستخدم معاها -e
read -re -p "Enter Username: " -i "admin" username
echo "The username is: $username"
#* ------------------------------
# read -a >> كدا الادخال بتاعك اصبح array يعني اصبح list in python
read -p "Enter your favorite fruits (separated by space): " -a fruits
echo "The first fruit is: ${fruits[0]}"
echo "ALl fruit: ${fruits[@]}"
echo "Total fruits entered: ${#fruits[@]}"
#* ------------------------------
# IFS="," >> دي معنها ان افصل بين الادخالات من خلال الفصله لان الافتراضي هو " " المسطره
# تغيير الـ IFS (اختصار لـ Internal Field Separator) هو الطريقة التي تخبر بها Bash: "لا تقسم الكلام عند المسافة، بل قسمه عند هذه العلامة".
IFS="," read -p "Enter items (split by comma): " -a my_items
echo "First item: ${my_items[0]}"
echo "Second item: ${my_items[1]}"
#? ------------------------------------- 06 -------------------------------------
# Video 6 => https://www.youtube.com/watch?v=pBrQl6muY4g&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=6

#                          >>>>>>>>> Arithmetic Operators Part 1 <<<<<<<<<<
#? ------------------------------------- 06 -------------------------------------
# $((5+4)) >> هي طريقه لعمل اي عملية حسابية
result=$((5+4))
echo $result
#* ------------------------------
read -p "Enter First Num : " var1
read -p "Enter Second Num : " var2
echo "$var1 + $var2 => $((var1+var2))"
echo "$var1 - $var2 => $((var1-var2))"
echo "$var1 * $var2 => $((var1*var2))"
echo "$var1 / $var2 => $((var1/var2))"
echo "$var1 % $var2 => $((var1%var2))"
echo "$var1 ** $var2 => $((var1**var2))"
#* ------------------------------ >> ./bash.sh 5 5
var1=$1
var2=$2
echo "$var1 + $var2 => $((var1+var2))" # 10
echo "$var1 - $var2 => $((var1-var2))" # 0
echo "$var1 * $var2 => $((var1*var2))" # 25
echo "$var1 / $var2 => $((var1/var2))" # 1
echo "$var1 % $var2 => $((var1%var2))" # 0
echo "$var1 ** $var2 => $((var1**var2))" # 3125
#* ------------------------------
# $((++var1 + 2)) >> بالشكل دا كدا هيضف 1 قبل الجمع ثم يبداء يجمع
# ال ++ الي في الاول دي معنها ضيف واحد علي قيمه المتغير دا قبل الجمع
# 5 + 1 = 6 ,, 6 + 2 = 8
var1=5
echo $((++var1 + 2))
#* ------------------------------
# $((var2++ + 2)) >> دي معنها ضيف 1 بس بعد عمليه الجمع او ضيف واحد بس بعد كدا مش دلوقتي
# 8 + 2 = 10 ,, 10 + 1 = 11
var2=8
echo $((var2++ + 2))
echo $var2
#? ------------------------------------- 07 -------------------------------------
# Video 7 => https://www.youtube.com/watch?v=q6XNA8pS2ew&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=7

#                          >>>>>>>>> Arithmetic Operators Part 2 <<<<<<<<<<
#? ------------------------------------- 07 -------------------------------------
# expr 5 + 3 >> نستخمد هذا الامر لنه هو الووحيد الي بيتعامل مع العمليات الحسابية
# expr 5 + 3 == echo $((5 + 3)) دي هي هي نفس دي بالظبط
expr 5 + 3 # => 8
echo $((5 + 3)) # => 8
#* ------------------------------
# استخدمنا $((var1 ** var2)) بدل `expr $var1 ** $var2` لان فيها مشكله
var1=6
var2=3
echo "$var1 + $var2 = `expr $var1 + $var2`"
echo "$var1 - $var2 = `expr $var1 - $var2`"
echo "$var1 * $var2 = `expr $var1 \* $var2`"
echo "$var1 / $var2 = `expr $var1 / $var2`"
echo "$var1 % $var2 = `expr $var1 % $var2`"
echo "$var1 ** $var2 = $((var1 ** var2))"
#* ------------------------------
# ${#varS} == $(expr length ${varS}) == `expr length $varS` تستخدم هذه الطريقة لطباعة عدد عناصر المتغير
varS="Hello"
echo `expr length $varS` # => 5
echo $(expr length ${varS}) # => 5
echo ${#varS} # => 5
#* ------------------------------ >length>
# ولكن في حاجه مهمه ان لو كتابنا اي كلمه ثانيه جنب Hello هيحصل error عند او اثنين 
# ${#varS} ودي بس الي هتشتغل
# ${#varS} دي اقوي واسرع لانها bultin
varS="Hello Man"
echo `expr length $varS` # expr: syntax error: unexpected argument ‘Bash’
echo $(expr length ${varS}) # expr: syntax error: unexpected argument ‘Bash’
echo ${#varS} # => 9
# حل المشكله دي انك تحط المتغير بداخل "$varS" علشان يفهم انهم عنصر واحد مش كل واحده لوحدها
echo `expr length "$varS"` # 9
# حل المشكله دي انك تحط المتغير بداخل "${varS}" 
echo $(expr length "${varS}") # 9
#* ------------------------------ >index>
# index >> تستخدم للبحث عن حرف وبيرجعلك برقم ال index بتاعه
varS="Hello Man"
echo `expr index $varS M` # expr: syntax error: unexpected argument ‘M’
# نفس الفكره برضو هنا لازم نحط المتغير بداخل ال Double Quotes "$varname"
echo `expr index "$varS" M` # 7
#* ------------------------------ >substr>
# substr >> تستخدم لقص جزاء معين يعني مثلا من اول ال index 1 قص 7 حروف 
varS="HelloMan"
echo `expr substr $varS 1 7` # HelloMa
#* ------------------------------ >substr>
# ${varS:0:7} ==>> `expr substr $varS 1 7` الطريقة دي اسهل من الطريقه الاوله بتاعت ال expr
varS="HelloMan"
# يبدأ من 0 ويأخذ 7 حروف
echo "${varS:0:7}"  # النتيجة: HelloMa
#* ------------------------------ >match>
# match >> تستخدم للبحث عن كلمه كامله ولازم تكون هي بدايه البحث يعني مش في نص كلمه لا لازم تكون هي البداية
# هنا استخدمنا .* يعني كلمه Welcome واي حاجه بعدها 
var="Welcome2024"
# هل النص يبدأ بكلمة Welcome متبوعة بأي حروف؟
expr match "$var" "Welcome.*"
# النتيجة: 11 (لأن الكلمة بالكامل 11 حرف وتطابقت مع النمط)
#? ------------------------------------- 08 -------------------------------------
# Video 8 => https://www.youtube.com/watch?v=_hlWUfYMW4Q&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=8

#                          >>>>>>>>> Arithmetic Operators Part 3 <<<<<<<<<<
#? ------------------------------------- 08 -------------------------------------
# | = OR >> تستخدم بمعني او العنصر الاول او الثاني
# يطبع ARG1 إذا كان موجوداً (ليس null) وليس صفراً، وإلا يطبع ARG2.
# وهذه الثلاث اشكال لنفس الفكره وافضل واحده echo $((0 | 5)) وينطبق نفس الموضوع علي الباقي
#!                             وبعدل كل دا في طريقه احدث واسرع وافضل 
#* ------------------------------ > | , OR >
expr 0 \| 2
expr 0 "|" 3
echo $((0 | 5))
#* ------------------------------ > & , AND >
# expr 0 \& 2 >> ARG1 if neither argument is null or 0, otherwise 0
# إذا كان الطرف الأول (0) لا يساوي صفراً، والطرف الثاني (2) لا يساوي صفراً، فإنه يعيد قيمة الطرف الأول.
# إذا كان أحد الطرفين (أو كلاهما) يساوي 0، فإنه يعيد 0
expr 0 \& 2
echo $((0 & 5))
#* ------------------------------ > ( less than , ARG1 < ARG2 ) >
# < >> هل الرقم الاول اصغر من الرقم الثاني
# بيرجعلك قيمه 1 لو العمليه تمت بنجاح , بيرجع ب 0 لو فشلت
expr 0 \< 5
echo $((0 < 5))
#* ------------------------------ > ( less than or equal , ARG1 <= ARG2 ) >
# < >> هل الرقم الاول اصغر او يساوي الرقم الثاني
# بيرجعلك قيمه 1 لو العمليه تمت بنجاح , بيرجع ب 0 لو فشلت
expr 0 \<= 5
echo $((0 <= 5))
#* ------------------------------ > ( equal , ARG1 = ARG2 ) >
# < >> هل الرقم الاول يساوي الرقم الثاني
# بيرجعلك قيمه 1 لو العمليه تمت بنجاح , بيرجع ب 0 لو فشلت
expr 0 \= 5
echo $((0 = 5))
#* ------------------------------ > ( unequal , ARG1 != ARG2 ) >
# < >> هل الرقم الاول لا يساوي الرقم الثاني
# بيرجعلك قيمه 1 لو العمليه تمت بنجاح , بيرجع ب 0 لو فشلت
expr 0 \!= 5
echo $((0 != 5))
#* ------------------------------ > ( greater than or equal , ARG1 >= ARG2 ) >
# < >> هل الرقم الاول اكبر او يساوي الرقم الثاني
# بيرجعلك قيمه 1 لو العمليه تمت بنجاح , بيرجع ب 0 لو فشلت
expr 0 \>= 5
echo $((0 >= 5))
#* ------------------------------ > ( greater than , ARG1 > ARG2 ) >
# < >> هل الرقم الاول اكبر من الرقم الثاني
# بيرجعلك قيمه 1 لو العمليه تمت بنجاح , بيرجع ب 0 لو فشلت
expr 0 \> 5
echo $((0 > 5))
#* ------------------------------ >>
var1=5
var2=10
echo "$var1 OR $var2  :   `expr $var1 "|" $var2`"
echo "$var1 AND $var2 :   `expr $var1 "&" $var2`"
echo "$var1 < $var2   :   `expr $var1 "<" $var2`"
echo "$var1 <= $var2  :   `expr $var1 "<=" $var2`"
echo "$var1 = $var2   :   `expr $var1 "=" $var2`"
echo "$var1 != $var2  :   `expr $var1 "!=" $var2`"
echo "$var1 >= $var2  :   `expr $var1 ">=" $var2`"
echo "$var1 > $var2   :   `expr $var1 ">" $var2`"
# OR 
echo "$var1 OR $var2  :   `expr $var1 \| $var2`"
echo "$var1 AND $var2 :   `expr $var1 \& $var2`"
echo "$var1 < $var2   :   `expr $var1 \< $var2`"
echo "$var1 <= $var2  :   `expr $var1 \<= $var2`"
echo "$var1 = $var2   :   `expr $var1 \= $var2`"
echo "$var1 != $var2  :   `expr $var1 \!= $var2`"
echo "$var1 >= $var2  :   `expr $var1 \>= $var2`"
echo "$var1 > $var2   :   `expr $var1 \> $var2`"
#? ------------------------------------- 09 -------------------------------------
# Video 9 => https://www.youtube.com/watch?v=WMLN0LxS2qM&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=9

#                          >>>>>>>>> Arithmetic Operators Part 4 <<<<<<<<<<
#? ------------------------------------- 09 -------------------------------------
# في مشكله في التعامل مع امر bc لانه دا الي بيفهم الارقام ال float
# echo 5.2 + 10.7 | bc > bc: command not found
echo 5.2 + 10.7 | bc

# استخدمنا مكانه الامرين دول 
echo "print(5.2 + 10.8)" | python3
echo "5.2 10.5" | awk '{print $1 + $2}'
#? ------------------------------------- 10 -------------------------------------
# Video 10 => https://www.youtube.com/watch?v=8FG6pfHOB4A&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=10

#                          >>>>>>>>> Arithmetic Operators Part 5 <<<<<<<<<<
#? ------------------------------------- 10 -------------------------------------
# let >> يُستخدم لإجراء العمليات الحسابية على الأعداد الصحيحة وتخزين النتائج في متغيرات. 
let x=5+2
echo $x  # 7
#* ------------------------------ >>
# let arg1 arg2 etc... >> يمكننا عمل اكثر من متغير علي نفس السطر بالشكل دا
let arg1=5 arg2=6 arg3=7 arg4=8
echo $arg1
echo $arg2
echo $arg3
echo $arg4
#* ------------------------------ >>
# let var1++ >> نستخدم هذه الطريقة لاضافه واحد كما سبق الشرح
var1=55
let var1++
echo $var1
let --var1
echo $var1
#? ------------------------------------- 11 -------------------------------------
# Video 11 => https://www.youtube.com/watch?v=gNSOGl-Mjxk&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=11

#                          >>>>>>>>> If Statements Part 1 <<<<<<<<<<
#? ------------------------------------- 11 -------------------------------------
# -eq: Equal to                      >> ARG1 يساوي ARG2
# -ne: Not equal to                  >> ARG1 لا يساوي ARG2
# -gt: Greater than                  >> ARG1 اكبر من ARG2
# -ge: Greater than or equal to      >> ARG1 اكبر او يساوي ARG2
# -lt: Less than                     >> ARG1 اصغر من ARG2
# -le: Less than or equal to         >> ARG1 اصغر او يساوي ARG2
#* ------------------------------ >>
# if [ 21 == 21 ] ; then >> لبدايه عمل شرط يكون بهذه الطريقة ولازم نعمل فاصله ; then علشان دا طريقه كتابته
#* -eq >> .. [ هل 21 تساوي 21 ] لو صح هيطبع الرساله الي انت كتبتها
# echo "print This If True" >> لو الشرط تمام و True اطبع الجملة دي
# fi >> نعكس كلمه if لنهاية الشرط
# if [ $age -eq 21 ];then echo "True" ; fi >> وهذه طريقه الكتابة علي سطر واحد
age=21
if [ $age -eq 21 ];then
    echo "True"
fi
#* ------------------------------ >>
#* -ne >> .. [ هل 21 لا تساوي 21 ] لو صح هيطبع الرساله الي انت كتبتها
# if [ $age -ne 21 ];then echo "True" ; fi >> وهذه طريقه الكتابة علي سطر واحد
age=21
if [ $age -ne 21 ];then
    echo "Yes $age Not Equal 21"
fi
#* ------------------------------ >>
#* -gt >> .. [ هل 25 اكبر من 21 ] لو صح هيطبع الرساله الي انت كتبتها
# if [ $age -gt 21 ];then echo "True" ; fi >> وهذه طريقه الكتابة علي سطر واحد
age=25
if [ $age -gt 21 ];then
    echo "True"
fi
#* ------------------------------ >>
#* ------------------------------ >>
#* -ge >> .. [ هل 25 اكبر او يساوي 21 ] لو صح هيطبع الرساله الي انت كتبتها
# if [ $age -ge 21 ];then echo "True" ; fi >> وهذه طريقه الكتابة علي سطر واحد
age=25
if [ $age -ge 21 ];then
    echo "True"
fi
#* ------------------------------ >>
#* -lt >> .. [ هل 25 اصغر من 21 ] لو صح هيطبع الرساله الي انت كتبتها
# if [ $age -lt 21 ];then echo "True" ; fi >> وهذه طريقه الكتابة علي سطر واحد
age=25
if [ $age -lt 21 ];then
    echo "True"
fi
#* ------------------------------ >>
#* -le >> .. [ هل 25 اصغر او يساوي 21 ] لو صح هيطبع الرساله الي انت كتبتها
# if [ $age -le 21 ];then echo "True" ; fi >> وهذه طريقه الكتابة علي سطر واحد
age=25
if [ $age -le 21 ];then
    echo "True"
fi
#? ------------------------------------- 12 -------------------------------------
# Video 12 => https://www.youtube.com/watch?v=eleB6KHiatY&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=12

#                          >>>>>>>>> If Statements Part 2 <<<<<<<<<<
#? ------------------------------------- 12 -------------------------------------
# هنا كريقه استخدام ال esle مع ال if
# لو الشرط الاول تحقق تطبع $age Less Than 25
# لو لم يتحقق الشرط الاول اطبع $age Greater Than 25
age=26
if [ $age -lt 25 ] ; then echo "$age Less Than 25" ; else echo "$age Greater Than 25" ; fi
#* ------------------------------ >>
if [ $age -lt 25 ] ; then
    echo "$age Less Than 25"
else
    echo "$age Greater Than 25"
fi
#? ------------------------------------- 13 -------------------------------------
# Video 13 => https://www.youtube.com/watch?v=4ix-A3PC1VA&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=13

#                          >>>>>>>>> If Statements Part 3 <<<<<<<<<<
#? ------------------------------------- 13 -------------------------------------
# طريقه استخدم ال elif
age=15
# لو الشرط الاول اتحقق اطبع $age Less Than 25
if [ $age -lt 25 ] ; then
    echo "$age Less Than 25" 
# لو الشرط الثاني اتحقق اطبع $age Equal Than 25
elif [ $age -eq 25 ] ; then
    echo "$age Equal Than 25"
# لو الشرط الاول الثاني لم يتحقق اطبع $age Greater Than 25
else
    echo "$age Greater Than 25"
fi
#* ------------------------------ >>
# وممكن نخليهم علي سطر واحد زي المثال دا كدا 
age=25
if [ $age -lt 25 ] ; then echo "$age Less Than 25"
elif [ $age -eq 25 ];then echo "$age Equal Than 25" # > 25 Equal Than 25
else echo "$age Greater Than 25";fi
#? ------------------------------------- 14 -------------------------------------
# Video 14 => https://www.youtube.com/watch?v=8dB0e_jgoK4&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=14

#                          >>>>>>>>> If Statements Part 4 <<<<<<<<<<
#? ------------------------------------- 14 -------------------------------------
# دي طريقة عمل 2 if بداخل بعض 
read -p "Enter Name : " name
read -p "Enter Age : " age
if [ $age -ge 20 ] ;then
    read -p "Enter Gpa : " gpa
    if [ $gpa -ge 80 ] ;then
        echo "Welcome $name Your GPA Greater Than Or Equal 80"
    else 
        echo "Bad GPA ${gpa} Less Than 80 Please Try Again.."
    fi
else 
    echo "Sorry Your Age ${age} Less Than 20"
fi
#* ------------------------------ >>
# && / || / !
#! ممكن نعملها بكذا شكل AND
# 1 ) if [ $age -ge 20 ] && [ $gpa -ge 80 ]
# 2 ) if [[ $age -ge 20 && $gpa -ge 80 ]]
# 4 ) if [[ $age -ge 20 ]] && [[ $gpa -ge 80 ]]
# 3 ) if [ $age -ge 20 -a $gpa -ge 80 ]
#* ------------------------------ >>
#! ممكن نعملها بكذا شكل OR
# 1 ) if [ $age -ge 20 ] || [ $gpa -ge 80 ]
# 2 ) if [[ $age -ge 20 || $gpa -ge 80 ]]
# 4 ) if [[ $age -ge 20 ]] || [[ $gpa -ge 80 ]]
# 3 ) if [ $age -ge 20 -o $gpa -ge 80 ]
#* ------------------------------ >>
# && >> لعمل تطابق لشرطين مع بعض لازم الشرطين يتحقق
# الشرط الاول AND الشرط الثاني
# [[ الشرط الاول ]] && [[ الشرط الثاني ]]
read -p "Enter Age : " age
read -p "Enter Gpa : " gpa
if [[ $age -ge 20 ]] && [[ $gpa -ge 80 ]] ;then
    echo "Welcome"
else 
    echo "Sorry"
fi
#* ------------------------------ > -a >
# -a > دي طريقه عمل ال AND بشكل ثاني برضو
# [ الشرط الاول -a الشرط الثاني ]
age=20
gpa=80
if [ $age -ge 20 -a $gpa -ge 80 ] ;then
    echo "Welcome"
else 
    echo "Sorry"
fi
#* ------------------------------ > || >
# || > OR > لعمل تطابق لشرطين مع بعض لازم اي شرط من الشرطين يتحقق
# الشرط الاول OR الشرط الثاني
# [[ الشرط الاول ]] || [[ الشرط الثاني ]]
read -p "Enter Age : " age
read -p "Enter Gpa : " gpa
if [[ $age -ge 20 ]] || [[ $gpa -ge 80 ]] ;then
    echo "Welcome"
else 
    echo "Sorry"
fi
#* ------------------------------ > -o >
# -o > دي طريقه عمل ال OR بشكل ثاني برضو
# [ الشرط الاول -o الشرط الثاني ]
age=20
gpa=80
if [ $age -ge 20 -o $gpa -ge 80 ] ;then
    echo "Welcome"
else 
    echo "Sorry"
fi
#* ------------------------------ >>
# ! >> تستخدم لعكس الصح الي خطاء , والخطاء الي صح
# يعني الحاجه ال true بتتحول false
# ! > reverse from True To False ( Reverse Logic )
age=17
gpa=77
if [[ $age -ge 20 ]] || ! [[ $gpa -ge 80 ]] ;then
    echo "Welcome" # Welcome
else 
    echo "Sorry"
fi
#* ------------------------------ > -o ! ,, -a !>
# -o ! ,, -a ! >> نفس الموضوع عادي جدا  
age=17
gpa=77
if [ $age -ge 20 -o ! $gpa -ge 80 ] ;then
    echo "Welcome" # Welcome
else 
    echo "Sorry"
fi
#* ------------------------------ >>
age=17
gpa=77
if ! [[ $age -ge 20 ]] || [[ $gpa -ge 80 ]] ;then
    echo "Welcome" # Welcome
else 
    echo "Sorry"
fi
#* ------------------------------ >>
age=21
gpa=77
if ! [[ $age -ge 20 ]] || [[ $gpa -ge 80 ]] ;then
    echo "Welcome"
else 
    echo "Sorry" # Sorry
fi
#? ------------------------------------- 15 -------------------------------------
# Video 15 => https://www.youtube.com/watch?v=9mIJqg7aU7s&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=15

#                          >>>>>>>>> If Statements Part 5 <<<<<<<<<<
#? ------------------------------------- 15 -------------------------------------
# -d / -e / -s / -r / -w / -x
#* ------------------------------ >>
# -d >> True if file is a directory.
# -d >> هل الملف دا نوعه directory و موجود ولا لا
path="ntfsv6"
if [ -d $path ] ;then
    echo "$path in directory."
else
    echo "$path Not In Directory."
fi
#* ------------------------------ >>
# -e >> True if file exists
# -e >> هل الملف دا موجود ام لا
path="ntfsv6"
if [ -e $path ] ;then
    echo "$path Is Exists."
else
    echo "$path Is Not Exists."
fi
#* ------------------------------ >>
# -s >> True if file exists and is not empty.
# -s >> (اختصار لـ Size) التأكد من أن الملف ليس مجرد اسم موجود، بل هو ملف يحتوي على بيانات
path="ntfsv6"
if [ -s $path ] ;then
    echo "$path Is Exists AND Not Empty."
else
    echo "$path Is Not Exists. OR Empty."
fi
#* ------------------------------ >>
# -r >> True if file is readable by you.
# -r >> هذا يعني أن الشرط سيتحقق إذا كان المستخدم الذي يشغل السكربت يمتلك صلاحية القراءة لهذا الملف.
path="ntfsv6"
if [ -r $path ] ;then
    echo "You Have Readable In file $path."
else
    echo "You Not Have Readable In file $path."
fi
#* ------------------------------ >>
# -w >> True if the file is writable by you.
# -w >> التأكد من أنك تملك صلاحية "الكتابة" أو "التعديل" على الملف أو المجلد.
path="ntfsv6"
if [ -w $path ] ;then
    echo "You Have Writable In file $path."
else
    echo "You Not Have Writable In file $path."
fi
#* ------------------------------ >>
# -x >> True if the file is executable by you.
# -x >> التأكد من أنك تملك صلاحية "التنفيذ" أو التشغيل
path="ntfsv6"
if [ -x $path ] ;then
    echo "You Have Executable In file $path."
else
    echo "You Not Have Executable In file $path."
fi
#* ------------------------------ > test >
# دي اسكربت بتشوف هل الملف معاه صلاحيه ال Execute ام لا 
# لو مش معاه صلاحيه ال Execute بتخش تعدل ال permission بتاعه الي chmod +x $filename
# لو الملف اصلا مش موجود هيطبع File Not Exist
ls -la
read -ep "Enter File Name : " filename
if [ -x $filename ] ; then
    echo "File $filename is Already Execute."
elif [ -e $filename ] ; then
    chmod +x $filename
    # echo '#!/bin/bash' > $filename
    echo "File Now Execute."
    ls -la
else 
    echo "File Not Exist."
fi
#* ------------------------------ > test >
# اسكربت بتشوف الملف لو مجود بتاخد منه نسخه في مكان ثاني
ls -la
read -ep "Enter File Name : " filename
if [ -d $filename ] ; then
    echo "$filename Is Here Already."
    echo "Will Copy This File to New Path."
    read -p "Enter New Path To copy ${filename} : " newfile
    cp -r "${filename}" "${newfile}"
    echo "Done! Current Directory Status:"
    ls -la
else 
    echo "Dir Not Found.."
fi
#* ------------------------------ >>
# اسكربت لو المجلد موجود بتمسحه
ls -la
read -ep "Enter File Name : " filename
if [ -d $filename ] ; then
    echo "${filename} is Exist Will Remove Right Now.."
    rm -r $filename
    echo "${filename} Removed.!"
    ls -la
else
    echo "${filename} Not Found,,"
fi
#* ------------------------------ >>
# اسكربت لو المجلد او الملف موجود بتمسحه
ls -la
read -ep "Enter File Or Dir Name : " filename
if [ -e $filename ] ; then
    echo "${filename} is Exist Will Remove Right Now.."
    rm -r $filename
    echo "${filename} Removed.!"
    ls -la
else
    echo "${filename} Not Found,,"
fi
