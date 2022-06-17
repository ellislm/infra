#!/usr/bin/sh


alias git_loc='git ls-files -z | xargs -0 wc -l'

alias fd='find * -name'
grp() {
	grep -R -n "$@" ./*
}

alias cdinf='cd ${HOME}/opt/infra'

# NNN properties
MACPORT_BM="p:/opt/local/var/macports/sources/rsync.macports.org/macports/release/tarballs/ports"
MAC_LIBC_BM="c:/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk"
LANG_BM="l:$HOME/devel/learning/ellislm/langcorep"
BM_BM="b:$HOME/.config/nnn/bookmarks"

export NNN_BMS="i:$HOME/opt/infra;h:$HOME;${MACPORT_BM};${LANG_BM};${MAC_LIBC_BM};${BM_BM}"

