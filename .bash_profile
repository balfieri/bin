# ~/.bash_profile should have:
# export SSHPASS="..."
# source ~/Code/bin/.bash_profile
#
set -o vi

export BASH_SILENCE_DEPRECATION_WARNING=1
export PS1='\[\e[1;33m\w) \e[m\]'
export sd=/Volumes/SLOWDATA
export fd=/Volumes/SAMSUNG
export md=/Volumes/memories
export d=~/IDrive
export n=$d/__NVidia
export c=~/Code
export b=$c/bin
export a=$d/Aviation
export cs=$c/cs
export cst=$c/study
export cw=$c/wordle
export at=$a/Trips
export ca=$c/aws
export cc=$c/cnerf
export ch=$c/hwnerf
export ci=$c/instant-ngp
export ct=$c/tiny-cuda-nn
export ce=$c/eleksmaker
export cg=$c/gfx3d
export cl=$c/layout
export cll=$c/layout/Layout.h
export cm=$c/cm
export cmm=$c/cm/hw/cm
export cme=$c/cm/hw/e
export cn=$c/mnt
export cq=$c/qam
export cr=$c/crashes
export crr=$c/crashes/raw
export cts=$ct/Source
export cvp=$c/vpy
export cp=$c/Pam
export cpq=$cp/pam_questions
export i=$d/Italian
export m=$d/Manuals
export ma=$d/Manuals/Aviation
export mam=$d/Manuals/Aviation/Medical
export mr=$d/Manuals/RT
export nb=$n/breo
export nbc=$n/breo/cmod
export nbp=$n/breo/prof
export nc=$c/crg
export ncm=$nc/mc18
export ncr=$nc/rc18_top
export nd=$n/dd
export ndr=$n/dd/rs5
export ng=$n/graphene
export nn=$n/nanovdb
export ns=$n/slides
export ne=$n/scenes
export nerm=$n/scenes/Research/Main
export w=$d/Websites
export wc=$w/imustcook.com
export bw=~/balfieri
export bws=${bw}/save
export fp=$c/flightplan
export fs=$c/flightsim
export xp=~/xplane1150
export xc=$x/*ery
export xrc=$xr/*ery
export xbc=$xb/*ery
export xp=$x/Resources/plugins
export x11p=$x11/Resources/plugins
alias umfd='diskutil unmount $fd'
alias umsd='diskutil unmount $sd'
alias ummd='diskutil unmount $md'
alias gs='git status'
alias ga='git add --all; git status'
alias gc='git commit -m' 
alias gce='git config --edit' 
alias gcl='git config --list' 
alias gco='git checkout'
alias gcoh='git checkout HEAD'
alias gcom='git checkout master'
alias gp='git push -u origin master'
alias gpd='git push -u origin master --dry-run'
alias gpu='git pull'
alias gpud='git pull --dry-run'
alias gpl='git pull'
alias gdu='git diff'                
alias gdo='git diff origin/master'                
alias gdr='git fetch; git diff origin/master'                
alias gds='git diff --staged'                
alias gdsr='git fetch; git diff --staged origin/master'                
alias gdh='git diff HEAD'
alias gdhr='git fetch; git diff HEAD origin/master'
alias gdmr='git fetch; git diff master origin/master'
alias gdcr='git fetch; git diff --cached origin/master'
alias gf='git fetch'
alias gm='git merge'
alias gprm='git filter-repo --invert-paths --path'
alias gptc='gpt -is_italian_convo 1'
alias gptt='gpt -c translations'
alias gpta='gpt -c transcription'
alias sayi='say -v Alice -r 120'
alias sayf='say -v Thomas -r 120'
alias s5='sayir 5'
alias gst='git stash push'                 
alias gstp='git stash pop'
alias gstl='git stash list'          
alias gstc='git stash clear'
alias gbl='git branch -a -vvv'        
alias gt='git tag -a'
alias gh='git symbolic-ref HEAD'
alias gl='git log --graph --stat'
alias gla='git log --graph --stat --all --full-history --'
alias gls='git ls-files --full-name --recurse-submodules'
alias grh='git ls-remote --heads'
alias grt='git ls-remote --tags'
alias grl='git remote -v'
alias grs='git remote show origin'
alias grhm='git fetch origin; git reset --hard origin/master'
alias gtrack='find . -size +5M -print | while read f; do git lfs track $f; git add $f; done'
export AWS_DEFAULT_PROFILE=default
export AWS_MASTER_INSTANCE=i-0128179c44436f90a
alias kr='defaults write -g ApplePressAndHoldEnabled -bool false'
alias kh='defaults write -g ApplePressAndHoldEnabled -bool true'
alias sts='aws sts'
alias ec2='aws ec2'
alias efs='aws efs'
alias s3='aws s3'
alias cona='conda activate'
alias cond='conda deactivate'
alias sticks='cd $n/sticks; /usr/local/opt/perl@5.18/bin/perl sticks.pl'
alias vu='vsim tb_NV_vu'
alias ppl='cd $cst; ./run.py aviation -q 0 -ps 2'
alias ifr='cd $cst; ./run.py aviation_ifr -q 0 -ps 2'
alias vppl='cd $cst; vi aviation.txt'
alias vifr='cd $cst; vi aviation_ifr.txt'
alias vitb='cd $cst; vi italian_basic.txt'
alias vitb2='cd $cst; vi italian_basic2.txt'
alias vita='cd $cst; vi italian_advanced.txt'
alias vite='cd $cst; vi italian_expressions.txt'
alias vitec='cd $cst; vi italian_expressions_common.txt'
alias viteo='cd $cst; vi italian_expressions_other.txt'
alias vitag='cd $cst; vi american_expressions_get.txt'
alias vitaf='cd $cst; vi american_expressions_favorite.txt'
alias vitt='cd $cst; vi italian_tongue_twisters.txt'
alias vitv='cd $cst; vi italian_vulgar.txt'
alias vitpr='cd $cst; vi italian_passato_remoto.txt'
alias viw1='cd $cst; vi words1.out'
alias vig1='cd $cst; vi grit1.out'
alias itb='cd $cst; ./run.py italian_basic -q 0 -ps 2 -cat ""'
alias itbs='cd $cst; ./run.py italian_basic -q 0 -ps 0 -cat "" -s 1'
alias ita='cd $cst; ./run.py italian_advanced -q 0 -ps 2 -cat ""'
alias itas='cd $cst; ./run.py italian_advanced -q 0 -ps 0 -cat "" -s 1'
alias itaf='cd $cst; ./run.py american_expressions_favorite -q 0 -ps 2 -cat ""'
alias itag='cd $cst; ./run.py american_expressions_get -q 0 -ps 2 -cat ""'
alias itec='cd $cst; ./run.py italian_expressions_common -q 0 -ps 4 -cat ""'
alias iteo='cd $cst; ./run.py italian_expressions_other -q 0 -ps 4 -cat ""'
alias itt='cd $cst; ./run.py italian_tongue_twisters -q 0 -ps 4 -cat ""'
alias itts='cd $cst; ./run.py italian_tongue_twisters -q 0 -ps 0 -cat "" -s 1'
alias itv='cd $cst; ./run.py italian_vulgar -q 0 -ps 4 -cat ""'
alias itvs='cd $cst; ./run.py italian_vulgar -q 0 -ps 0 -cat "" -s 1'
alias itpr='cd $cst; ./run.py italian_passato_remoto -q 0 -ps 4 -cat ""'
alias itev='cd $cst; ./run.py italian_expressions,italian_vulgar -q 0 -ps 4 -cat ""'
alias it='cd $cst;  ./run.py italian_basic,italian_advanced,italian_expressions_common,italian_expressions_other,american_expressions_get,american_expressions_favorite,italian_vulgar,italian_passato_remoto,italian_tongue_twisters -q 0 -ps 1 -cat ""'
alias its='cd $cst;  ./run.py italian_basic,italian_advanced,italian_expressions_common,italian_expressions_other,american_expressions_get,american_expressions_favorite,italian_vulgar,italian_passato_remoto,italian_tongue_twisters -q 0 -ps 0 -cat "" -s 1'
alias fditb='cd $cst; ./find_dups.py italian_basic'
alias fdita='cd $cst; ./find_dups.py italian_advanced'
alias fditec='cd $cst; ./find_dups.py italian_expressions_common'
alias fditeo='cd $cst; ./find_dups.py italian_expressions_other'
alias fditag='cd $cst; ./find_dups.py american_expressions_get'
alias fditaf='cd $cst; ./find_dups.py american_expressions_favorite'
alias fditv='cd $cst; ./find_dups.py italian_vulgar'
alias fditpr='cd $cst; ./find_dups.py italian_passato_remoto'
alias fdit='cd $cst; ./find_dups.py italian_basic,italian_advanced,italian_expressions_common,italian_expressions_other,american_expressions_get,american_expressions_favorite,italian_vulgar,italian_passato_remoto,italian_tongue_twisters'
alias fditq='cd $cst; ./find_dups.py italian_basic,italian_advanced,italian_expressions_common,italian_expressions_other,american_expressions_get,american_expressions_favorite,italian_vulgar,italian_passato_remoto,italian_tongue_twisters -q 1'
alias pitb='cd $cst; ./play_puz.py -subjects italian_basic'
alias pita='cd $cst; ./play_puz.py -subjects italian_advanced'
alias pitar='cd $cst; ./play_puz.py -subjects italian_advanced -start_pct 85'
alias pitec='cd $cst; ./play_puz.py -subjects italian_expressions_common'
alias piteo='cd $cst; ./play_puz.py -subjects italian_expressions_other'
alias pitpr='cd $cst; ./play_puz.py -subjects italian_passato_remoto'
alias itw='cd $cst; ./doit.www'
alias itwn='cd $cst; ./gen_www.py -cw_en 0'
alias grit='cd $cst; ./grit.py' 
grits() { cd $cst; ./grit.py $1 -s 1; }
alias gw1='cd $cst; grit_words.py -file words1.out -one_per_line 1 >& grit1.out; vi grit1.out'
alias sit='cd $cst; ./talk.py'
alias xw='cd $cst; open www/index.html'
f2c()  { calc "f2c($1)"; }
c2f()  { calc "c2f($1)"; }
k2m()  { calc "k2m($1)"; }
m2k()  { calc "m2k($1)"; }
p2k()  { calc "p2k($1)"; }
k2p()  { calc "k2p($1)"; }
o2g()  { calc "o2g($1)"; }
g2o()  { calc "g2o($1)"; }
i2m()  { calc "i2m($1)"; }
m2i()  { calc "m2i($1)"; }
f2m()  { calc "f2m($1)"; }
m2f()  { calc "m2f($1)"; }
bmi()  { calc "bmi(p2k($1), i2m(71))"; }
nv2mc() { calc "nv2mc($1)"; }
mc2nv() { calc "mc2nv($1)"; }
cagr() { calc "cagr($1, $2, $3)"; }
fv()   { calc "fv($1, $2, $3)"; }
pv()   { calc "pv($1, $2, $3)"; }
lfv()  { calc "lfv($1, $2, $3, $4)"; }
cmileage() { calc "($1-64280)*365/(dayssince('10 feb 2024'))"; }
pmileage() { calc "($1-125891)*365/(dayssince('10 feb 2024'))"; }
vmileage() { calc "($1-4053)*365/(dayssince('10 feb 2024'))"; }

alias tmcc='tmux -CC'
alias tmcca='tmux -CC attach'
alias ic='imgcat'
alias ico='imgcat output.png'

alias e=env
alias eg='env | grep'
alias h=history
alias hg='history | grep' 
alias a=alias
alias ag='alias | grep $@'
alias ge='grep -i error'
alias cprp='cp -R -p'
alias cprP='cp -R -P'
alias j='jobs -l'
alias vc='vi $b/.bash_profile; source $b/.bash_profile'
alias vch='vi ~/.bash_profile; source ~/.bash_profile'
alias sc='source $b/.bash_profile'
alias sch='source ~/.bash_profile'
alias nanoc='nano $b/.bash_profile; source $b/.bash_profile'
alias zcat='gzcat'
alias ls='ls -AG'
alias ll='ls -AlG'
alias lt='ls -Alt'
alias ltl='ls -Alt | less'
alias dloop='while true; do sleep 30;'
alias c=calc
alias cl=clear
alias fgr='find . -depth -print | grep'
alias psg='ps -ef | grep ${USER} | grep'
alias tot="awk '{ total += \$1 }; END { print total }'"
alias vmo='vi make.out'
alias vmo2='vi make2.out'
alias vmo3='vi make3.out'
alias tf='tail -f'
alias mmo='more make.out'
alias mmo2='more make2.out'
alias mmo3='more make3.out'
alias mbo='more bob.out'
alias tmo='tail -f make.out'
alias tmo2='tail -f make2.out'
alias tmo3='tail -f make3.out'
alias tbo='tail -f bob.out'
alias top='/usr/bin/top -o cpu'
alias dfm='df -m .'
alias dfg='df -g .'
alias dum='du -m'
alias dug='du -g'
alias goo='/applications/Google*/Contents/MacOS/Google* --headless --screenshot --force-device-scale-factor=8 --window-size=1024,2048'
alias goof='/applications/Google*/Contents/MacOS/Google* --headless --screenshot --force-device-scale-factor=8 --window-size=256,256'
alias temp='~/osx-cpu-temp/osx-cpu-temp'
alias freq='sysctl -a | grep cpufrequency'
alias suda='sudo --user=admin'
alias db='lldb --source ~/.lldbrc'
alias doa='disown -a'
alias ngm='open $d/Manuals/Analog/ngspice*.pdf'
alias hsme='open $d/Manuals/Analog/hspice_elements.pdf'
alias sage='/Applications/SageMath-8.5.app/sage'
#alias gw='/Applications/gtkwave.app/Contents/MacOS/gtkwave-bin >& /dev/null &'
alias gw='gtkwave --rcvar "fontname_signals Monospace 20" --rcvar "fontname_waves Monospace 18" >& /dev/null &'
alias vl='verilator --lint-only -Wall'
alias vcc='verilator --cc'
alias mouser='open $d/Manuals/Analog/mouser.pdf'
alias o=open
alias oo='open `ls -t out*.png | head -1`'
alias jn='jupyter notebook'
alias jhtml='jupyter nbconvert --to html'
alias sha256='shasum -a 256 -b'
alias sha512='shasum -a 512 -b'
alias O0='export EXTRA_CFLAGS=-O0; touch Makefile'
alias O3='export EXTRA_CFLAGS=-O3; touch Makefile'
alias ip='idf.py'
alias ipb='idf.py build'
alias ipc='idf.py fullclean'
alias ipfm='idf.py flash monitor'
alias ipm='idf.py monitor'

GPG_TTY=$(/usr/bin/tty)
SSH_AUTH_SOCK="$HOME/.gnupg/S.gpg-agent.ssh"
export GPG_TTY SSH_AUTH_SOCK
killall gpg-agent >& /dev/null
gpg-agent --daemon >& /dev/null
#gpgconf --launch gpg-agent
alias gar='killall gpg-agent; gpg-agent --daemon'
alias gpgeb='gpg --encrypt --recipient "Bob Alfieri"'
alias gpgey='gpg --encrypt --recipient yubikey1'

alias up1='denon vol_up1'
alias up2='denon vol_up2'
alias dn1='denon vol_down1'
alias dn2='denon vol_down2'
alias atv='atvremote -n "Family Room" --mrp-credentials `cat ~/mrp_fr_creds` cli'

export AWS_HOME="${c}/aws"
export OPENAI_API_KEY=`cat ~/.openai_key.txt`
export ASSIMP_HOME="${c}/assimp"
export MAGICK_HOME="${HOME}/ImageMagick-7.0.7"
export MAGICK_THREAD_LIMIT=12
export ELMER_HOME=$c/elmerfem/install
export DYLD_LIBRARY_PATH=${MAGICK_HOME}/lib/:${DYLD_LIBRARY_PATH}:${c}/libgdsii/lib/.libs
export DYLD_LIBRARY_PATH=/usr/local/opt/openssl/lib:$DYLD_LIBRARY_PATH
export DYLD_LIBRARY_PATH=${DYLD_LIBRARY_PATH}:$ELMER_HOME/lib
#export PYTHONPATH="/usr/local/lib/python3.7:$c/devsim1.4.3/lib"
export IDF_PATH=~/espidf

if [ -f '/c/anaconda3/Scripts/conda.exe' ]; then
    # my Windows machine with an Anaconda environment
    export PATH=.:/c/anaconda3:/c/anaconda3/Library/mingw-w64/bin:/c/anaconda3/Library/usr/bin:/c/anaconda3/Library/bin:/c/anaconda3/Scripts:/c/anaconda3/bin:'/c/Program Files (x86)/GnuWin32/bin':/c/iverilog/bin:$b:${PATH_ORIG}
    export PYTHON=/anaconda/envs/env/bin/python
else
    export PATH=.:/bin:/usr/local/bin:/usr/bin:/usr/local/opt/bison/bin:/home/nv/bin:/sbin:$b:${MAGICK_HOME}/bin:/Library/TeX/texbin/:${AWS_HOME}:${ASSIMP_HOME}/bin:${c}/esp32elf/bin:$IDF_PATH/tools:$c/astc/Source:/usr/sbin:${ELMER_HOME}/bin:${HOME}/Library/Python/3.7/bin
    export PYTHON=python3
fi
alias py='${PYTHON}'

export VVV=
export VNC_GEOM='-geometry 1920x1200'
export IVERILOG_DUMPER=lxt2

alias skg='ssh-keygen -t rsa -b 4096'

alias pw='echo $SSHPASS'

alias scn='sshpass -e scp -o StrictHostKeyChecking=no'
alias scdt='sshpass -e scp -o StrictHostKeyChecking=no'
alias scna='sshpass -p ${SSHPASSAI} scp -o StrictHostKeyChecking=no'
alias tarvai='cd $c; tar cvfz vai.tar.gz vai'

alias gds2raw='$c/libGDSII/applications/GDSIIConvert --raw'
alias gds2hier='$c/libGDSII/applications/GDSIIConvert --analyze'

alias gb='cp /tmp/Backups* $d/ZZZ_Other/Backups/'

alias isync='cd $d; find . ! -path "*.icloud" \( -exec echo {} \; -a -exec touch {} \; \)'

alias dds='echo `pwd` > ~/.default_dir'
alias dd='cd `cat ~/.default_dir`'
alias ddp='cat ~/.default_dir'
dd
