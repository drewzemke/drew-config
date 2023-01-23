-- External dependencies
--   ripgrep: run 'brew insteall ripgrep'
return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    require('telescope').setup {
      defaults = {
        mappings = {},
      },

      pickers = {},

      extensions = {},
    }
    local mappings = {
      normal = {
        ['<leader>ff'] = require('telescope.builtin').find_files,
        ['<leader>fs'] = require('telescope.builtin').live_grep,
        ['<leader>fb'] = require('telescope.builtin').buffers,
        ['<leader>fh'] = require('telescope.builtin').help_tags,
      },
    }
    require('utils.keymap-loader').load(mappings)

  end
}
