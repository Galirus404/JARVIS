#!/bin/bash
# Membuat log file untuk alarm
touch /storage/emulated/0/alarm_log.txt
# Fungsi untuk set alarm sahur
set_sahur_alarm() {
    while true; do
        current_time=$(date +%H:%M)
        if [[ "$current_time" == "03:30" ]]; then
            echo "$(date)status : Alarm Sahur" >> /storage/emulated/0/alarm_log.txt
            play -q $HOME/JARVIS/sound/timeset.mp3
            play -q $HOME/JARVIS/sound/alaram.mp3
            break
        fi
        sleep 60
    done
}

# Fungsi untuk set alarm buka puasa
set_buka_alarm() {
    while true; do
        current_time=$(date +%H:%M)
        if [[ "$current_time" == "17:45" ]]; then
            echo "$(date)status : Alarm Buka Puasa" >> /storage/emulated/0/alarm_log.txt
            play -q $HOME/JARVIS/sound/timeset.mp3
            play -q $HOME/JARVIS/sound/alaram.mp3
            break
        fi
        sleep 60
    done
}
shubuh() {
    while true; do
        current_time=$(date +%H:%M)
        if [[ "$current_time" == "04:22" ]]; then
            echo "$(date)status : Sholat Shubuh" >> /storage/emulated/0/alarm_log.txt
	for ((i=1; i<=3; i++)); do
            play -q $HOME/JARVIS/sound/alaram.mp3
	done
            break
        fi
        sleep 60
    done
}

Dzuhur() {
    while true; do
        current_time=$(date +%H:%M)
        if [[ "$current_time" == "11:45" ]]; then
            echo "$(date)status : Sholat Dzuhur" >> /storage/emulated/0/alarm_log.txt
	for ((i=1; i<=3; i++)); do
            play -q $HOME/JARVIS/sound/alaram.mp3
	done
            break
        fi
        sleep 60
    done
}

ashar() {
    while true; do
        current_time=$(date +%H:%M)
        if [[ "$current_time" == "15:00" ]]; then
            echo "$(date)status : Sholat Ashar" >> /storage/emulated/0/alarm_log.txt
          for ((i=1; i<=3; i++)); do
	    play -q $HOME/JARVIS/sound/alaram.mp3
	  done
            break
        fi
        sleep 60
    done
}

magrib() {
    while true; do
        current_time=$(date +%H:%M)
        if [[ "$current_time" == "18:00" ]]; then
            echo "$(date)status : Sholat Magrib" >> /storage/emulated/0/alarm_log.txt
	for ((i=1; i<=3; i++)); do
            play -q $HOME/JARVIS/sound/alaram.mp3
	done
            break
        fi
        sleep 60
    done
}

Isyak() {
    while true; do
        current_time=$(date +%H:%M)
        if [[ "$current_time" == "18:45" ]]; then
            echo "$(date)status : Sholat Isyak" >> /storage/emulated/0/alarm_log.txt
	for ((i=1; i<=3; i++)); do
            play -q $HOME/JARVIS/sound/alaram.mp3
	done
            break
        fi
        sleep 60
    done
}
# Memulai alarm sahur dan buka puasa serta alarm jam sendiri
while true; do
    set_sahur_alarm &
    set_buka_alarm &
    shubuh &
    Dzuhur &
    ashar &
    magrib &
    Isyak &
    wait
done
