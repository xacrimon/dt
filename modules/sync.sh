function cmd_sync() {
    if [[ $(git diff --stat) != '' ]]
    then
        echo "error: the work tree is dirty"
        exit 1
    fi

    if [ -n $1 ]
    then
        git checkout $1
    fi

    git pull
    git submodule update --recursive

    if [[ $(git ls-files . --exclude-standard --others) != '' ]]
    then
        echo "note: the work tree contains untracked changes"
    fi
}
