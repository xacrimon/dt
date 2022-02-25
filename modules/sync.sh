function cmd_sync() {
    if [[ $(git diff --stat) != '' ]]
    then
        echo "error: there are uncommitted changes"
        exit 1
    fi

    if [ -n $1 ]
    then
        git checkout $1
    fi

    git pull
    git submodule update --recursive
}
