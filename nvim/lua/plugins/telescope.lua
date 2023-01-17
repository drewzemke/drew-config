-- External dependencies
--   ripgrep: run 'brew insteall ripgrep'
return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    require('telescope').setup{
      defaults = {
        mappings = {},
      },
      
      pickers = {},

      extensions = {},
    }
  end
}
