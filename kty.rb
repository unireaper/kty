#secenekler
system("clear")
puts "KTY(Kolay Tarayıcı Yükleme) aracına hoş geldiniz."
puts "Lütfen hangi tarayıcı yüklemek istediğinizi aşağıdan seçiniz: "
puts "1- Brave Browser"
puts "2- Chromium Browser"
puts "3- Google Chrome Browser"
puts "4- Falkon Browser"

print "Seçim yapın(1-4): "
secim = gets.chomp.to_i

case secim
    when 1 #Brave Browser kurulumu
        system("echo 'Brave Browser kurulmaya başlıyor.....'")
        system("sudo apt install -y curl")
        system("sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg")
        system("echo 'deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main' | sudo tee /etc/apt/sources.list.d/brave-browser-release.list")
        system("sudo apt update")
        system("sudo apt install -y brave-browser")
        puts "Brave Browser kuruldu."
    
    when 2 #Chromium Browser kurulumu
        system("echo Chromium kurulmaya başlıyor.....")
        system("sudo apt install -y chromium")
        puts "Chromium Browser kuruldu."     
    
    when 3 # Chrome Browser
        system("echo Google Chrome Browser kurulmaya başlıyor.....")  
        system("sudo apt install -y wget")
        system("wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb")
        system("sudo dpkg -i google-chrome-stable_current_amd64.deb")
        system("sudo rm google-chrome-stable_current_amd64.deb")
        puts "Google Chrome Browser kuruldu." 

    when 4 #Falkon Browser kurulumu
        system("echo Falkon Browser")
        system("sudo apt install -y falkon")
        puts "Falkon Browser kuruldu."
else
    puts "Geçersiz seçim yaptınız. Lütfen 1 ile 4 arasında sayı girin."
end
