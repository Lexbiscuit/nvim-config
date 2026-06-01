local opt = vim.opt

opt.termguicolors = true
vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.rnu = true
opt.nu = true
opt.autoindent = true
opt.smartindent = true
opt.hlsearch = true
opt.backup = false
opt.cmdheight = 0
opt.expandtab = true
opt.ignorecase = true
opt.smarttab = true
opt.breakindent = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.backspace = { "start", "eol", "indent" }
opt.path:append({ "**" })
opt.cursorline = true

-- Add asterisks in block comments
opt.formatoptions:append({ "r" })

vim.g.lazyvim_eslint_auto_format = true
