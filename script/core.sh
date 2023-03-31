function mkcd() {
        mkdir "$@"
        cd "$@"
}

function cdrm() {
        p=$PWD
        cd ..
        rm -r $p
}
