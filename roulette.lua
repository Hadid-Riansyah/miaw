-- Roulette Wheel Number Modifier Script for Growtopia Private Server

-- Fungsi untuk memodifikasi nomor pada Roulette Wheel
function modifyRouletteNumber(wheelID, newNumber)
    -- Cari Roulette Wheel berdasarkan ID (gunakan API yang sesuai)
    local wheel = FindObjectByID(wheelID)  -- Ganti dengan fungsi yang sesuai dari API private server
    
    if wheel and wheel:GetType() == "RouletteWheel" then
        -- Modifikasi nomor pada Roulette Wheel
        wheel:SetNumber(newNumber)  -- Ganti dengan metode yang sesuai dari API private server
        print("Nomor pada Roulette Wheel dengan ID " .. wheelID .. " telah diubah menjadi " .. newNumber)
    else
        print("Roulette Wheel dengan ID " .. wheelID .. " tidak ditemukan atau bukan tipe RouletteWheel")
    end
end

-- Contoh penggunaan
local wheelID = 12345  -- Ganti dengan ID Roulette Wheel yang ingin dimodifikasi
local newNumber = 7    -- Ganti dengan nomor baru yang diinginkan

modifyRouletteNumber(wheelID, newNumber)
