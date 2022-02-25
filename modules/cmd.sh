function cmd_none() {
    echo "no command specified"
    echo ""
    echo "usage: dt help"
}

function cmd_unknown() {
    echo "unknown subcommand: $1"
    echo ""
    echo "usage: dt help"
}

function cmd_help() {
    echo "usage: dt <command>"
    echo ""
    echo "commands:"
    echo "  - help"
    echo "  - squash <number of commits>"
    echo "  - backport [-p/--pr <pr number>] [-t/--target <target branches>]"
}
