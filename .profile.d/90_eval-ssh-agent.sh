function _add-ssh-key-if-needed() {
    local key_path=${HOME}/.ssh/id_ed25519
    local is_key_need_to_be_added=1
    ssh-add -l >& /dev/null
    [ $? -eq 0 ] && is_key_need_to_be_added=0

    if [ ${is_key_need_to_be_added} -eq 1 ]; then
        ssh-add "${key_path}"
    fi
}

function _is-ssh-agent-running() {
    local is_sock=0
    local is_process=0
    if [ -f ~/.ssh/ssh-agent ]; then
        [ -S $(grep -F 'SSH_AUTH_SOCK=' ~/.ssh/ssh-agent | cut -d';' -f1 | cut -d'=' -f2) ] && is_sock=1
        ps -p $(grep -F 'SSH_AGENT_PID=' ~/.ssh/ssh-agent | cut -d';' -f1 | cut -d'=' -f2) > /dev/null
        [ $? -eq 0 ] && is_process=1
    fi
    if [ ${is_sock} -eq 1 -a ${is_process} -eq 1 ]; then
        # An agent is running
        return 1
    fi
    # No agent
    return 0
}

function eval-ssh-agent() {
    _is-ssh-agent-running
    if [[ $? == 1 ]]; then
        # An agent is running
        eval $(cat ~/.ssh/ssh-agent) >/dev/null
        _add-ssh-key-if-needed
    fi
}

function run-ssh-agent() {
    _is-ssh-agent-running
    if [[ $? == 0 ]]; then
        # Need to start a new agent
        ssh-agent -t 11h > ~/.ssh/ssh-agent
    fi
    eval-ssh-agent
}

eval-ssh-agent
