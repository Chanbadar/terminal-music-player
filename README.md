# Terminal YouTube Music Player

Terminal üzerinden YouTube müzik çalmanızı sağlayan basit bash/zsh scriptleri.

## Özellikler

- 🎵 YouTube'dan müzik arama ve çalma
- 🔍 Etkileşimli arama modu
- 📃 Çalma listesi desteği

## Kurulum

1. Bu scriptleri kullanmak için `mpv` ve `yt-dlp` kurulu olmalı:

```bash
# macOS (Homebrew)
brew install mpv yt-dlp

# Ubuntu/Debian
sudo apt install mpv
pip install yt-dlp

# Arch Linux
sudo pacman -S mpv yt-dlp
```

2. Scriptleri `.zshrc` veya `.bashrc` dosyanıza ekleyin:

```bash
nano ~/.zshrc
```

3. Tüm scripti dosyanıza kopyalayıp yapıştırın.

4. Değişiklikleri uygulayın:
```bash
source ~/.zshrc
```

## Kullanım

### Tek şarkı çal:
```bash
music "şarkı adı"
```

### Etkileşimli mod:
```bash
ytmusic
```

### İlk şarkıyı çalıp etkileşimli moda geç:
```bash
ytmusic "ilk şarkı"
```

### Çalma listesi:
```bash
playlist "şarkı1" "şarkı2" "şarkı3"
```


## Fonksiyonlar

- `music "şarkı"` - Tek şarkı çalar
- `ytmusic` - Etkileşimli müzik modu
- `playlist "şarkı1" "şarkı2"` - Çalma listesi
- `listen` - YouTube linklerini çalmak için alias

## Gereksinimler

- `mpv` (medya oynatıcı)
- `yt-dlp` (YouTube içerik indirme)
- `bash` veya `zsh`
