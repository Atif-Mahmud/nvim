local opt = vim.opt -- for conciseness

-- appearance
vim.o.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- netrw tree list style
vim.cmd("let g:netrw_liststyle = 3")

-- line numbers
opt.number = true
opt.relativenumber = true

-- indents
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.autoindent = true

-- linewrapping
opt.wrap = false
opt.linebreak = true

-- search
opt.showmatch = true
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

-- scrolling
opt.scrolloff = 8
opt.sidescrolloff = 7

-- misc
opt.swapfile = false
opt.shortmess = "ltToOCFI"
opt.foldmethod = "syntax"
opt.colorcolumn = "80"

-- appearance
opt.termguicolors = true

-- clipboard
opt.clipboard = "unnamedplus"
if vim.fn.has("wsl") == 1 then
  vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
    cache_enabled = 0,
  }
end
