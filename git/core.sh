function gnew() {
        mkdir "$1"
        cd "$1"
        git init
        git remote add origin "$2"
}

function gfrom() {
        git clone "$@"
        ls
}

function gr() {
        git remote add "$@"
}

function gp() {
        git pull "$@"
}

function gf() {
        git fetch "$@"
}

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