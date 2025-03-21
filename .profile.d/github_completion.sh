which gh >& /dev/null
if [ $? -eq 0 ]; then
    eval "$(gh completion -s bash)"
fi