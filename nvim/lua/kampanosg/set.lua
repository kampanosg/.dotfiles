vim.opt.guicursor = ""

vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 4
vim.g.netrw_altv = 1
vim.g.netrw_winsize = 25

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.cmdheight = 1

vim.opt.updatetime = 10

vim.opt.shortmess:append("c")

vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"

vim.opt.list = true
vim.opt.listchars = {
    tab = '│·',
    extends = '⟩',
    precedes = '⟨',
    trail = '·'
}

vim.opt.cursorline = true
