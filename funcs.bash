function IS_EXISTS_IN_ENV_PATH() {
    echo ${PATH} | /usr/bin/tr ':' '\n' | grep -q -E "^${1}$"
}

