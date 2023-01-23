return {
  'nvim-tree/nvim-tree.lua',

  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },


  config = function()
    require('nvim-tree').setup({
      modified = {
        enable = true,
      },

      renderer = {
        icons = {
          show = {
            git = true,
            modified = true,
          },
          git_placement = 'after',
        },

        indent_markers = {
          enable = true,
        },

        highlight_git = true,
        highlight_modified = 'name',
      },

      update_focused_file = {
        enable = true,
      }
    })

  end
}
