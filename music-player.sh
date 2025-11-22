#!/bin/bash

# YouTube Music Player for Terminal
# Description: Simple bash/zsh scripts to play YouTube music from terminal
# Requirements: mpv, yt-dlp

alias listen='mpv --ytdl-format=bestaudio'

# Basit müzik fonksiyonu
music() {
    local query="$*"
    local url
    
    if [ -z "$query" ]; then
        echo "Kullanım: music <şarkı adı>"
        return 1
    fi
    
    echo "Aranıyor: $query"
    
    url=$(yt-dlp --no-warnings --default-search "ytsearch1" -f "bestaudio[ext=m4a]/bestaudio" --get-url "$query" 2>/dev/null)
    
    if [ -n "$url" ]; then
        echo "Çalınıyor: $query"
        mpv --no-video "$url"
    else
        echo "Şarkı bulunamadı: $query"
        return 1
    fi
}

# Etkileşimli müzik fonksiyonu
ytmusic() {
    local query url
    
    # Başlangıçta argüman varsa ilk şarkıyı çal
    if [ $# -gt 0 ]; then
        query="$*"
        echo "Aranıyor: $query"
        
        url=$(yt-dlp --no-warnings -f "bestaudio[ext=m4a]/bestaudio" --get-url "ytsearch1:$query" 2>/dev/null)
        
        if [ -n "$url" ]; then
            echo "Çalınıyor: $query"
            mpv --no-video "$url"
        else
            echo "Şarkı bulunamadı: $query"
        fi
    fi

    # Etkileşimli döngü
    while true; do
        echo ""
        read "query?Şarkı ara (çıkmak için 'exit'): "
        
        if [[ "$query" == "exit" || "$query" == "quit" || "$query" == "q" ]]; then
            break
        fi
        
        if [ -z "$query" ]; then
            continue
        fi
        
        echo "Aranıyor: $query"
        url=$(yt-dlp --no-warnings -f "bestaudio[ext=m4a]/bestaudio" --get-url "ytsearch1:$query" 2>/dev/null)
        
        if [ -n "$url" ]; then
            echo "Çalınıyor: $query"
            mpv --no-video "$url"
        else
            echo "Şarkı bulunamadı: $query"
        fi
    done
}

# Çalma listesi fonksiyonu
playlist() {
    if [ $# -eq 0 ]; then
        echo "Kullanım: playlist \"şarkı1\" \"şarkı2\" ..."
        return 1
    fi
    
    local song
    echo "Çalma listesi başlıyor... (${#} şarkı)"
    
    for song in "$@"; do
        echo ""
        echo "Çalınıyor: $song"
        music "$song"
        
        if [ $? -ne 0 ]; then
            break
        fi
    done
    
    echo "Çalma listesi tamamlandı!"
}
