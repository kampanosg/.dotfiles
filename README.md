# nvim-config
This is my NeoVim configuration repo! I primarily use it for daily Go and Rust development.

Mainly storing it here so that I don't lose it but also to be able to roll-back whenever I break it 😅.

It can be cloned directly into `~/.config/` and then renamed to `nvim`. [Packer](https://github.com/wbthomason/packer.nvim), is also required for plugin management. 

## Dependencies

Run `:PackerSync` to pull the plugins.
The following `Mason` packages are also required (Install with `:MasonInstall`
* `gopls`
* `rust-analyzer`
* `lua-language-server`
* `codelldb`
* `cpptools`

![](https://media.giphy.com/media/5Zesu5VPNGJlm/giphy-downsized.gif)
