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

## 🎁 Destek Ol
**Çalışmalarımın sürmesine olanak sağlamak için bağışta bulunabilirsiniz.**
*Lütfen bağış yapmadan önce en az iki kere düşünün çünkü geri ödemeler için ayıracak hiç zamanım ve imkanım yok.*
**Katkılarınız için paylaştıklarımı kullanan herkes adına teşekkürlerimi kabul edin.**

## 🎁 Support Me
**You can support me to keep my projects alive.**
*Please think twice before donating because I have no time or means to handle refunds.*
**On behalf of everyone who uses what I share, I accept your thanks for your contributions.**

[![Papara ile Destekle](https://img.shields.io/badge/Bağış%20Yap-%E2%9D%A4-blue)](https://ppr.ist/1T9dx8tUT)
[![Donate using Papara](https://img.shields.io/badge/Donate-%E2%9D%A4-blue)](https://ppr.ist/1T9dx8tUT)

[![Papara ile Desteklen](1513592797QR.png)](https://ppr.ist/1T99dYF5X)