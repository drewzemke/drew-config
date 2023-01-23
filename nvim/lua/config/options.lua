--[[ opts.lua ]]

local opt = vim.opt

-- [[ Context ]]
opt.number = true -- Line numbers
opt.relativenumber = true -- Relative line numbers
opt.scrolloff = 4 -- Min num of lines of context
opt.signcolumn = "yes" -- Show the sign column ??

-- [[ Search ]]
opt.ignorecase = true -- Ignore case in search
opt.smartcase = true -- Override ignorecase if search has capital letters
opt.incsearch = true -- Incremental search
opt.hlsearch = true -- Highlight search

-- [[ Whitespace ]]
opt.expandtab = true -- Spaces instead of tabs
opt.shiftwidth = 2 -- Indent size
opt.softtabstop = 2 -- Number of spaces tabs count as (in insert mode)
opt.tabstop = 2 -- Number of spaces tabs count as ??
opt.autoindent = true

-- [[ Splits ]]
opt.splitright = true -- Place new window to the right of current
opt.splitbelow = true -- Place new window below current

opt.termguicolors = true
