cd /etc
# เข้าไปในโฟลเดอร์ /etc

cd ../home
# ถอยออกมา directory ก่อนหน้าและเข้าไปในโฟลเดอร์ /home

ls
# แสดงรายการไฟล์และโฟลเดอร์ในโฟลเดอร์ปัจจุบัน

ls -l
# แสดงรายละเอียดไฟล์และโฟลเดอร์ในโฟลเดอร์ปัจจุบัน

ls -lrt
# แสดงรายการไฟล์และโฟลเดอร์ในโฟลเดอร์ปัจจุบัน โดยเรียงตามวันที่แก้ไขล่าสุด

pwd
# แสดง path ปัจจุบัน

cp /etc/passwd/copy1.txt /home/user/copy2.txt
# คือการคัดลอกไฟล์ copy1.txt จากโฟลเดอร์ /etc/passwd ไปยังโฟลเดอร์ /home/user และเปลี่ยนชื่อเป็น copy2.txt

mv /home/user/copy2.txt /home/user/copy3.txt
# คือการย้ายไฟล์ copy2.txt จากโฟลเดอร์ /home/user ไปยังโฟลเดอร์ /home/user และเปลี่ยนชื่อเป็น copy3.txt
# ได้ทั้งการย้ายและเปลี่ยนชื่อไฟล์

mkdir -p /home/user
# คือการสร้างโฟลเดอร์ user ในโฟลเดอร์ /home

touch /home/user/file1.txt
# คือการสร้างไฟล์ file1.txt ในโฟลเดอร์ /home/user

vi /home/user/file1.txt
# คือการแก้ไขไฟล์ file1.txt ในโฟลเดอร์ /home/user

rm /home/user/copy3.txt
# คือการลบไฟล์ copy3.txt ในโฟลเดอร์ /home/user

rm -r /home
# คือการลบโฟลเดอร์ /home


# ตัวอย่าง file
# ls -rlt
# drwxr-xr-x   3 weeraphatyian  staff   96 Aug 28 00:06 hun

drwxr-xr-x 
# d ตัวแรกหมายถึง directory ถ้าเป็น - หมายถึง file
# rwxr-xr-x หมายถึง สิทธิ์ในการเข้าถึงไฟล์หรือโฟลเดอร์ จะแบ่งออกเป็น 3 ส่วน
# ส่วนแรกคือ owner (เจ้าของไฟล์) ส่วนที่สองคือ group (กลุ่มผู้ใช้) และส่วนที่สามคือ others (ผู้ใช้ทั่วไป)
# r หมายถึง read (อ่านไฟล์) w หมายถึง write (เขียนไฟล์) และ x หมายถึง execute (รันไฟล์)

chmod 755 /home/user/file1.txt
# คือการเปลี่ยนสิทธิ์ในการเข้าถึงไฟล์ file1.txt ในโฟลเดอร์ /home/user เป็น rwxr-xr-x
# โดยให้ owner มีสิทธิ์อ่าน เขียน และรันไฟล์ ส่วน group และ others มีสิทธิ์อ่านและรันไฟล์เท่านั้น
# 755 คือ การตั้งค่าสิทธิ์ให้กับไฟล์ โดย 7 หมายถึง rwx (อ่าน เขียน รัน) สำหรับ owner, 5 หมายถึง r-x (อ่าน รัน) สำหรับ group, และ 5 หมายถึง r-x (อ่าน รัน) สำหรับ others

chown user:user /home/user/file1.txt
# คือการเปลี่ยนเจ้าของไฟล์ file1.txt ในโฟลเดอร์ /home/user เป็น user
# user:user หมายถึง user คือเจ้าของไฟล์ และ user คือกลุ่มผู้ใช้


# |
# | คือ pipe ใช้ในการเชื่อมต่อคำสั่งสองคำสั่งเข้าด้วยกัน
# cat /home/user/file1.txt | grep "search_term"
# cat คือ แสดงเนื้อหาของไฟล์ และ grep คือ ค้นหาข้อความ "search_term" ในไฟล์ file1.txt

# &&
# คือการเชื่อมต่อคำสั่งสองคำสั่งเข้าด้วยกัน โดยจะรันคำสั่งที่สองก็ต่อเมื่อคำสั่งแรกสำเร็จ
# command1 && command2
# cd /home/user && ls -ltr
# คือการเข้าไปในโฟลเดอร์ /home/user และแสดงรายการไฟล์และโฟลเดอร์ในโฟลเดอร์นั้น

history
# คือการแสดงประวัติคำสั่งที่เคยรันใน terminal

echo "Hello, World!"
# คือการแสดงข้อความ "Hello, World!" ใน terminal

code .
# คือการเปิดโฟลเดอร์ปัจจุบันใน Visual Studio Code