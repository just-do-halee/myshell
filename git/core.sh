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

function glog() {
        git log
}

function gr() {
        git remote add "$@"
}

function gb() {
        git branch "$@"
}

function gco() {
        git checkout "$@"
}

function gcb() {
        git checkout -b "$@"
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

function g3-() {
        git add .
        git commit -m "$1"
        git push origin "$2"
}

function g3_re() {
        git reset HEAD^
        git add .
        git commit -m "$@"
        git push -f origin main
}

function g3_re-() {
        git reset HEAD^
        git add .
        git commit -m "$1"
        git push -f origin "$2"
}

function gt() {
        s="$@"
        git tag -a "$@" -m "${s}"
        git push origin --tags
}