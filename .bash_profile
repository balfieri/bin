# ~/.bash_profile should have:
# export SSHPASS="..."
# source ~/Code/bin/.bash_profile
#
set -o vi

export BASH_SILENCE_DEPRECATION_WARNING=1
export PS1='\[\e[1;33m\w) \e[m\]'
export sd=/Volumes/SLOWDATA
export d=~/IDrive
export n=$d/__NVidia
export c=~/Code
export b=$c/bin
export a=$d/Aviation
export cs=$c/study
export at=$a/Trips
export ca=$c/aws
export cc=$c/cordic
export ce=$c/eleksmaker
export cg=$c/gfx3d
export ch=$c/HomeDir
export cl=$c/layout
export cll=$c/layout/Layout.h
export cn=$c/nanocad
export ch=$c/HomeDir
export cq=$c/qam
export cr=$c/crashes
export crr=$c/crashes/raw
export ct=$c/astc
export cts=$ct/Source
export cv=$c/vdbedit
export vp=$c/vpy
export cp=$c/Pam
export cpq=$cp/pam_questions
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
export nr=$c/rt
export nr2=$c/rt2
export nrc=$nr/cordic
export nre=$nr/scenes
export nrs=$nr/simplert
export nrsa=$nr/simplert/debugastc
export nrsb=$nr/simplert/beams
export nrsc=$nr/simplert/compression
export nrsr=$nr/simplert/reports
export nrsrm=$nr/simplert/reports/movie
export nrv=$nr/v
export nr2s=$nr2/simplert
export nr2v=$nr2/v
export w=$d/Websites
export wc=$w/imustcook.com
export bw=~/balfieri
export bws=${bw}/save
export ngb=${HOME}/ngspice-bob
export ngbd=${HOME}/ngspice-bob/src/spicelib/devices
export ngbdb=$ngbd/bsimcmg
export ngbrd=${HOME}/ngspice-bob/release/src/spicelib/devices
export ngbrdb=$ngbrd/bsimcmg
export ngff=${HOME}/ngspice-finfet
export ngffr=$ngff/release_adms
export ngcm=${HOME}/ngspice-cmg
export ngffa=$ngff/src/spicelib/devices/adms
export ngffra=$ngffr/src/spicelib/devices/adms
export ngffat=$ngffa/admst
export ngffab=$ngffa/bsimcmg
export ngffaba=$ngffa/bsimcmg/admsva
export ngffrab=$ngffra/bsimcmg
export ngcma=$ngcm/src/spicelib/devices/adms
export ngcmat=$ngcma/admst
export ngcmab=$ngcma/bsimcmg
export ngcmaba=$ngcma/bsimcmg/admsva
export fd=/Volumes/SAMSUNG
export fxc=$fd/xplane11/Custom_Scenery
export fp=$c/flightplan
export xp=~/xplane1150
export xw=s3://imustcook.com/xplane/
export xc=$x/*ery
export xrc=$xr/*ery
export xbc=$xb/*ery
export xp=$x/Resources/plugins
export x11p=$x11/Resources/plugins
alias umfd='diskutil unmount $fd'
alias umsd='diskutil unmount $sd'
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
export AWS_MASTER_INSTANCE=i-077e2d60f68bbedfd
alias sts='aws sts'
alias ec2='aws ec2'
alias efs='aws efs'
alias s3='aws s3'
alias cona='conda activate'
alias cond='conda deactivate'
alias sticks='cd $n/sticks; /usr/local/opt/perl@5.18/bin/perl sticks.pl'
alias vds='cd $nrs; vi reports/doit.space'
alias ds='cd $nrs; reports/doit.space'
alias vu='vsim tb_NV_vu'
alias ppl='cd $cs; time ./run.py aviation 0 3'
alias pplr='cd $cs; time ./run.py aviation 0 3 80 100'
alias ppla='cd $cs; time ./run.py aviation 0 -1 0 100 1'
alias ppla3='cd $cs; time ./run.py aviation 0 -1 0 100 3'
alias ppla4='cd $cs; time ./run.py aviation 0 -1 0 100 3'
alias ppla5='cd $cs; time ./run.py aviation 0 -1 0 100 5'
alias ppla6='cd $cs; time ./run.py aviation 0 -1 0 100 6'
alias vppl='cd $cs; vi aviation.txt'
gppl() { grep -i "$1" $cs/aviation.txt; }

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
alias gw='/Applications/gtkwave.app/Contents/MacOS/gtkwave-bin >& /dev/null &'
alias vl='verilator --lint-only -Wall'
alias vcc='verilator --cc'
alias mouser='open $d/Manuals/Analog/mouser.pdf'
alias o=open
alias oo='open `ls -t out*.png | head -1`'
alias jn='jupyter notebook'
alias jhtml='jupyter nbconvert --to html'
alias sha256='shasum -a 256 -b'
alias sha512='shasum -a 512 -b'
alias O0='export EXTRA_CFLAGS="-O0"'
alias O0b='export EXTRA_CFLAGS="-O0 -DDO_BAH"'
alias O0d='export EXTRA_CFLAGS="-O0 -DLAYOUT_DEBUG"'
alias O0db='export EXTRA_CFLAGS="-O0 -DLAYOUT_DEBUG -DDO_BAH"'
alias O3='export EXTRA_CFLAGS=-O3'
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
export ASSIMP_HOME="${c}/assimp"
export MAGICK_HOME="${HOME}/ImageMagick-7.0.7"
export MAGICK_THREAD_LIMIT=12
export ELMER_HOME=$c/elmerfem/install
export DYLD_LIBRARY_PATH=${MAGICK_HOME}/lib/:${DYLD_LIBRARY_PATH}:${c}/libgdsii/lib/.libs
export DYLD_LIBRARY_PATH=/usr/local/opt/openssl/lib:$DYLD_LIBRARY_PATH
export DYLD_LIBRARY_PATH=${DYLD_LIBRARY_PATH}:$ELMER_HOME/lib
#export PYTHONPATH="/usr/local/lib/python3.7:$c/devsim1.4.3/lib"
export IDF_PATH=~/espidf

export PATH=.:/bin:/usr/local/bin:/usr/bin:/usr/local/opt/bison/bin:/home/nv/bin:/sbin:$b:${MAGICK_HOME}/bin:/Library/TeX/texbin/:${AWS_HOME}:${ASSIMP_HOME}/bin:${c}/esp32elf/bin:$IDF_PATH/tools:$c/astc/Source:/usr/sbin:${ELMER_HOME}/bin:${HOME}/Library/Python/3.7/bin

export NUSER=balfieri
export CRGSERVER=crg-epsilon.nvidia.com
export B1SERVER=dcg-sim-03b12-057
export B2SERVER=dc7-sim-a12-203
export B3SERVER=dc7-sim-g11-012
export XSERVER=sc-xterm-20.nvidia.com
export DT=balfieri-dt.local
export NUSD=${NUSER}@${DT}:
export NUSDR=${NUSER}@${DT}:./__NVIDIA/rt
export NUSDRE=${NUSDR}/scenes
export NUSDRS=${NUSDR}/simplert
export NUSC=${NUSER}@${CRGSERVER}
export NUSCS=${NUSER}@${CRGSERVER}:/local/fastscratch/balfieri
export NUSCR=${NUSC}:/local/fastscratch/balfieri/rt
export NUSCRS=${NUSC}:/local/fastscratch/balfieri/rt/simplert
export NUSC5=${NUSC}:/local/fastscratch/balfieri/balfieri_volta_tree6/hw/nvgpu_sm_volta/vmod/vr/rs5
export NUSCC=${NUSC}:/local/fastscratch/balfieri/balfieri_research_tree1/crg
export NUSCO=${NUSC}:/local/fastscratch/balfieri/balfieri_research_tree1/research/Offsite/Offsite_2019
export NUSB1=${NUSER}@${B1SERVER} 
export NUSB2=${NUSER}@${B2SERVER}
export NUSB3=${NUSER}@${B3SERVER}
export NUSXV=${NUSER}@${XSERVER}:/home/scratch.balfieri_volta
export NUSXS1=${NUSER}@${XSERVER}:/home/scratch.balfieri_volta
export NUSXS2=${NUSER}@${XSERVER}:/home/scratch.balfieri_volta_1
export NUSXS3=${NUSER}@${XSERVER}:/home/scratch.balfieri_gpu_1
export NUSXS1M=${NUSER}@${XSERVER}:/home/scratch.balfieri_volta/balfieri_scenes2/Main
export NUSXS1RS=${NUSXS1}/rt/simplert
export NUSXS2RS=${NUSXS2}/rt2/simplert
export NUSXS3RS=${NUSXS3}/rt3/simplert
export NUSXG1=${NUSER}@${XSERVER}:/home/scratch.balfieri_gpu/rt_tree1/hw/nvgpu
export NUSXG2=${NUSER}@${XSERVER}:/home/scratch.balfieri_gpu/rt_tree2/hw/nvgpu
export NUSXG1IVST=${NUSXG1}/ip/gpc/sm/smh/vmod/top/ghlit1
export NUSXG2IVST=${NUSXG2}/ip/gpc/sm/smh/vmod/top/ghlit1
export NUSXG1YS=${NUSXG1}/syn/sm
export NUSXG2YS=${NUSXG2}/syn/sm
export NUSXG1RS=${NUSXG1}/rt/simplert
export NUSXG2RS=${NUSXG2}/rt/simplert
export NUSXG1RV=${NUSXG1}/rt/v
export NUSXG2RV=${NUSXG2}/rt/v
export VVV=
export VNC_GEOM='-geometry 1920x1200'
export IVERILOG_DUMPER=lxt2

alias skg='ssh-keygen -t rsa -b 4096'

alias pw='echo $SSHPASS'
alias skan='ssh-add ~/.ssh/id_rsa.nvidia'
alias shna='sshpass -e ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.nvidia ${NUSER}@crg-alpha.nvidia.com'
alias shnd='sshpass -e ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.nvidia ${NUSER}@crg-delta.nvidia.com'
alias shne='sshpass -e ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.nvidia ${NUSER}@crg-epsilon.nvidia.com'
alias shng='sshpass -e ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.nvidia ${NUSER}@crg-gamma.nvidia.com'
alias shn1='sshpass -e ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.nvidia ${NUSER}@crg-nclab-1.nvidia.com'
alias shn2='sshpass -e ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.nvidia ${NUSER}@crg-nclab-2.nvidia.com'
alias shn3='sshpass -e ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.nvidia ${NUSER}@crg-nclab-3.nvidia.com'
alias shn4='sshpass -e ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.nvidia ${NUSER}@crg-nclab-4.nvidia.com'
alias shn5='sshpass -e ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.nvidia ${NUSER}@crg-nclab-5.nvidia.com'
alias shnb1='sshpass -e ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.nvidia ${NUSER}@${B1SERVER}'
alias shnb2='sshpass -e ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.nvidia ${NUSER}@${B2SERVER}'
alias shnb3='sshpass -e ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.nvidia ${NUSER}@${B3SERVER}'
alias shnx='sshpass -e ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.nvidia ${NUSER}@${XSERVER}'
alias shdt='sshpass -e ssh ${NUSER}@${DT}'

alias scn='sshpass -e scp -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.nvidia'
alias scdt='sshpass -e scp -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.nvidia'
alias copyrs='tar.rs; scn `ls rs*.gz | tail -1` $NUSC5/save/b.tar.gz'
alias copyrt='tar.rt; scn `ls rt*.gz | tail -1` $NUSCR/save/r.tar.gz'
alias copysyn1='scn syn.tar.gz $NUSXG1IVST'
alias copysyn2='scn syn.tar.gz $NUSXG2IVST'
alias copyfrom2='scn $NUSXG2IVST/doit.powersim .; scn $NUSXG2IVST/powersim .; scn $NUSXG2IVST/doit.show_slack .; scn $NUSXG2IVST/doit.show_area .; scn $NUSXG2IVST/doit.show_energy .; scn $NUSXG2IVST/doit.clean_power .'
alias copyreport2='scn $NUSXG2YS/area.out .; scn $NUSXG2YS/slack.out .; scn $NUSXG2YS/energy.out .'

alias mkrtc='rm -f rtc; make rtc'
alias mkrtc0='rm -f rtc; make rtc EXTRA_CFLAGS=-O0'

alias gds2raw='$c/libGDSII/applications/GDSIIConvert --raw'
alias gds2hier='$c/libGDSII/applications/GDSIIConvert --analyze'

alias gb='cp /tmp/Backups* $d/ZZZ_Other/Backups/'

alias ncvt='$n/nanovdb/build/cmd/nanovdb_convert'
alias nprt='$n/nanovdb/build/cmd/nanovdb_print -l'
alias vprt='$c/openvdb/build/openvdb/cmd/vdb_print'
alias ve='$c/vdbedit/vdbedit.x'
alias isync='cd $d; find . ! -path "*.icloud" \( -exec echo {} \; -a -exec touch {} \; \)'

alias dd='cd `cat ~/.default_dir`'
dds() { echo "$1" > ~/.default_dir; dd; }
dd
