which gcloud >& /dev/null
if [ $? -eq 0 ]; then
    alias gcloudi='gcloud beta interactive --context="gcloud "'
    alias gcloud-sdk-root='gcloud --quiet info --format="value(installation.sdk_root)"'

    if [[ "${OS}" =~ "Windows" ]] ; then
        export GCLOUD_SDK_ROOT_U="$(cygpath "${GCLOUD_SDK_ROOT}")"
    else
        export GCLOUD_SDK_ROOT_U="/usr/lib/google-cloud-sdk"
    fi
    # # The CLOUDSDK_HOME and CLOUDSDK_PYTHON env variables are used by the zsh's gcloud plugin.
    # export CLOUDSDK_HOME="${GCLOUD_SDK_ROOT_U}"
    # export CLOUDSDK_PYTHON="${CLOUDSDK_HOME}/platform/bundledpython2/python.exe"
fi
