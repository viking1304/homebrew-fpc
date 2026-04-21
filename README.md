# homebrew-fpc

Homebrew tap for [Free Pascal Compiler (FPC)](https://www.freepascal.org/) trunk builds, the development version not available in official Homebrew.

## Install

```sh
brew tap viking1304/fpc
brew install --cask fpc@dev
```

## What you get

FPC trunk (3.3.x), the development version, updated nightly. The cask installs the compiler binary only: `ppca64` on Apple Silicon, `ppcx64` on Intel.

## What is trunk?

Trunk is the development branch of FPC (future 3.3.x). It includes the latest
features and fixes, but may be unstable.

## Source

Binaries are built from official upstream [FPC trunk sources](https://gitlab.com/freepascal.org/fpc/source) (no forks, no custom patches) by
[viking1304/fpc-trunk](https://github.com/viking1304/fpc-trunk). This tap is updated automatically after each build.

## Disclaimer

These are unofficial builds, not official releases from the Free Pascal project,
and come with no guarantees. Use at your own risk, trunk may contain unstable changes.

For official stable FPC releases visit the [download page](https://www.freepascal.org/download.html).

## License

This repository (tap scripts) is licensed under the [MIT License](LICENSE).

Free Pascal Compiler (FPC) is licensed under GPL-2.0-or-later, with RTL and packages under LGPL-2.0-or-later with linking exception.
