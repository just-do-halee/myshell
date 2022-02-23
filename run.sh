# this should be executed as
# $1 = .shellrc path

p=$(dirname $PWD/$0)

if [[ $MYSHELL = "" ]]
then
    echo "
export MYSHELL=\"$p\"
source $p/git/core.sh
source $p/node/core.sh
source $p/rust/core.sh
source $p/vscode/core.sh
    " >> $1
    export MYSHELL=$p
    source $p/git/core.sh
    source $p/node/core.sh
    source $p/rust/core.sh
    source $p/vscode/core.sh
fi
