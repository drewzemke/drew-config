return {
  'akinsho/toggleterm.nvim',

  config = function()
    require('toggleterm').setup({})

    local mappings = {
      normal = {
        ['<leader>`'] = [[:ToggleTerm dir=git_dir size=15 direction=horizontal<cr>]],
        ['<leader>~'] = [[:ToggleTerm dir=git_dir direction=float<cr>]],
      },
    }
    require('utils.keymap-loader').load(mappings)
  end
}
