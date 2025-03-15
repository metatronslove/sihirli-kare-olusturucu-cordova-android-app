@echo off
echo Cordova global olarak yükleniyor...
npm install -g cordova

echo package.json dosyasının varlığı kontrol ediliyor...
if not exist package.json (
    echo Hata: package.json dosyası bulunamadı!
    pause
    exit /b 1
)

echo Bağımlılıklar yükleniyor...
npm install

echo Cordova projesi başlatılıyor...
if not exist config.xml (
    cordova create . com.sihirli_kare_olusturucu.msapp "Sihirli Kare Oluşturucu"
)

echo Cordova eklentileri yükleniyor...
cordova plugin add cordova-plugin-file
cordova plugin add cordova-plugin-file-opener2
cordova plugin add cordova-plugin-android-permissions

echo Android platformu ekleniyor...
cordova platform add android

echo İkonlar kopyalanıyor...
if exist icon\ (
    xcopy /E /I icon platforms\android\app\src\main\res
    echo İkonlar başarıyla kopyalandı.
) else (
    echo Hata: icon klasörü bulunamadı!
    pause
    exit /b 1
)

echo Kurulum tamamlandı! APK oluşturmak için 'cordova build android' komutunu kullanın.
pause