# การดูและจัดการเนื้อหาไฟล์ผ่าน command line

cat
# แสดงเนื้อหาของไฟล์ เช่น
# cat file.txt แสดงเนื้อหาของไฟล์ file.txt

less
# ดูเนื้อหาของไฟล์แบบ scroll ได้ เช่น
# less file.txt เปิดไฟล์ file.txt เพื่อดูเนื้อหาแบบ scroll ได้
# กดปุ่มลูกศรขึ้นลงเพื่อเลื่อนดูเนื้อหา
# กด q เพื่อออกจากโปรแกรม less

head
# ดูบรรทัดแรกของไฟล์ เช่น
# head -n 10 file.txt แสดง 10 บรรทัดแรกของไฟล์ file.txt
# head -n 5 file.txt แสดง 5 บรรทัดแรกของไฟล์ file.txt
# head file.txt แสดง 10 บรรทัดแรกของไฟล์ file.txt (ค่าเริ่มต้นคือ 10)

tail
# ดูบรรทัดท้ายของไฟล์ เช่น
# tail file.txt แสดง 10 บรรทัดท้ายของไฟล์ file.txt (ค่าเริ่มต้นคือ 10)
# tail -n 2 file.txt แสดง 2 บรรทัดท้ายของไฟล์ file.txt
# tail -f /var/log/syslog แสดงบรรทัดท้ายของไฟล์ syslog และอัปเดตแบบ real-time

nano
# แก้ไขไฟล์ผ่าน terminal เช่น
# nano file.txt เปิดไฟล์ file.txt เพื่อแก้ไข
# ใช้ปุ่มลูกศรเพื่อเลื่อนเคอร์เซอร์
# พิมพ์ข้อความเพื่อแก้ไขไฟล์
# กด Ctrl + O เพื่อบันทึกไฟล์
# กด Enter เพื่อยืนยันชื่อไฟล์
# กด Ctrl + X เพื่อออกจากโปรแกรม nano

vi
# แก้ไขไฟล์ผ่าน terminal เช่น
# vi file.txt เปิดไฟล์ file.txt เพื่อแก้ไข
# กด i เพื่อเข้าสู่โหมดแก้ไข
# พิมพ์ข้อความเพื่อแก้ไขไฟล์
# กด Esc แล้วพิมพ์ :wq เพื่อบันทึกและออกจากโปรแกรม vi
# กด Esc แล้วพิมพ์ :q! เพื่อออกจากโปรแกรม vi โดยไม่บันทึก

grep
# ค้นหาคำในไฟล์ เช่น
# grep "search_term" file.txt ค้นหาคำว่า "search_term" ในไฟล์ file.txt
# grep -i "search_term" file.txt ค้นหาคำว่า "search_term" ในไฟล์ file.txt โดยไม่สนใจตัวพิมพ์ใหญ่
# grep -r "search_term" /path/to/directory ค้นหาคำว่า "search_term" ในไฟล์ทั้งหมดภายในโฟลเดอร์ที่ระบุ