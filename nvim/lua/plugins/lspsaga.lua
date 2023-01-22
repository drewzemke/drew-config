return {
  'glepnir/lspsaga.nvim',

  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    require('lspsaga').setup({

    })

    local lspsaga_keymaps = {
      normal = {
        ['<leader>sa'] = '<Cmd>Lspsaga lsp_finder<cr>',
        ['<leader>o'] = '<Cmd>Lspsaga outline<cr>',
      }
    }

    require('utils.keymap-loader').load(lspsaga_keymaps);
  end
}
