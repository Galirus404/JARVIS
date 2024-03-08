

musik="$HOME/JARVIS/music"
if [ -f "$musik" ]; then
music_galirus=( "music.mp3" "music1.mp3" "music2.mp3" "music3.mp3" )
random_index=$((RANDOM % ${#music_galirus[@]}))
music_galirus="${music_galirus[random_index]}"
play -q $HOME/JARVIS/music/$music_galirus repeat vol 0.1 &>/dev/null &
else
cd $HOME/JARVIS/
git clone https://github.com/Galirus404/music
git clone --depth 1 https://github.com/Galirus404/music
music_galirus=( "music.mp3" "music1.mp3" "music2.mp3" "music3.mp3" )
random_index=$((RANDOM % ${#music_galirus[@]}))
music_galirus="${music_galirus[random_index]}"
play -q $HOME/JARVIS/music/$music_galirus repeat vol 0.1 &>/dev/null &
fi