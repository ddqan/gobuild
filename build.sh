#!/usr/bin/env bash

doCommand() {
    typeset cmnd="$*"
    check=$($cmnd)

    if [[ $? != 0 ]]; then
        echo "$(tput setaf 1)Build Failed"
        exit 1
    elif [[ $check != "" ]]; then
        echo "$(tput setaf 1)$check"
        exit 1
    fi
}

isInstall=$1

cmd="goimports -w ./"
doCommand $cmd

cmd="golint ./..."
doCommand $cmd

cmd="gofmt -w ./"
doCommand $cmd

cmd="go build"
doCommand $cmd

successMsg="$(tput setaf 2)Done. All your golang code are re-built. CLI Example:"
if [[ ${isInstall} == "install" ]]; then
    cmd="go install"
    doCommand $cmd
    successMsg="$(tput setaf 2)Done. All your golang code are re-built and installed. CLI Example:"
fi

echo "$successMsg"

# can be removed or change for suitable
echo "godemo hello"
