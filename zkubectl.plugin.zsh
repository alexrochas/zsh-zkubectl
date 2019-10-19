
function _zkubectl_login {
    local line

    case $words[2] in
        login)
            ctx=$(export KUBECTX_IGNORE_FZF=1; kubectx | fzf)

            compadd $ctx
        ;;
    esac
}

compdef _zkubectl_login zkubectl

