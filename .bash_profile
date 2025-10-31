# ~/.bash_profile should have:
# source ~/Code/bin/.bash_profile
#
set -o vi

export BASH_SILENCE_DEPRECATION_WARNING=1
export PS1='\[\e[1;33m\w) \e[m\]'

if [ -f ~/.openai_key.txt ]; then
    export OPENAI_API_KEY=`cat ~/.openai_key.txt`
fi
if [ -f ~/.anthropic_key.txt ]; then
    export ANTHROPIC_API_KEY=`cat ~/.anthropic_key.txt`
fi
if [ -f ~/.perplexity_key.txt ]; then
    export PERPLEXITY_API_KEY=`cat ~/.perplexity_key.txt`
fi
if [ -f ~/.prenotami_username.txt ]; then
    export PRENOTAMI_USERNAME=`cat ~/.prenotami_username.txt`
fi
if [ -f ~/.prenotami_password.txt ]; then
    export PRENOTAMI_PASSWORD=`cat ~/.prenotami_password.txt`
fi

export AWS_HOME="${HOME}/Code/aws"
export AWS_DEFAULT_PROFILE=default
if [ -f ~/.aws_master_instance.txt ]; then
    export AWS_MASTER_INSTANCE=`cat ~/.aws_master_instance.txt`
fi

if [ -f ~/.server1_name.txt ]; then
    export SERVER1=`cat ~/.server1_name.txt`
fi
if [ -f ~/.server1_user.txt ]; then
    export SERVER1_USER=`cat ~/.server1_user.txt`
else
    export SERVER1_USER=${USER}
fi

export md=/Volumes/memories
export d=~/IDrive
export c=~/Code
export b=$c/bin
export a=$d/Aviation
export aw=$d/Aviation/WCFC
export cs=$c/cs
export cst=$c/study
export ca=$c/aws
export cg=$c/gfx3d
export cn=$c/mnt
export cp=$c/screenplay
export cvp=$c/vpy
export cfp=$c/flightplan
export cfs=$c/flightsim
export i=$d/Italian
export ic=$d/Italian/Certificazioni
export m=$d/Manuals
export ma=$d/Manuals/Aviation
export mam=$d/Manuals/Aviation/Medical
export mr=$d/Manuals/RT
export w=$d/Websites
export wc=$w/imustcook.com
export av_s=aviation_vfr,aviation_ifr
export it_voice=Alice
export it_s=italian_basic,italian_advanced,italian_expressions,italian_american_expressions,italian_vulgar,italian_passato_remoto,italian_tongue_twisters
export fr_voice=Thomas
export fr_s=french_basic,french_advanced,french_expressions,french_american_expressions,french_vulgar

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
alias gpt1='gpt -i'
alias gpta='gpt -c italian_transcription'
alias gpta1='gpt -c italian_transcription -i'
alias gptc='gpt -is_italian_convo 1'
alias gptc1='gpt -is_italian_convo 1 -i'
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
alias hf='huggingface-cli'
alias kr='defaults write -g ApplePressAndHoldEnabled -bool false'
alias kh='defaults write -g ApplePressAndHoldEnabled -bool true'
alias ec2='aws ec2'
alias s3='aws s3'
alias cona='conda activate'
alias cond='conda deactivate'

alias ppl='cd $cst; ./run.py aviation -q 0 -ps 2'
alias ifr='cd $cst; ./run.py aviation_ifr -q 0 -ps 2'
alias ifrs='cd $cst; ./run.py aviation_ifr -q 0 -ps 0 -s 1 -av Samantha -qr 180'
alias vppl='cd $cst; vi aviation.txt'
alias vifr='cd $cst; vi aviation_ifr.txt'

alias ivw='cd $cst; vi iwords.out'
alias ivg='cd $cst; vi igrit.out'
alias ivtb='cd $cst; vi italian_basic.txt'
alias ivta='cd $cst; vi italian_advanced.txt'
alias ivte='cd $cst; vi italian_expressions.txt'
alias ivtae='cd $cst; vi italian_american_expressions.txt'
alias ivtt='cd $cst; vi italian_tongue_twisters.txt'
alias ivtv='cd $cst; vi italian_vulgar.txt'
alias ivtpr='cd $cst; vi italian_passato_remoto.txt'
alias itb='cd $cst; ./run.py italian_basic -q 0 -ps 2 -cat ""'
alias ita='cd $cst; ./run.py italian_advanced -q 0 -ps 2 -cat ""'
alias itae='cd $cst; ./run.py italian_american_expressions -q 0 -ps 2 -cat ""'
alias ite='cd $cst; ./run.py italian_expressions -q 0 -ps 4 -cat ""'
alias itt='cd $cst; ./run.py italian_tongue_twisters -q 0 -ps 4 -cat ""'
alias itv='cd $cst; ./run.py italian_vulgar -q 0 -ps 4 -cat ""'
alias itpr='cd $cst; ./run.py italian_passato_remoto -q 0 -ps 4 -cat ""'
alias it='cd $cst;  ./run.py $it_s -q 0 -ps 1 -cat ""'
alias its='cd $cst;  ./run.py $it_s -q 0 -ps 1 -cat "" -s 1 -av $it_voice'
alias ig='cd $cst; ./grit.py -l italian -v $it_voice -s 0 -lu 1 -subjects $it_s'
alias igs='cd $cst; ./grit.py -l italian -v $it_voice -s 1 -lu 1 -subjects $it_s'
alias igw='cd $cst; grit_words.py -subjects $it_s -file iwords.out -one_per_line 1 >& igrit.out; vi igrit.out'
alias igptt='gpt -c italian_translations -i'
alias igpttw='cd $cst; gpt -c italian_translations -f iwords.out'
alias ifdt='cd $cst; ./find_dups.py $it_s'
alias isay='say -v $it_voice -r 120'

alias fvw='cd $cst; vi fwords.out'
alias fvg='cd $cst; vi fgrit.out'
alias fvtb='cd $cst; vi french_basic.txt'
alias fvta='cd $cst; vi french_advanced.txt'
alias fvte='cd $cst; vi french_expressions.txt'
alias fvtae='cd $cst; vi french_american_expressions.txt'
alias fvtv='cd $cst; vi french_vulgar.txt'
alias ftb='cd $cst; ./run.py french_basic -q 0 -ps 2 -cat ""'
alias fta='cd $cst; ./run.py french_advanced -q 0 -ps 2 -cat ""'
alias ftae='cd $cst; ./run.py french_american_expressions -q 0 -ps 2 -cat ""'
alias fte='cd $cst; ./run.py french_expressions -q 0 -ps 4 -cat ""'
alias ftv='cd $cst; ./run.py french_vulgar -q 0 -ps 4 -cat ""'
alias ft='cd $cst;  ./run.py $fr_s -q 0 -ps 1 -cat ""'
alias fts='cd $cst;  ./run.py $fr_s -q 0 -ps 1 -cat "" -s 1 -av $fr_voice'
alias fg='cd $cst; ./grit.py -l french -v $fr_voice -s 0 -lu 1 -subjects $fr_s'
alias fgs='cd $cst; ./grit.py -l french -v $fr_voice -s 1 -lu 1 -subjects $fr_s'
alias fgw='cd $cst; grit_words.py -subjects $fr_s -file fwords.out -one_per_line 1 >& fgrit.out; vi fgrit.out'
alias fgptt='gpt -c french_translations -i'
alias fgpttw='cd $cst; gpt -c french_translations -f fwords.out'
alias ffdt='cd $cst; ./find_dups.py $fr_s'
alias fsay='say -v $fr_voice -r 120'

alias dtl='TZ=Europe/London date'
alias dtu='date -u'
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
alias zcat='gzcat'
alias ls='ls -AG'
alias ll='ls -AlG'
alias lt='ls -Alt'
alias ltl='ls -Alt | less'
alias c=calc
alias fgr='find . -depth -print | grep'
alias psg='ps -ef | grep ${USER} | grep'
alias mkc="make clean"
alias vmo='vi make.out'
alias tf='tail -f'
alias mmo='more make.out'
alias mbo='more bob.out'
alias tmo='tail -f make.out'
alias tbo='tail -f bob.out'
alias top='/usr/bin/top -o cpu'
alias dfm='df -m .'
alias dfg='df -g .'
alias dum='du -m'
alias dug='du -g'
alias db='lldb --source ~/.lldbrc'
alias doa='disown -a'
alias gw='gtkwave --rcvar "fontname_signals Monospace 20" --rcvar "fontname_waves Monospace 18" >& /dev/null &'
alias vl='verilator --lint-only -Wall'
alias vcc='verilator --cc'
alias o=open
alias oo='open `ls -t out*.png | head -1`'
alias jn='jupyter notebook'
alias jhtml='jupyter nbconvert --to html'
alias sha256='shasum -a 256 -b'
alias sha512='shasum -a 512 -b'
alias skg='ssh-keygen -t rsa -b 4096'
alias O0='export EXTRA_CFLAGS=-O0; touch Makefile'
alias O2='export EXTRA_CFLAGS=-O2; touch Makefile'
alias O3='export EXTRA_CFLAGS=-O3; touch Makefile'
alias dds='echo `pwd` > ~/.default_dir'
alias dd='cd `cat ~/.default_dir`'
alias ddp='cat ~/.default_dir'
alias up1='denon vol_up1'
alias up2='denon vol_up2'
alias dn1='denon vol_down1'
alias dn2='denon vol_down2'
alias atv='atvremote -n "Family Room" --mrp-credentials `cat ~/mrp_fr_creds` cli'
alias py='${PYTHON}'
alias cut1='cut -d " " -f 1'

# calc function shorthands
function f2c()  { calc "f2c($1)"; }
function c2f()  { calc "c2f($1)"; }
function k2m()  { calc "k2m($1)"; }
function m2k()  { calc "m2k($1)"; }
function p2k()  { calc "p2k($1)"; }
function k2p()  { calc "k2p($1)"; }
function o2g()  { calc "o2g($1)"; }
function g2o()  { calc "g2o($1)"; }
function i2m()  { calc "i2m($1)"; }
function m2i()  { calc "m2i($1)"; }
function f2m()  { calc "f2m($1)"; }
function m2f()  { calc "m2f($1)"; }
function bmi()  { calc "bmi(p2k($1), i2m(71))"; }
function nv2mc() { calc "nv2mc($1)"; }
function mc2nv() { calc "mc2nv($1)"; }
function cagr() { calc "cagr($1, $2, $3)"; }
function fv()   { calc "fv($1, $2, $3)"; }
function pv()   { calc "pv($1, $2, $3)"; }
function lfv()  { calc "lfv($1, $2, $3, $4)"; }
function dsw() { calc "dayssince('09 09 2025')" | cut1; }
function dsww() { calc `dsw`*25 | cut1; }
function cmileage() { calc "($1-64280)*365/(dayssince('10 02 2024'))"  | cut1; }
function pmileage() { calc "($1-125891)*365/(dayssince('10 02 2024'))" | cut1; }
function vmileage() { calc "($1-4053)*365/(dayssince('10 02 2024'))"   | cut1; }

# copying to/from other machines or running a command on them
function fm() { scp -r ${1}:${2} ${3}; }
function to() { scp -r ${2} ${1}:${3}; }
function on() { USER_AT_SERVER=$1; shift; ssh ${USER_AT_SERVER} ${@}; }
function fms1() { fm ${SERVER1_USER}@${SERVER1} $@; }
function tos1() { to ${SERVER1_USER}@${SERVER1} $@; }
function ons1() { on ${SERVER1_USER}@${SERVER1} $@; }

# paths
export DYLD_LIBRARY_PATH=/usr/local/opt/openssl/lib:$DYLD_LIBRARY_PATH
export PATH=.:/bin:/usr/local/bin:/usr/bin:/sbin:${b}:${AWS_HOME}
export PYTHON=python3

# start up gpg-agent (needed even for symmetric keys using only a passphrase)
GPG_TTY=$(/usr/bin/tty)
SSH_AUTH_SOCK="$HOME/.gnupg/S.gpg-agent.ssh"
export GPG_TTY SSH_AUTH_SOCK
killall gpg-agent >& /dev/null
gpg-agent --daemon >& /dev/null

dd
