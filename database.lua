---------------------------------------------------
--                                               --
--     This Script Product From Up 2 You Shop    --
--            Thank You For Buy Script           --
--    Discord : https://discord.gg/exzMhJmXyU    --
--                                               --
---------------------------------------------------

M_DB = false -- @==> ถ้าใช้ MongoDB ให้ปรับตรงนี้เป็น true (และต้องไปเปลี่ยน oxmysql ใน fxmanifest.lua ให้เป็น mongodb) (ยังไม่เสร็จกรุณาปิดเป็น false)

FristLoedData = function()
    if not M_DB then
        return MySQL.query.await('SELECT * FROM `2u_status`')
    else
        return MongoDB.Sync.find({ collection = '2u_status' })
    end
end

SaveDatabase = function(DT, ID)
    if not M_DB then
        local RS = MySQL.query.await('SELECT * FROM `2u_status`')

        if json.encode(RS) ~= '[]' then
            local Found = false

            for _,da in pairs(RS) do
                if da.identifier == ID then
                    Found = true
                    break
                end
            end

            if not Found then
                MySQL.insert('INSERT INTO `2u_status` (identifier, status) VALUES (?, ?)', { ID, DT })
            else
                MySQL.update('UPDATE 2u_status SET status = ? WHERE identifier = ?', { DT, ID })
            end
        else
            MySQL.insert('INSERT INTO `2u_status` (identifier, status) VALUES (?, ?)', { ID, DT })
        end
    else

    end
end