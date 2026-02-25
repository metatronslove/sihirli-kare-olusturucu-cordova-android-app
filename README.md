# Sihirli Kare Oluşturucu

Bu proje, GitHub'daki bir web sayfasını Cordova ile mobil uygulamaya dönüştürmek için oluşturulmuştur.

## Kurulum

### 1. Cordova'yu Global Olarak Kurun
Cordova'yu global olarak kurmak için:
```bash
npm install -g cordova
```

### 2. Projeyi Klonlayın
Projeyi klonlamak için:
```bash
git clone https://github.com/metatronslove/sihirli-kare-olusturucu-cordova-android-app.git
cd sihirli-kare-olusturucu-cordova-android-app-main
```

### 3. Otomatik Kurulum (Linux/macOS)
1. Terminalde proje dizinine gidin.
2. Aşağıdaki komutları çalıştırın:
   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```

### 4. Otomatik Kurulum (Windows)
1. Proje dizinine gidin.
2. `setup.bat` dosyasını çift tıklayarak çalıştırın.

### 5. Manuel Kurulum
Eğer script'leri kullanmak istemiyorsanız, aşağıdaki adımları takip edin:

1. **Cordova Projesini Başlat** (eğer config.xml yoksa):
   ```bash
   cordova create . com.sihirli_kare_olusturucu.msapp "Sihirli Kare Oluşturucu"
   ```

2. **Bağımlılıkları Yükle**:
   ```bash
   npm install
   ```

3. **Cordova Eklentilerini Yükle**:
   ```bash
   cordova plugin add cordova-plugin-file
   cordova plugin add cordova-plugin-file-opener2
   cordova plugin add cordova-plugin-android-permissions
   ```

4. **Platform Ekle**:
   ```bash
   cordova platform add android
   ```

5. **İkonları Kopyala**:
   ```bash
   mkdir platforms/android/app/src/main/res/icon
   cp -r icon/* platforms/android/app/src/main/res/icon/
   ```

6. **APK Oluştur**:
   ```bash
   cordova build android
   ```

   Oluşturulan APK dosyası, `platforms/android/app/build/outputs/apk/` dizininde bulunur.

7. **Uygulamayı Çalıştır** (İsteğe bağlı):
   ```bash
   cordova run android
   ```

## Katkıda Bulunma
Katkıda bulunmak isterseniz, lütfen bir pull request gönderin.

---

### **Düzeltmeler ve Açıklamalar**

1. **`package.json` Kontrolü**:
   - Script'lerde `package.json` dosyasının varlığı kontrol ediliyor. Eğer dosya yoksa, script hata verip durur.
   - Bu, `npm install` komutunun çalışması için gereklidir.

2. **Cordova Projesi Başlatma**:
   - Eğer `config.xml` dosyası yoksa, `cordova create` komutu ile yeni bir Cordova projesi başlatılır.
   - Bu, proje dizininin Cordova tarafından tanınmasını sağlar.

3. **Hata Mesajları**:
   - Script'lerde her adım için açıklayıcı mesajlar ve hata durumlarında uygun hata mesajları eklenmiştir.

---

## ☕ Destek Olun / Support

Projemi beğendiyseniz, bana bir kahve ısmarlayarak destek olabilirsiniz!

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://buymeacoffee.com/metatronslove)

Teşekkürler! 🙏
