# Homebrew
PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Cask
PATH=$PATH:$HOME/.cask/bin

# RVM
PATH=$PATH:$HOME/.rvm/bin

# Cocos2d-x
export COCOS_CONSOLE_ROOT=$HOME/cocos2d-x-3.2/tools/cocos2d-console/bin
PATH=$PATH:$COCOS_CONSOLE_ROOT

# Android SDK
export ANDROID_SDK_ROOT=$HOME/adt-bundle-mac-x86_64/sdk
PATH=$PATH:$ANDROID_SDK_ROOT
PATH=$PATH:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools

# Android NDK
export NDK_ROOT=$HOME/android-ndk-r9c
PATH=$PATH:$HOME/android-ndk-r9c

# Heroku Toolbelt
PATH=$PATH:/usr/local/heroku/bin

export PATH
