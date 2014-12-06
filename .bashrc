#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTFILESIZE=400000000
HISTSIZE=1000
PROMPT_COMMAND="history -a"
export HISTSIZE PROMPT_COMMAND
shopt -s histappend

alias cls="echo -ne '\ec'"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias l='ls -l'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias mkdir='mkdir -v'
alias rmdir='rmdir -v'
alias cd.='cd .'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias cd-='cd -'
alias pnig='ping'
alias axel='axel -a'
alias sync='time sync'
alias ':q'='exit'
alias ':x'='exit'
alias timidity='timidity --output-stereo -Aa -a -C0 --reverb=G'
alias ssc="chromium --proxy-server=socks5://localhost:9050 --restore-last-session &"
alias ssr="chromium --restore-last-session &"
alias ssw3m="w3m -o http_proxy=http://localhost:8118 -o https_proxy=http://localhost:8118"
alias ssp="export http_proxy=http://localhost:8118 https_proxy=http://localhost:8118"
alias ssz="tsocks socat tcp4-listen:38333,bind=127.0.0.1,reuseaddr,fork proxy:127.0.0.1:127.0.0.1:38333,proxyport=8118"
alias ssock="export http_proxy=socks5://localhost:9050 https_proxy=socks5://localhost:9050"
alias nossp="export http_proxy= https_proxy="
alias wl11="sudo iwconfig wlan1 rate 11M"
alias wwl="watch -n .5 -d iwconfig wlan1"
alias nvidia-settings="optirun nvidia-settings -c :8"
alias blender="optirun blender"
alias geoiplookup="geoiplookup -d /usr/local/share/GeoIP"
alias geoiplookup6="geoiplookup6 -d /usr/local/share/GeoIP"
alias youtube-dl="youtube-dl --proxy=http://127.0.0.1:8118"
alias jar="fastjar"
alias nautilus.="nautilus . & true"
alias optipnge="optipng -o7 -zm1-9"
alias jajp="export LC_ALL=ja_JP.UTF-8"
alias btcaddr="echo 139NZS2LKViadDXWCndk3HHNWyNkVkw2VG | xsel -b"
alias wgcook='wget -c --load-cookies /tmp/cookies.txt'
alias arcook='nossp;aria2c --load-cookies=/tmp/cookies.txt -x 5'
alias ccj='cat ~/work/abs/librime/src/librime/data/minimal/cangjie5.dict.yaml | grep'
alias new='lilyterm & true'
alias rew='lilyterm & exit'
alias mosh='mosh -a'
alias ffprobefs='ffprobe -show_format -show_streams -print_format json -loglevel repeat+warning -i'
alias mpvhw='mpv --hwdec=vaapi-copy'
alias Xephyr1='Xephyr -screen 1364x700'
alias maxima='rlwrap maxima'
alias bilidan='/home/brilliant/work/BiliDan/bilidan.py -v --mpvflags="--pause --keep-open" --d2aflags "font_face=Helvetica,text_opacity=0.75"'
alias atticc="exiftool -Xresolution=122 -Yresolution=122 '-icc_profile<=/home/brilliant/.local/share/icc/edid-9b2741a8a54580f96cebea1ba398be7a.icc'"
alias attsrgb="exiftool -Xresolution=96 -Yresolution=96 '-icc_profile<=/usr/share/color/icc/colord/sRGB.icc'"
alias attsrgb150="exiftool -Xresolution=144 -Yresolution=144 '-icc_profile<=/usr/share/color/icc/colord/sRGB.icc'"
alias attsrgb200="exiftool -Xresolution=192 -Yresolution=192 '-icc_profile<=/usr/share/color/icc/colord/sRGB.icc'"
alias pabaudline="parecord -r -d alsa_output.pci-0000_00_1b.0.analog-stereo.monitor --raw --format float32le --rate 48000 | baudline -stdin -channels 2 -format le32f -samplerate 48000 -scaleby 65536"
#alias google-chrome-stable="google-chrome-stable --allow-running-insecure-content --enable-user-stylesheet"
export NSPR_LOG_MODULES=POP3:5,IMAP:5,SMTP:5 # thunderbird
export EDITOR='vim'
export LESS='-RM'
PS1='[\u@\h \W]\$ '
export PYTHONSTARTUP=$HOME/.pystartup
export WINEDLLOVERRIDES=winemenubuilder.exe=d
export PYTHONPATH=$HOME/work/PythonPath
export VDPAU_DRIVER=va_gl
export MMPAT_PATH_TO_CFG=/etc/timidity++/freepats
export SSH_ASKPASS=/usr/lib/seahorse/seahorse-ssh-askpass
. ~/.xprofile
