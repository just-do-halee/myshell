alias r="cargo run"
alias t="cargo test"
alias rr="cargo run -p $@"

function tt() {
        cargo test -p "$@"
}

alias cbd="cargo clean; cargo test; cargo build; cargo build --release; cargo doc --open "$@""