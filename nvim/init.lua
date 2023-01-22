-- [[ init.lua ]]

-- [[ mapleader ]]
vim.g.mapleader = ' '

-- [[ config ]]
require('config.plugins')
require('config.options')

vim.api.nvim_create_autocmd('User', {
  pattern = 'VeryLazy',
  callback = function()
    require('config.keymaps')
  end,
})
