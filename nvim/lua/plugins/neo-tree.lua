return {
  'nvim-neo-tree/neo-tree.nvim',
  dependencies = {
    'MunifTanjim/nui.nvim',
    'nvim-lua/plenary.nvim',
    'kyazdani42/nvim-web-devicons'
  },
  cmd = 'Neotree',
  init = function()
    vim.g.neo_tree_remove_legacy_commands = 1
  end,
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = true,
      }
    },

    use_libuv_file_watcher = true,
  }
}
