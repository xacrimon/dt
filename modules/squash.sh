# Arguments
#   - $1: The N latest commits to squash
function cmd_squash() {
    git reset --soft HEAD~$1
    msg=$(git log --format=%B --reverse HEAD..HEAD@$1)
    git commit --edit -m "$msg"
}
