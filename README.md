## my-app

### install `brew` - [brew.sh](https://brew.sh)
##### $`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
##### $`brew install make cmake ninja`
##### $`brew install --cask swift`

```shell
$ make
swift run --build-tests
Building for debugging...
Build complete! (0.06s)
Hello, world!
```

```shell
$ make all
git submodule update --init --recursive
swift package update
Updating /Users/git/my-app/my-library
Updated /Users/git/my-app/my-library (0.02s)
Everything is already up-to-date
swift build -c release
Building for production...
Build complete! (0.10s)
swift run -c release
Building for production...
Build complete! (0.05s)
Hello, world!
```