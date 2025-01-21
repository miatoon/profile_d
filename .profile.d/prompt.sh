# export PS1="\\[\\e]0;\\w\\a\\]\\n\\[\\e[32m\\]\\u@\\h \\[\\e[33m\\]\\w\\[\\e[0m\\]\\n\\\$ "

# export PS1="\\[\\e[36m\\]\\u@\\h \\[\\e[33m\\]\\w\\[\\e[0m\\]\\n\\\$ "

# PS1 compatible with the PROMPT_COMMAND way of git_prompt
export PS1="\\[\\e[36m\\]\\u@\\h \\[\\e[33m\\]\\w\\[\\e[0m\\] "
# export PROMPT_COMMAND='__git_ps1 "'${PS1%???}'" "\n\$ "'

# Mixing the git_prompt and the venv prompt
export PROMPT_COMMAND="${PROMPT_COMMAND}${PROMPT_COMMAND+;}"'__git_ps1 "${VIRTUAL_ENV_PROMPT}'${PS1%???}'" "\n\$ "'