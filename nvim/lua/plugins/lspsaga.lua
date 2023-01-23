return {
  'glepnir/lspsaga.nvim',

  event = 'BufRead',

  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    require('lspsaga').setup({
      ui = {
        border = 'single',
      },
    })

    -- HACK : This is to get the color scheme to load correct for Lspsaga popups...
    --        There's gotta be a better way ._.
    vim.cmd('colorscheme nightfox')

    local lspsaga_keymaps = {
      normal = {
        ['<leader>ca'] = '<Cmd>Lspsaga code_action<cr>',
        ['<leader>cD'] = '<Cmd>Lspsaga goto_definition<cr>',
        ['<leader>cd'] = '<Cmd>Lspsaga peek_definition<cr>',
        ['<leader>cf'] = '<Cmd>Lspsaga lsp_finder<cr>',
        ['<leader>co'] = '<Cmd>Lspsaga outline<cr>',
        ['<leader>cR'] = '<Cmd>Lspsaga rename ++project<cr>',
        ['<leader>cr'] = '<Cmd>Lspsaga rename<cr>',
        ['K'] = '<Cmd>Lspsaga hover_doc <cr>',

        -- Diagnostics
        ['[e'] = '<Cmd>Lspsaga diagnostic_jump_prev<cr>',
        [']e'] = '<Cmd>Lspsaga diagnostic_jump_prev<cr>',
      }
    }

    require('utils.keymap-loader').load(lspsaga_keymaps);
  end
}
