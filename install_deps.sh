#!/bin/bash

if [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
  brew update
  brew install yarn --without-node
  brew install jq zip
elif [[ "$APPVEYOR_OS_NAME" == "windows" ]]; then
  choco install jq
else
  sudo apt-get update
  sudo apt-get install libx11-dev libxkbfile-dev libsecret-1-dev fakeroot rpm
fi