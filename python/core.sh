function pnew() {
        mkdir "$1"
        cd "$1"
        git init
        git remote add origin "$2"
        python -m venv venv
        source venv/bin/activate
        vim main.py
}
