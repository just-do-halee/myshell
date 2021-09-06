function g3() {
        git add .
        git commit -m "$@"
        git push origin main
}

function gt() {
        s="$@"
        git tag -a "$@" -m "${s}"
        git push origin --tags
}