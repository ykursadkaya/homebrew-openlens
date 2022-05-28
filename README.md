# About
This is a repo to automatically build [Lens](https://github.com/lensapp/lens) without Lens ID for the macOS AMD64

As you know with Lens version 5.5.0 and upper is required to login with LensID in order to continue using Lens normally.
You could skip this login window in prior versions but it’s not skippable anymore.

It periodically checks latest version of Lens. If a new version is released, triggers a new CI job to build and release original lensapp/lens repo for macOS.
Since lensapp/lens repo does not have lenscloud extension it doesn’t have login page.

# Installing

- Download ZIP file from releases page

[https://github.com/ykursadkaya/homebrew-openlens/releases](https://github.com/ykursadkaya/homebrew-openlens/releases)

-  This repo is also a Homebrew Tap and automatically updates the openlens cask with the latest version. So you can use with Homebrew as well.


```bash
brew tap ykursadkaya/openlens
brew install openlens
```
