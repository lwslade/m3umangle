# m3umangle

This script converts m3u files with absolute paths in them (such as the ones exported by music library/player Clementine, which I use) to m3u files with paths that my portable mp3 player can use when it's trying to play a playlist. I hope you find it useful as well.

# Setup

Before using this script, edit the following variables:

* `musicdir` should be the path to your music library.
* `walkman` should be the destination path - that is, the root of your media player's filesystem. Music files will be copied to this path.

### Mac OS Notes

This script was written with the GNU version of `sed`. Please install the GNU core utilities with [Homebrew](https://brew.sh), or unexpected behaviour may occur. If you haven't installed the core utilities with their default name, you'll need to replace `sed` with `gsed` in this script.

# Usage

Run the script, with an existing m3u playlist file as the first argument:

`./m3umangle.sh foo.m3u`

This will copy the files specified in `foo.m3u` to the destination path, while preserving the folder hierarchy present at the source. This means that the music files will still be arranged in folders by artist, then album in most cases. A new playlist named `wm-foo.m3u` will be saved in the directory where the script is run. This file can be copied to wherever your media player prefers to keep playlist files.
