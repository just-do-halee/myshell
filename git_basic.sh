function g3() {
        git add .
        git commit -m "$@"
        git push origin main
}

function g3_re() {
        git reset HEAD^
        git add .
        git commit -m "$@"
        git push -f origin main
}

function gt() {
        s="$@"
        git tag -a "$@" -m "${s}"
        git push origin --tags
}