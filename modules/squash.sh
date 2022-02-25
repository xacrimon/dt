function cmd_squash() {
    validate "number of commits" uint $1

    git reset --soft HEAD~$1
    msg=$(git log --format=%B --reverse HEAD..HEAD@$1)
    git commit --edit -m "$msg"
}
