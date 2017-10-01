# m3umangle

This script converts m3u files with absolute paths in them (such as the ones exported by music library/player Clementine, which I use) to m3u files with paths that my portable mp3 player can use when it's trying to play a playlist. I hope you find it useful as well.

# Setup

Before using this script, edit the following variables:

* `musicdir` should be the path to your music library.
* `walkman` should be the destination path - that is, the root of your media player's filesystem. Music files will be copied to this path.

### MacOS Notes

This script was written with the GNU version of `sed`. Please install the GNU core utilities with [Homebrew](https://brew.sh), or unexpected behaviour may occur. If you haven't installed the core utilities with the default name, you'll need to replace `sed` with `gsed` in this script.

# Usage

Run the script, with an existing m3u playlist file as the first argument:

`./walkman.sh foo.m3u`

Optionally, specify a different destination (useful if your media player mounts the SD card under a different path from its internal storage, for example):

`./walkman.sh foo.m3u /Volumes/SDCARD/`
