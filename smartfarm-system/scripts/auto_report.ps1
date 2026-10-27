"================================" > .\backup\bao-cao-su-co.txt
"BAO CAO SU CO - SMARTFARM" >> .\backup\bao-cao-su-co.txt
"Ngay gio:" >> .\backup\bao-cao-su-co.txt
Get-Date >> .\backup\bao-cao-su-co.txt
"================================" >> .\backup\bao-cao-su-co.txt
Get-Content .\data\log-he-thong.log | Select-String "ERROR", "CRITICAL" >> .\backup\bao-cao-su-co.txt
"--------------------------------" >> .\backup\bao-cao-su-co.txt
"TONG SO SU CO: " >> .\backup\bao-cao-su-co.txt
(Get-Content .\data\log-he-thong.log | Select-String "ERROR", "CRITICAL").count >> .\backup\bao-cao-su-co.txt

echo "Trich xuat bao cao su co thanh cong: .backup\bao-cao-su-co.txt"