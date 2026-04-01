<h1 align="center">.dotfiles &#x2699;</h1>

Automate desktop configuration using [GNU Stow](https://www.gnu.org/software/stow/).

## Prerequisites

- [Homebrew](https://brew.sh/)

## Usage

```bash
xcode-select --install
```

```bash
git clone <repository_url> $HOME
```

```bash
$HOME/.dotfiles/install.sh
```

To stow a single package manually:

```bash
cd $HOME/.dotfiles
stow --restow --target=$HOME <package>
```

## Font considerations

- [SauceCodePro Nerd Font](https://github.com/ryanoasis/nerd-fonts)
- [JetBrains Mono](https://github.com/JetBrains/JetBrainsMono)
- [Iosevka](https://github.com/be5invis/Iosevka)
- [Fira Code](https://github.com/tonsky/FiraCode)
- [Cascadia Code](https://github.com/microsoft/cascadia-code)
- [SF Mono](https://developer.apple.com/fonts/)
- [Comic Mono](https://github.com/dtinth/comic-mono-font)
