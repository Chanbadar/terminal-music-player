# Terminal YouTube Music Player

Simple bash/zsh scripts to play YouTube music directly from your terminal.
Features

    🎵 Search and play music from YouTube

    🔍 Interactive search mode

    📃 Playlist support

Installation

    Make sure you have mpv and yt-dlp installed:

bash

# macOS (Homebrew)
brew install mpv yt-dlp

# Ubuntu/Debian
sudo apt install mpv
pip install yt-dlp

# Arch Linux
sudo pacman -S mpv yt-dlp

    Add the music-player.sh script to your .zshrc or .bashrc file:

bash

nano ~/.zshrc

    Copy and paste the entire script into your file.

    Apply the changes:

bash

source ~/.zshrc

Usage
Play a single song:
bash

music "song name"

Interactive mode:
bash

ytmusic

Play first song and enter interactive mode:
bash

ytmusic "first song"

Playlist:
bash

playlist "song1" "song2" "song3"

Functions

    music "song" - Play a single song

    ytmusic - Interactive music mode

    playlist "song1" "song2" - Playlist support

    listen - Alias for playing YouTube links

Requirements

    mpv (media player)

    yt-dlp (YouTube content downloader)

    bash or zsh
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

2. `music-player.sh` scriptini `.zshrc` veya `.bashrc` dosyanıza ekleyin:

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
