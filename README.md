# nvim-config
Welcome to my NeoVim configuration repo! Mainly storing it here so that I don't lose it but also to be able to roll-back whenever I break it 😅.

It can be cloned directly into `~/.config/` and then renamed to `nvim`. [Packer](https://github.com/wbthomason/packer.nvim), is also required for plugin management. 

Run `:PackerSync` to pull the plugins.

Export the following env variables to get the fuzzy finder to include `dotfiles` but not hidden dirs (e.g `.git/`)

```bash
if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND="rg --files --hidden -g '!.git/'"
    export FZF_DEFAULT_OPTS="-m --height 50% --border"
fi
```

Other dependencies:
* `brew install ripgrep`

![](https://media.giphy.com/media/5Zesu5VPNGJlm/giphy-downsized.gif)
