alias ys="yarn start"
alias yd="yarn dev"
alias yt="yarn test"
alias yb="yarn build"
alias yde="yarn deploy"
alias yi="yarn install $@"
alias ysd="yarn start:dev"
alias yst="yarn start:debug"
alias ysp="yarn start:prod"
alias yadd="yarn add $@"
alias niy="npm init -y"
alias ns="npm start"
alias nr="npm run $@"
alias nd="npm run dev"
alias nt="npm run test"
alias nb="npm run build"
alias ni="npm install $@"
alias nsd="npm run start:dev"
alias nst="npm run start:debug"
alias nsp="npm run start:prod"

function newjs() {
        mkdir "$1"
        cd "$1"
        npm init -y
        touch index.js
        if [[ $2 ]]
        then
                npm install "${@:2}"
        fi
}