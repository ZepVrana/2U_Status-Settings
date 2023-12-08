```lua

-- [[ Client Side ]] --

-- Exports ต่างๆ

-- สั่งให้ไม่มีการเปลี่ยนค่าของหลอดอาหาร
exports["2U_Status"]:FreezeStatus(true)

-- สั่งยกเลิกให้อาหารกลับมาเปลี่ยนค่าของหลอดอาหารปกติ
exports["2U_Status"]:FreezeStatus(false)

-- เปลี่ยนจำนวนการลบของทุกหลอดเป็นปกติ
exports["2U_Status"]:ChangeRemove('SetNormal')

-- เปลี่ยนจำนวนการลบของแต่ละหลอดเป็นตามที่ตั้ง
exports["2U_Status"]:ChangeRemove('SetRemove', ชื่อหลอดที่เซ็ต, จำนวนที่ต้องการจะให้หลอดเปลี่ยนไปลบจำนวนนั้น)

-- ดึงข้อมูล
exports["2U_Status"]:GetStatus(ชื่อหลอดที่จะดึงข้อมูล) การดึงข้อมูลจะดึงเลขออกมาตั้งแต่ 0 - 100 -- @==> ยกตัวอย่าง exports["2U_Status"]:GetStatus('hunger')

-- เซ็ตค่าหลอด
exports["2U_Status"]:SetStatus(ชื่อหลอดที่เซ็ต, จำนวน) -- @==> ยกตัวอย่าง exports["2U_Status"]:SetStatus('hunger', 50)

-- ลบค่าหลอด
exports["2U_Status"]:RemoveStatus(ชื่อหลอดที่จะลบ, จำนวน) -- @==> ยกตัวอย่าง exports["2U_Status"]:RemoveStatus('hunger', 50)

-- บวกค่าหลอด
exports["2U_Status"]:AddStatus(ชื่อหลอดที่เซ็ตจะบวก, จำนวน) -- @==> ยกตัวอย่าง exports["2U_Status"]:AddStatus('hunger', 50)

-- [[ Server Side ]] --

-- ดึงข้อมูล (ไม่ควรใช้ในกรณีดึงหลอดเลือด)
exports["2U_Status"]:GetStatus(ซอสผู้เล่น, ชื่อหลอดที่จะดึงข้อมูล) การดึงข้อมูลจะดึงเลขออกมาตั้งแต่ 0 - 100 -- @==> ยกตัวอย่าง exports["2U_Status"]:GetStatus(xPlayer.source, 'hunger')

-- เซ็ตค่าหลอด
exports["2U_Status"]:SetStatus(ซอสผู้เล่น, ชื่อหลอดที่เซ็ต, จำนวน) -- @==> ยกตัวอย่าง exports["2U_Status"]:SetStatus(xPlayer.source, 'hunger', 50)

-- ลบค่าหลอด
exports["2U_Status"]:RemoveStatus(ซอสผู้เล่น, ชื่อหลอดที่จะลบ, จำนวน) -- @==> ยกตัวอย่าง exports["2U_Status"]:RemoveStatus(xPlayer.source, 'hunger', 50)

-- บวกค่าหลอด
exports["2U_Status"]:AddStatus(ซอสผู้เล่น, ชื่อหลอดที่เซ็ตจะบวก, จำนวน) -- @==> ยกตัวอย่าง exports["2U_Status"]:AddStatus(xPlayer.source, 'hunger', 50)

```