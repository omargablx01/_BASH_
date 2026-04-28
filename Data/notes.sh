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
# [sS]ound  >> sound دي | Sound او دي
#! مثال > \d? > لو رقم موجود تمام لو مش موجود اكن مفيش حاجه
# ?	0 or 1
#! مثال > ^\d > لازم يبداء برقم 
# ^  Start of String
#! مثال > $\d > لازم ينتهي برقم 
# $  End of string
#? (\d-|\d\)|\d>) > بيشوف لو بيبداء برقم و علامه - او رقم وعلامه ) او رقم وعلامه > و
# |	  Or
#? علامه ال Escape علشان تخلي يعدل العلامه دي 
# \	  Escape Special Characters >> \+ = + , \* = * , etc..
#? (\d{4}) > دا كدا يسمي مجموعه مع بعض 
# ()  Separate Groups
#! (.+) > نستخدم ال .+ بعمني اي حاجه وكمان مش عارف العدد بتاعها 
# .  اي حاجه etc..
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
# هنا معنه انه بيبداء ب 3 حاجات وبينتهي ب .
# .*[^abc1] > استخدام ال .* معنها اي حاجه بستثناء حروف ال abc1
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
# [^drp]an >> هنا معنها لا يبداء ب اي حرف من الحروف دي drp وينتهي ب an
# [cmf]an >> هنا معنها يبداء ب اي حرف من الحروف دي c,m,f وينتهي ب an
# ^[cmf]an$  >> ^ معنها ان لازم يبداء ب اي حرف من الحروف الثلاثه دول cmf ولازم
# match	: can	
# match	: man	
# match	: fan	
# skip	: dan
# skip	: ran
# skip	: pan
#* ------------------------------ >>
# https://regexone.com/lesson/excluding_characters
# solution > ^[hd]og$  (OR)  [^b]og$
# [^b]og$ >> علامه ال ^ معنها اي حاجه لا تبداء ب حرف ال d
# يعني كل الحروف معاده حرف ال d
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
# ^(file\w+).+ >> استخدمن الاقواس بمعني ان دول جروب لوحده بعد كدا كملنا حل عادي 
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
# [ "$var1" = "$var2" ] >> نستخدم = بمعني هل ال string1 يطابق ال string2
# [[ "$var1" == "$var2" ]] >> والطريقه دي تنفع برضو
var1="Linux"
var2="Linux"
# if [ "$var1" = "$var2" ]
if [[ "$var1" == "$var2" ]]
then
    echo "True"
else 
    echo "Fasle"
fi
#* ------------------------------ >>
# *"Linux"* >> تستخدم هذه الطريقه للبحث عن كلمه بداخل نص 
# *"L > معنها اي حاجه قبل الكلمه
# x"* >> معنها اي حاجه بعد الكلمه
# زي ال in الي في python
var1='GUN\Linux is an OS MY PC'
if [[ $var1 == *"Linux"* ]]
then
    echo "Linux in ${var1}"
else 
    echo "Fasle"
fi
#* ------------------------------ >>
# =~ >> دي كدا طريقه استخدام ال Regular Expression
var1='GUN\Linux is an OS MY PC'
if [[ $var1 =~ .*Linux.* ]]
then
    echo "Linux in ${var1}"
else 
    echo "Fasle"
fi
#* ------------------------------ >>
# -z >> True if string is empty.
# -z >> تستخدم علشان تشوف هل النص فارغ ام لا
var1=''
if [[ -z $var1 ]]
then
    echo "${var1} Is Empty."
else 
    echo "${var1} Is Not Empty."
fi
#* ------------------------------ >>
# -n >> True if string is not empty.
# -n >> تستخدم علشان تشوف هل النص ليس فارغ ام لا
var1='Not Empty String'
if [[ -n $var1 ]]
then
    echo "${var1} Is Not Empty."
else 
    echo "${var1} Is Empty."
fi
#? ------------------------------------- 22 -------------------------------------
# Video 22 => https://www.youtube.com/watch?v=zz4VZNaFbfA&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=22

#                          >>>>>>>>> Strings Comparison part 2 <<<<<<<<<<
#? ------------------------------------- 22 -------------------------------------
# != >> True if the strings are not equal.
# != >> هل ال string1 لا يساوي ال string2
str='abc'
patt1='a*'
patt2='x*'
if [[ $str != $patt2 ]] ;then
    echo "The String ${str} Not Equal ${patt2}"
else
    echo "The String ${str} Equal ${patt2}"
fi
#* ------------------------------ >>
#t~ عند استخدم علامه الاكبر والاصغر تتم المقارنه من خلال ال ascii code
# https://www.ascii-code.com/
# تتم المقارنة هنا من خلال حرف ب الحرف المقابل له علي حسب هو رقم ال DEC بتاعه في الترتيب
# <  >> True if STRING1 sorts before STRING2 lexicographically.
# >  >> True if STRING1 sorts after STRING2 lexicographically.
var1="Linux"
var2="Linux"

if [[ $var1 > $var2 ]] ;then
    echo "${var1} is greater Than $var2"
elif [[ $var1 < $var2 ]] ;then
    echo "${var1} is Less Than $var2"
else 
    echo "${var1} & ${var2} Equal"
fi
#? ------------------------------------- 23 -------------------------------------
# Video 23 => https://www.youtube.com/watch?v=-dHhiUWttD8&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=23

#                          >>>>>>>>> Case Statements part 1 <<<<<<<<<<
#? ------------------------------------- 23 -------------------------------------
# case $namevar in >> دي طريقه استخدام ال case يعتبر زي ال if كدا بالظبط
# ولكن يوجد فروق جوهريه سوف نتعلمها فيما بعد
# 'one') >> لو المستخدم دخل كلمه 'one' هيطبع الرساله دي Right Choic One وهكذا
# ;; >>  نفذ الأوامر واخرج فوراً من الـ case (زي break)
# *) >> دي تعتبر هي ال else يعني لو كل الشروط دي متحققش خش علي ال else
# esac >> دي تستخدها علشان تقفل ال case
read -p "Choic Number 1-3 : " num

case $num in 
    'one')
      echo "Right Choic One";;
    'two')
      echo "Right Choic Two";;
    'three')
      echo "Right Choic Three";;
    *)
      echo "Bad Choic Try Again.." ;;
esac
# ............. دي نفس الامر ب ال if ............
read -p "Choic Number 1-3 : " num

if [ $num -eq 1 ];then
    echo "Right Choic One"

elif [ $num -eq 2 ];then
    echo "Right Choic Two"

elif [ $num -eq 3 ];then
    echo "Right Choic Three"

else
    echo "Bad Choic Try Again.."
#* ------------------------------ >>
read -p "Enter Operating System ( linux|windows|mac ) : " os

case $os in

  linux) echo "Ilove ${os}";;

  windows) echo "Bad Choose ${os}!";;

  mac) echo "Nice ${os}";;

  *) echo "Sorry , Don't Have DB..! For ${os}"

esac
#? ------------------------------------- 24 -------------------------------------
# Video 24 => https://www.youtube.com/watch?v=Ilw9cIBuWjc&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=24

#                          >>>>>>>>> Case Statements part 2 <<<<<<<<<<
#? ------------------------------------- 24 -------------------------------------
# دي اسكربت بتفك الضغط عن اي نوع من انواع ملفات الضغط
if [ -f $1 ] ;then
    echo "$1 is True exists and is a regular file."
    case $1 in 
      *.rar) unrar -x $1;;
      *.tar) tar -xvf $1;;
      *.tar.bz2) tar -xvjf $1;;
      *.tar.gz) tar -xvzf $1;;
      *.zip) unzip $1;;
      *) echo "Failed Name Try Again"
    esac
else
  echo "$1 Not Found Try Again.."
fi
#* ------------------------------ >>
# عملنا اسكربت بتشوف هل الملف دا نوعه ملف و موجود ام لا لو موجود بيعرض عليك يمسحه او لا
# 'y'|'yes' >> إنه ينفذ الأوامر اللي تحتها لو كانت قيمة المتغير هي 'y' أو 'yes'.
ls -la
read -ep "Enter File Name Like ( test.txt ) : " filename
if [ -f $filename ] ;then
  echo "True File Exists & Regular File"
  read -p "Enter ( y|n ) To Remove : " yn
  case $yn in
    'y'|'yes') 
      rm -r $filename
      echo "$filename Is Removed.."
      ls -la
    ;;
    'n'|'no') 
      echo "FIle Not Removed..";;
    *) 
      echo "False Choose try Again..."
  esac
else 
  echo "$filename Is not Exists OR Not Regular File"
fi
#* ------------------------------ >>
# ;& >> نفذ الأوامر وكمل تنفيذ الكود اللي في الحالة اللي بعدها مباشرة (حتى لو النمط مش مطابق!).
case "apple" in
    apple)
        echo "It's an apple."
        ;&  # كمل للي بعدها
    fruit)
        echo "It's also a fruit."
        ;;
esac
#* ------------------------------ >>
# ;;& >> كمل فحص باقي الأنماط وشوف لو فيه حاجة تانية مطابقة (اختبار الأنماط التالية).
case "apple" in
    apple)
        echo "It's an apple."
        ;;&
    fruit|apple)
        echo "It's also a fruit."
        ;;
esac
#* ------------------------------ >>
# [...] >> تعني أي حرف موجود داخل الأقواس
# exit 1 >> هنا تستخدم لتوقيف الاسكربت كلها يعني اي حاجه تحتها مش هتتنفذ
read -p "Do you want to continue? (y/n): " answer
case $answer in
    [yY] | [yY][eE][sS]) # y|Y|yes|Yes|YEs|YES|yEs|yES|yeS|YeS|etc...
        echo "Continuing..."
        ;;
    [nN] | [nN][oO])
        echo "Exiting..."
        exit 1
        ;;
    *)
        echo "Invalid input."
        ;;
esac
#* ------------------------------ >>
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
#? ------------------------------------- 25 -------------------------------------
# Video 25 => https://www.youtube.com/watch?v=psRAt2Lb-Nw&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=25

#                          >>>>>>>>> For Loop part 1 <<<<<<<<<<
#? ------------------------------------- 25 -------------------------------------
# for namevar in {rangefrom..rangeto..step};do >> هذه طريقه ال for loob والطريقه دي عمله زي ال range python
# step def == 1
for i in {2..10..2}
do
  echo "Hello ${i}"
done
#* ------------------------------ >>
# دي الطريقة العاديه جداا هيطبع من 1 الي 10
for i in {1..10}
do
  echo "Hello ${i}"
done
#* ------------------------------ >>
# هنا كدا هيعمل طباعه للارقام الي انت حطيتها دي يعني مره هيطبع 1 ومره 20و30و40و100
for i in 1 20 30 40 100;do
    echo "Loob : $i" ;done
#* ------------------------------ >>
# ونفس الفكره برضو هيطبع كل مره اسم منهم
for name in "Ahmed" "Ali" "Sara"; do
    echo "Hello $name"
done
#* ------------------------------ >>
# * >> نستخدمها لعمل loob علي الملفات الي موجوده في مكان الاسكربت
# for i in * ;do echo "file $i";done >> نفس الكود علي سطر واحد
for i in * 
do
  echo "File : $i"
done
#* ------------------------------ >>
# هنا عملنا loob علي الارقام الزوجية الاقل او تساوي 20 
for i in {2..100..2} ; do
  if [[ $i -le 20 ]] ;then
      echo "Num : $i"
  fi
done
#? ------------------------------------- 26 -------------------------------------
# Video 26 => https://www.youtube.com/watch?v=vJzbxndi8G4&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=26

#                          >>>>>>>>> For Loop part 2 <<<<<<<<<<
#? ------------------------------------- 26 -------------------------------------
# ((i=1 ; i<=5 ; i++)) >> ودي طريقه ثانيه برضو لاستخدام ال loob ماخوذه من لغه C
# i=1 >> قيمه ال loob
# i<=5 >> الشرط الي هيتم علي اساه ال loob
# i++ >> هيزود كام علي قيمه ال loob في كل مره 
# sleep 2 >> تستخدم لتعطيل طباعه العناصر بالثواني بدل ما يطبع كله مره واحد بيوقف ثنيتين
for (( i=1 ; i<=5 ; i++ ));do
    echo "i : $i"
    sleep 2
done
#* ------------------------------ >>
# دي اسكربت لو الملف بينتهي ب tar.gz امسحه
for file in * ;do
  if [[ $file == *tar.gz ]];then 
    rm -r $file
  fi
done
#? ------------------------------------- 27 -------------------------------------
# Video 27 => https://www.youtube.com/watch?v=MosmKd2bnqQ&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=27

#                          >>>>>>>>> For Loop part 3 <<<<<<<<<<
#? ------------------------------------- 27 -------------------------------------
# لو الرقم باقي القسمه بتاعه يساوي 0 يبقي دا رقم زوجي غير كدا يبقي فردي
for num in {1..50} ; do
  if [[ $((num%2)) -eq 0 ]] ;then
    echo "Odd Num : $num"
  else
    echo "Even Num : $num"
  fi
done
#* ------------------------------ >>
echo
for num in {2..50..2} ; do
    echo "Odd Num : $num"
done
#* ------------------------------ >>
# t~ Continue تستخدم لتفادي شي معين او عنصر معين
for num in {1..50} ; do
  if [[ $((num%2)) -eq 1 ]] ;then
  continue
  fi
    echo "Num : $num"
done
#* ------------------------------ >>
# t~ Break تستخدم للتوقف عند عنصر معين سوف توقف ال Loop عند تحقق الشرط يوقف ال loob
for num in {1..50} ; do
  if [[ $((num%2)) -eq 0 ]] ;then
  break
  fi
    echo "Num : $num"
done
#? ------------------------------------- 28 -------------------------------------
# Video 28 => https://www.youtube.com/watch?v=SWDrATjXYlo&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=28

#                          >>>>>>>>> While Loop part 1 <<<<<<<<<<
#? ------------------------------------- 28 -------------------------------------
# while >> طالما فيه شرط متحقق (True).	أول ما الشرط يتحول لـ False بتقف
# هذه هي طريقه استخدام ال while 
# i=$((++i)) >> دي كدا معنها طول ما ال i لسه اقل من 10 زود 1
i=1
while [ $i -le 10 ];do
  echo "i : $i"
  i=$((++i)) # OLD
# i=$((i+1)) # OLD
done
#* ------------------------------ >>
# ((i+=1)) >> دي عنها زود 1 برضو بس الاحدث 
# ي الطريقة الأسرع، الأنظف، والأكثر استخداماً في الـ Bash [4]
i=1
while [ $i -le 10 ];do
  echo "i : $i"
    ((i+=1)) # Good 
done
#* ------------------------------ >>
# ((i++)) >> دي عنها زود 1 برضو بس الاحدث 
# ي الطريقة الأسرع، الأنظف، والأكثر استخداماً في الـ Bash [4]
i=1
while [ $i -le 10 ];do
  echo "i : $i"
  ((i++)) # Good & NEW
done
#* ------------------------------ >>
counter=1
while [ $counter -le 5 ]; do
    echo "Count is $counter"
    ((counter++)) # زيادة العداد بمقدار 1
done
#* ------------------------------ >>
# لقراء عناصر ملف بالكامل وهيقف اول ما العناصر الي جوه تخلص
while read -r line; do
    echo "Line : $line"
done < "myfile.txt"
#? ------------------------------------- 29 -------------------------------------
# Video 29 => https://www.youtube.com/watch?v=l8Y4jYIZlvY&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=29

#                          >>>>>>>>> While Loop part 2 <<<<<<<<<<
#? ------------------------------------- 29 -------------------------------------
# ال2 دول نفس الفكره بالظبط ولكن الثانيه افضل واسهل واسرع
x=1; while [ $x -le 5 ];do echo "Welcome $((x++)) Time";done # OLD Way
#* ------------------------------ >>
x=1; while [ $x -le 5 ];do echo "Welcome $x Time" ;((x++));done # BEST Way
#* ------------------------------ >>
x=1
while [ $x -le 5 ]
do
    echo "Welcome $((x++)) Time"
done
#* ------------------------------ >>
x=1
while [ $x -le 5 ]
do
    echo "Welcome $x Time"
    (( x++ ))
done
#* ------------------------------ >>
# دي اسكربت بيقعد يضرب الرقم في الرقم الي يساوي ثم الي اقل منه لحد ما يوصل لل 0
fact=1
num=$1
while [ $num -gt 0 ]
do
    fact=$(( $fact * $num ))
    # num=$(($num-1))
    num=$((--num))
done
echo $fact
#? ------------------------------------- 30 -------------------------------------
# Video 30 => https://www.youtube.com/watch?v=S3nkMGKcsSo&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=30

#                          >>>>>>>>> Until Loop <<<<<<<<<<
#? ------------------------------------- 30 -------------------------------------
# until >> تستمر في التكرار طالما أن الشرط خطأ (False)، وتتوقف فوراً أول ما الشرط يصبح صحيحاً (True).
x=5
until [ $x -eq 10 ] ;do
    echo "until ${i}"
done
#* ------------------------------ >>
# set -x >> دي نستخدمها علشان يعمل Debug علي الكود من او هنا 
# set +x >> وقف ال Debug عند الحته دي
set -x
x=5
until [ $x -eq 10 ] ;do
    echo "until number : ${x}"
    ((x++))
done
set +x
#* ------------------------------ >>
# عند استخدام ال loob بهذه الطريقه يطبع العناصر ويقطعها من خلال ال Space 
str="Hello Python And Bash"
for i in str ;do
    echo $i
done
#* ------------------------------ >>
#! IFS="-" >> نستخدمها علشان نخلي يقطع ال string علي حسب ما اريد انا بعلامه ال -
IFS="-"
str="Hello Python-And-Bash"
for i in $str ;do
    echo $i
done
#? ------------------------------------- 31 -------------------------------------
# Video 31 => https://www.youtube.com/watch?v=3O_Eud9teNc&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=31

#                          >>>>>>>>> Arrays part 1 <<<<<<<<<<
#? ------------------------------------- 31 -------------------------------------
#! تم شرح فيها ما هي ال array بشكل عام 
#? ------------------------------------- 32 -------------------------------------
# Video 32 => https://www.youtube.com/watch?v=ZJa9_3cTQkA&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=32

#                          >>>>>>>>> Arrays part 2 <<<<<<<<<<
#? ------------------------------------- 32 -------------------------------------
# ${distros} => Ubuntu >> طباعه اول عنصر
# ${distros[@]} >> هذه الطريقة معنها طباعه جميع عناصر ال array ولازم المتغير يكون بداخل الاقواس {}
# ${distros[1]} => Fedora >> كدا هيطبع العنصر الثاني 
# ${distros[-1]} => Debian >> كدا هيطبع العنصر الاخير
# ${#distros[@]} => 3 >> لطباعه عدد عناصر ال array نستخدم ال # بهذا الشكل 
# ${#distros[0]} => 6 >> تستخدم لطباعه عدد الحروف بتاع العنصر ال index بتاعه 1
declare -a distros=("Ubuntu" "Fedora" "Debian")
distros=("Ubuntu" "Fedora" "Debian")
echo ${distros}
echo ${distros[@]}
echo ${distros[1]}
echo ${distros[-1]}
echo ${#distros[@]}
echo ${#distros[1]}
#* ------------------------------ >>
# ${#string} >> نستخدم ال # هنا كدا علشان يطبع عدد حروف المتغير دا
string="ntfsv6"
echo ${#string}
#? ------------------------------------- 33 -------------------------------------
# Video 33 => https://www.youtube.com/watch?v=P4GYb96h7Ko&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=33

#                          >>>>>>>>> Arrays part 3 <<<<<<<<<<
#? ------------------------------------- 33 -------------------------------------
# ودي طريقه برضو اخر في عمل ال array 
declare -a arr
arr[0]="Tester1"
arr[1]="Faild2"
echo ${arr[@]}
#* ------------------------------ >>
# [3]="Tester1" >> بالشكل دا كدا احنا حددنا العنصر دا يبقي في ال index الكام
declare -a arr=([3]="Tester1" [4]="Faild2")
echo ${arr[@]}
#* ------------------------------ >>
# arr+= >> هذه الطريقه تستخدم لاضافه عناصر جديده علي االعناصر القديمة
declare -a arr=("Tester1" "Faild2" "Succ")
echo ${arr[@]}
arr+=("Helper" "Manger")
echo ${arr[@]}
#* ------------------------------ >>
# declare -a >> لا تقبل عمل ال Index بهذه المسميات لازم ارقام
declare -a arr=([first]="Te" [sec]="Fi")
echo ${arr[@]}
#* ------------------------------ >>
# declare -A >> ولكن هذه الطريقه تقبل المسميات بدل الارقام في ال index
declare -A arr=([first]="Te" [sec]="Fi")
echo ${arr[first]} # Te
#? ------------------------------------- 34 -------------------------------------
# Video 34 => https://www.youtube.com/watch?v=CAa3ZaBPxcg&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=34

#                          >>>>>>>>> Arrays part 4 <<<<<<<<<<
#? ------------------------------------- 34 -------------------------------------
# echo "${arr[-1]}" >> الطريقة العاديه لطباعه اخر عنصر
#t~ لو عايز تجيب قيمة الخانة الأخيرة ككلام عادي: استخدم ${arr[-1]}.
# echo "${arr[@]: -1}" >> هذه الطريقه ايضا تستخدم لطباعه اخر عنصر برضو
# لو عايز تقص حتة من المصفوفة من الآخر وترجعها كـ مصفوفة مصغرة: استخدم
arr=("Tester1" "Faild2" "Succ" "Log" "Run")
echo "${arr[-1]}"
echo "${arr[@]: -1}"
#* ------------------------------ >>
# "${arr[@]:2}" >split> كدا هيعمل قطع من اول ال index 2 الي النهاية
declare -a arr=("Tester1" "Faild2" "Succ" "Log" "Run")
echo "${arr[@]:2}" # Faild2 Succ Log Run
#* ------------------------------ >>
# "${arr[@]:1:2}" >> كدا هقطع من ال index 1 , و 2 index فقط بعده
declare -a arr=("Tester1" "Faild2" "Succ" "Log" "Run")
echo "${arr[@]:1:2}" # Faild2 Succ
#* ------------------------------ >>
# "${arr[@]:1:3}" >> كدا هيقطع من Index 1 و ثلاث عناصر فقط بعده 
declare -a arr=("Tester1" "Faild2" "Succ" "Log" "Run")
echo "${arr[@]:1:3}" # Faild2 Succ Log
#* ------------------------------ >> OUT OF COURSE
# ${!my_array[@]} >> للحصول علي ارقام ال index بتاع كل عنصر 
declare -a my_array=( "Hydrogen" "Helium" "Lithium" "Beryllium" )
echo ${!my_array[@]} # 0 1 2 3
#* ------------------------------ >>
# [@] >> دي معنها ان كل عنصر يبقي لوحده يعني لمه بيقطعهم بيبقي العناصر بتاعتهم عمله زي ال array
# [*] >> امال دي بيخلي كل العناصر اكنها عنصر string واحد
my_array=( "Hydrogen Round" "Helium join" "Lithium Eng" "Beryllium Windy" 5 7 9 10 )
for i in "${my_array[@]}"
do
    echo "Index : $i"
done
echo "================================================"
for i in "${my_array[*]}"
do
    echo "Index : $i"
done
#? ------------------------------------- 35 -------------------------------------
# Video 35 => https://www.youtube.com/watch?v=vcgcjsCeUkw&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=35

#                          >>>>>>>>> Arrays part 5 <<<<<<<<<<
#? ------------------------------------- 35 -------------------------------------
# arr+=("Done" "Fun") >> دي طريقه اضافه العناصر وهي ال appendوالطريقه دي بتضيف العناصر من النهاية
arr=("Tester1" "Faild2")
arr+=("Done" "Fun")
echo ${arr[@]}
#* ------------------------------ >>
# arr=("Done" "Fun" ${arr[@]}) >> تستخدم بهذه الطريقه لاضافه عناصر الاول بعد كدا تجيب العناصر القديمه في النهاية
arr=("Tester1" "Faild2")
arr=("Done" "Fun" ${arr[@]})
echo ${arr[@]}
# * ------------------------------ >>
# arr=("${arr[@]:0:$insert}" "insertVal" "${arr[@]:0:$insert}") >> هذه طريقه عمل ال Insert في منتصف العناصر
arr=(a b c d)
insert=2
arr=("${arr[@]:0:$insert}" "insertVal" "${arr[@]:0:$insert}")
echo ${arr[@]}
# * ------------------------------ >>
# ${!arr[@]} >> تستخدم لطباعه ال index بتاع العناصر
arr=(a b c d)
echo ${!arr[@]}
#* ------------------------------ >>
# unset -v 'arr[0]' >> نستخدم ال unset لحذف عنصر من خلال ال index بتاعه بشكل طبيعي جدا
arr=(a b c d)
echo ${arr[@]}
echo ${!arr[@]}
echo "================================================ After Remove Index 0"
unset -v 'arr[0]'
echo ${arr[@]}
echo ${!arr[@]}
#* ------------------------------ >>
# arr3=("${arr1[@]}" "${arr2[@]}") >> هذه الطريقه لدمج 2 array في array واحده جديدة
arr1=(a b c d)
arr2=(1 2 3 4)
arr3=("${arr1[@]}" "${arr2[@]}")
echo ${arr3[@]}
#* ------------------------------ >>
declare -A arr=([first]=One [second]=Two [third]=Three)
echo ${arr[@]}
echo ${!arr[@]}
#* ------------------------------ >> loob with for
# ودي طريقة عمل ال loob بشكل تلقائي علي حسب عدد عناصر ال array
arr1=(a b c d)
for (( i=0 ; i<${#arr1[@]} ; i++ ));do
    echo "Item : ${arr1[$i]} > index : $i"
done
#* ------------------------------ >> loob with while
arr1=(a b c d)
i=0
while [ $i -le ${#arr[@]}] ;do
    echo ${arr1[$i]}
    ((i++))
done
#* ------------------------------ >> loob with until
arr1=(a b c d)
i=0
until [ $i -ge ${#arr1[@]} ] ;do
    echo ${arr1[$i]}
    ((i++))
done
#? ------------------------------------- 36 -------------------------------------
# Video 36 => https://www.youtube.com/watch?v=0gLxTbCULto&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=36

#                          >>>>>>>>> Arrays part 6 <<<<<<<<<<
#? ------------------------------------- 36 -------------------------------------
arr1=(a b c d)
for i in ${!arr1[@]};do
    echo "Items : ${arr1[$i]} > index : $i"
done

for (( i=0 ; i<${#arr1[@]} ; i++ ));do
    echo "Item : ${arr1[$i]} > index : $i"
done
#* ------------------------------ >>
# read -a >> نستخدم هذه الطريقه لاخذ عناصر array من المستخدم
echo -n "Enter Your Array : " # 1 2 3 4 5
read -a arrays
for key in ${!arrays[@]} ; do
    echo "Item : ${arrays[$key]} > index : $key" 
done
#* ------------------------------ >>
while read line ;do
    # arr=("${arr[@]}" $line) # OLD
    arr+=("${line}") # Prof GooD
    break
done
echo "${arr[-1]}"
#* ------------------------------ >> OUT OF COURSE
# لو عدد ال array وصل لحد 6 او اكثر وقف ال while
while read -a my_array; do
    arr+=("${my_array}")
    echo "Number : ${#arr[@]}"
    echo "First Arg: ${arr}"
    echo "Last Arg: ${arr[-1]}"
    echo "All Array : ${arr[@]}"
    if [ ${#arr[@]} -ge 6 ] ;then
        echo "While Is Stoped.."
        break
    fi
done
#* ------------------------------ >>
# ./bash.sh 1 2 3 4 5
arr=($@)
echo "File $0 .. Args : ${arr[@]}"
#? ------------------------------------- 37 -------------------------------------
# Video 37 => https://www.youtube.com/watch?v=fDIKIFBUu14&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=37

#                          >>>>>>>>> Function part 1 <<<<<<<<<<
#? ------------------------------------- 37 -------------------------------------
# 1 ) my_func() { task }
# 2 ) function my_func { task }
# 3 ) function my_func() { task }
# ----------------------------
# 1 ) my_func(){ task } >> هذه طريقه عمل ال function
# my_func >> وكدا احنا ندهنها عليها تحت
my_func() {
    echo "Welcome to Bash functions!"
}
my_func
#? ------------------------------------- 38 -------------------------------------
# Video 38 => https://www.youtube.com/watch?v=m8WleQNY8Pw&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=38

#                          >>>>>>>>> Function part 2 <<<<<<<<<<
#? ------------------------------------- 38 -------------------------------------
# $1.$2.etc.. >> دي معنها انك لمه تيجي تشغل ال function بتحط جنبها ال arg الي انت هتستخدمه جوه ال func
# fun "Hany" 22 "Male" >> زي كدا بالظبط الي بنعلمه جنب اسم الاسكربت
fun(){
    echo "=================== Info Students ==================="
    echo "Hello $1"
    echo "Your Age : $2"
    echo "Gender : $3"
}
name="Gabber"
age=44
gender="unknow"
fun "${name}" "${age}" "${gender}"
fun "Hany" 22 "Male"
fun "Jony" 27 "Male"
fun "Sara" 22 "Female"
#? ------------------------------------- 39 -------------------------------------
# Video 39 => https://www.youtube.com/watch?v=Szbg19Md62s&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=39

#                          >>>>>>>>> Function part 3 <<<<<<<<<<
#? ------------------------------------- 39 -------------------------------------
# $@ >> استخدم هذه داخل ال function تعني ان كل ال arg الي هتحطها في ال function .fun "Jony" 27 "Male".
fun(){
    echo "=================== Info User ==================="
    echo "Hello $1"
    echo "Your Age : $2"
    echo "Gender : $3"
    for i in "$@"
    do
        echo "Arg : $i"
    done
}
fun "Jony" 27 "Male"
#* ------------------------------ >>
# طبعا في bash المتغيرات داخل ال function بتبقي global بشكل تلقائي يعني اقدر استخدمها في اي مكان
# local namevar >> نستخدم local علشان اخلي المتغير دا يتم استخدمه بداخل ال function فقط
greet(){
    local name="$1"
    echo "${name} Is Here."
}
name="Bad Notes"
greet "Good Notes"
echo "Hello ${name}"
#* ------------------------------ >>
# ${1:-"Anonymous"} >> استخدام هذه الطريقه كدا بنحط قيمه افتراضيه علشان لو شغلنا ال function من غير ما نحط args
# ${2:-0} >> معنها لو محطتش قيمه لل arg2 القيمة الافتراضية هي 0
greet(){
    local per=${1:-"Anonymous"}
    local exp=${2:-0}
    echo "Hello '${per}' Your Exp Is : '${exp}'"
}
greet
#* ------------------------------ >>
# per="${1:?"Please Put Arguments Values"}" >> نستخدم ? لطباعه رسالة خطاء لو نسيت تحط قيمه ل function لما تشغلها
greet(){
    per="${1:?"Please Put Arguments Values"}"
    echo "Hello '${per}'"
}
greet
#* ------------------------------ >>
# per2="${2:?"Please Put Arguments Values"}" >> دي كدا رساله خطاء لل arg2
greet(){
    per="${1:?"Please Put Arguments Values"}"
    per2="${2:?"Please Put Arguments Values"}"
    echo "Hello '${per}' & '${per2}'"
}
greet "Admin"
#? ------------------------------------- 40 -------------------------------------
# Video 40 => https://www.youtube.com/watch?v=r6oJcNtToIk&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=40

#                          >>>>>>>>> Function part 4 <<<<<<<<<<
#? ------------------------------------- 40 -------------------------------------
# 1 ) my_func() { task }
# 2 ) function my_func { task }
# 3 ) function my_func() { task }
# ----------------------------
# 1 ) my_func(){ task } >> هذه طريقه عمل ال function
# my_func >> وكدا احنا ندهنها عليها تحت
my_func() {
    echo "Welcome to Bash functions!"
}
my_func
#* ------------------------------ >>
# 2 ) function my_func { task } >> هذه طريقه عمل ال function
# my_func >> وكدا احنا ندهنها عليها تحت
function my_func {
    echo "Welcome to Bash functions!"
}
my_func
#* ------------------------------ >>
# 3 ) function my_func() { task } >> هذه طريقه عمل ال function
# my_func >> وكدا احنا ندهنها عليها تحت
function my_func() {
    echo "Welcome to Bash functions!"
}
my_func
#* ------------------------------ >>
# hello $1 $2 $3 >> عند استدعاء ال function ممكن نحط ال args الي جنب اسم الاسكربت
#* ./bash.sh Hany 23 Male
# "$#" >> بيطبع عدد ال arg الي حطتيها لل function
hello(){
    echo "Hello : $1"
    echo "Age : $2"
    echo "Gender : $3"
    echo "$@"
    echo "$#"
}
hello "$1" $2 $3
#* ------------------------------ >>
# return $sum >> كدا احنا خلينا ال function دي بترجع قيمة ونقدر نستخدمها في اي مكان
#! $? >> تستخدم لارجاع اخر قيمة return حصلت في الاسكربت ودي طبعا طريقه غير صحيحه
# لان استخدام ال return بيكون علشان تشوف الكود صح ام خطاء 
# بتاخد من 0 ال 255
# الرقم 0 يعني أن الأمر نجح وبدون أخطاء.
# الأرقام من 1 إلى 255 تعني حدوث خطأ ما (أو تُستخدم لتمرير حالة معينة).
sums(){
    sum=$(( $1 + $2 ))
    return $sum
}
sums 200 100
echo $?
#* ------------------------------ >>
# هذه هي الطريقه الصحيحه لاخذ قيمه معينه من function ويمكنك التحكم فيها في اي حته
sums(){
    sum=$(( $1 + $2 ))
    echo $sum
}
total=$( sums 200 100 )
echo $total
#? ------------------------------------- 41 -------------------------------------
# Video 41 => https://www.youtube.com/watch?v=XGhGkCVVErA&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=41

#                          >>>>>>>>> local vs export vs default <<<<<<<<<<
#? ------------------------------------- 41 -------------------------------------
#t~ export >> بتخلي المتغير يبقي global يعني اقدر اشوفه في اي جته داخل ال bash script
# وبيحفظ فيمه المتغير داخل ال terminal الي انت فاتحها
# local >> تستخدم علشان نخلي المتغير يمكن استخدامه داخل ال function فقط
# ومينفعش نستخدم ال local دي بره ال function
# . bash.sh >> علشان نقدر نستخدم المتغيرات الي عملنها جوه الاسكربت في ال terminal نشغل الاسكربت بهذا الشكل
#! declare -f function_name >> تستخدم في ال terminal علشان تعرضلك محتوي function معينه
function_name(){
    local name2="From Function"
    echo "Hello ${name2}"
}
export name1="From Global"
name3="From File"
function_name
echo "Hello : ${name1}"
#? ------------------------------------- 42 -------------------------------------
# Video 42 => https://www.youtube.com/watch?v=-VhkKbW4pFc&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=42

#                          >>>>>>>>> Exit Codes <<<<<<<<<<
#? ------------------------------------- 42 -------------------------------------
# دي اسكربت لو الرقم الي جالي من ال $? لا يساوي 0 يعني في مشكله حصلت في الكود اخرج من الاسكربت كله 
# exit >> اخرج من الاسكربت كلها بدون ان تكمل الباقي
ls -lah
rmdir ntfsv6
if [ $? -ne 0 ];then
    echo "Error rmdir ntfsv6"
    exit
else
    echo "File ntfsv6 Creating.."
    mkdir ntfsv6
    ls -lah
fi
#? ------------------------------------- 43 -------------------------------------
# Video 43 => https://www.youtube.com/watch?v=hd6QiLH0ifQ&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=43

#                          >>>>>>>>> Internal Variables part 1 <<<<<<<<<<
#? ------------------------------------- 43 -------------------------------------
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

# IFS=" " >> دي معنها ان افصل بين الادخالات من خلال الفصله لان الافتراضي هو " " المسطره
IFS="," # >> كدا تم تغير المسطرة الي ,

# $PATH >> بتطبع اماكن استدعاء الاموار بتاعت ال bash
echo $PATH

# $PWD >> علشان تعرضلك المكان الي انت في الوقت الحالي
echo $PWD
#? ------------------------------------- 44 -------------------------------------
# Video 44 => https://www.youtube.com/watch?v=N39Ox3tndOI&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=44

#                          >>>>>>>>> Internal Variables part 2 <<<<<<<<<<
#? ------------------------------------- 44 -------------------------------------
# $FUNCNAME >> تستخدم لعرض اسم ال function المستخدمة او الي انت موجود فيها
function_name(){
    echo "$FUNCNAME"
}
function_name
# * ------------------------------ >>
# ${FUNCNAME[0]} >> هو اسم ال function ذات نفسها function_name
# ${FUNCNAME[1]} >> تعني اسم الدالة التي استدعت الدالة الحالية (الدالة "الأم" أو الـ Caller).
function_name(){
    echo "This Is Name Current Function Name : ${FUNCNAME[0]}"
    echo "This Is name Import Function : ${FUNCNAME[1]}"
}
import_func(){
    echo "This Is name Import Function test : ${FUNCNAME[1]}"
    function_name
}
import_func
# * ------------------------------ >>
# $UID >> يعرض لك ال user ID لان كل مستخدم بيكون لي ID معين
echo $UID
# * ------------------------------ >>
# $REPLY >> تستخدم لعرض اخر ادخال اطلب منك 
read -p '> ' 
echo "Last REPLY : $REPLY"
# * ------------------------------ >>
# $PIPESTATUS >> هي هي بالظبط ال $? بيطبع رقم لو العمليه تمت صح بيطبع 0 غير كدا بيطبع ارقام معينه
ls
rm -r ll
# echo $?
echo $PIPESTATUS
# * ------------------------------ >>
# $RANDOM >> تستخدم لطباعه رقم عشوائي من 0 الي 32767
echo $RANDOM
# $(( $RANDOM % 11 )) >> دي كدا معنها اي رقم عشوائي من 0 الي 10 
echo $(( $RANDOM % 11 ))
min=1
max=15
# الثلاث اشكال بيعملوا نفس العمليه بالظبط
echo $(((RANDOM % $((max - min))) + $min )) # من 1 الي 15
echo $(( ( $RANDOM % $max ) + $min )) # من 1 الي 15
echo $(( ( RANDOM % 41 )  + 10 )) # من 10 الي 41
# * ------------------------------ >>
# shuf >> تستخدم لتوليد الارقام العشوائية
# -i >> بتحدد البداية والنهاية
# -n >> بتحدد عدد السطور الي عايزها تتعرض
# -r >> ولكن إذا أردت محاكاة رمي الزهر 3 مرات (حيث يمكن أن يظهر الرقم مرتين)
shuf -i 1-10 -n 6 -r 
# -e >> تمرير العناصر الي انت عايزها
shuf -e "HI" "Welcome" "NICE" "HELP" -n 2
#? ------------------------------------- 45 -------------------------------------
# Video 45 => https://www.youtube.com/watch?v=PT458ialDoI&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=45

#                          >>>>>>>>> Select Keyword <<<<<<<<<<
#? ------------------------------------- 45 -------------------------------------
# select namevar in etc... >> تستخدم لعرض مجموعه من الاختيارات علي حسب الترتيب بالرقم بتاعها
# 1) Windows
# 2) Linux
# 3) Mac
# #? 3 >> Mac
select os in "Windows" "Linux" "Mac";do
    echo "You Choose $os OS"
    break
done
# * ------------------------------ >>
# PS3 >> علشان نقدر نغير الرساله الي بتتعرض جنب الرقم الي بنختاره
# 1) Windows
# 2) Linux
# 3) Mac
# 4) Quit
# Chosse Os : 3 >> You Choose Mac OS
# Chosse Os : 4 >> Select Quit..
PS3="Chosse Os : "
select os in "Windows" "Linux" "Mac" "Quit";do
    if [ $os = "Quit" ];then
        echo "Select Quit.."
        break
    fi
    echo "You Choose $os OS"
done
#? ------------------------------------- 46 -------------------------------------
# Video 46 => https://www.youtube.com/watch?v=GWiKy9Ak1zQ&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=46

#                          >>>>>>>>> Eval <<<<<<<<<<
#? ------------------------------------- 46 -------------------------------------
# eval >> عباره عن امر بينفذ الامر المتخزن بداخل متغير معين
test="date"
echo $test # date >> دا طبعلي الي متخزن بداخل المتغير عادي 
eval $test  # Tue, Apr 28, 2026 11:12:01 >> امال دا فهم انه امر terminal وهذه هي مهمه ال eval
# * ------------------------------ >>
print="echo"
sums="`expr 5 + 3`"
echo $sums
eval $print $sums # echo "`expr 5 + 3`"
# * ------------------------------ >>
# الـ Bash سيرى \$ (علامة دولار مسبوقة بـ backslash)، سيعتبرها مجرد "نص" ولن ينفذها.
# الـ Bash سيرى $target وسيقوم باستبدالها بقيمتها وهي name.
# النتيجة النهائية: سيطبع على الشاشة النص $name كما هو، ولن يطبع "Ahmed"
name="Ahmed"
target="name"

# تنفيذ عادي (سيطبع كلمة name)
echo $target 

# استخدام eval (سيطبع Ahmed)
eval echo \$$target
# * ------------------------------ >>
# دي اله حاسبة
# $REPLY >> استخدمنها هنا علشان يطبع الادخال الي خده منك
calculate () {
  read -p "Enter the first number: " n1
  read -p "Enter the second number: " n2
  echo "$n1 $1 $n2 = $((${n1}${1}${n2}))"
}

PS3="Select the operation: "

select opt in add subtract multiply divide quit; do

  case $opt in
    add)
      calculate "+";;
    subtract)
      calculate "-";;
    multiply)
      calculate "*";;
    divide)
      calculate "/";;
    quit)
      break;;
    *)
      echo "Invalid option $REPLY";;
  esac
done
#? ------------------------------------- 47 -------------------------------------
# Video 47 => https://www.youtube.com/watch?v=6lhjXjmM29I&list=PLBdyyeW_Z41DykncH9zzMk8T7Rm5UlZXd&index=47

#                          >>>>>>>>> Getopts & Shift <<<<<<<<<<
#? ------------------------------------- 47 -------------------------------------
# shift 2 >>  يُستخدم لعمل "إزاحة" للمدخلات (Arguments) التي مررتها للسكربت عند تشغيله.
# تخيل المدخلات كأنها طابور من الأشخاص واقفين بالترتيب: $1, $2, $3, $4... إلخ.
# هذا الأمر يخبر السكربت: "احذف أول خيارين او علي حسب ما انت محدد العدد من الطابور، وحرّك الباقي جهة اليسار خطوتين"
# كدا هتفادي اول 2 عنصر الي هما $1 , $2 هيجيب ال $3 , $4 مكانهم
shift 2
echo $1 $2 $3 $4
# * ------------------------------ >>
# getopts >> تستخدم علشان نعمل 
while getopts 