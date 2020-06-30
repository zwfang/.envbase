function IS_EXISTS_IN_ENV_PATH() {
    echo ${PATH} | /usr/bin/tr ':' '\n' | grep -q -E "^${1}$"
}

function APPEND_ENV_PATH() {
    while test $# -gt 0; do
        if ! IS_EXISTS_IN_ENV_PATH ${1} ; then
	    export PATH="${1}:${PATH}";
        fi
        shift
    done
}

