return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-context',
    'nvim-treesitter/nvim-treesitter-refactor',
  },

  build = function()
    require('nvim-treesitter.install').update({ with_sync = true })
  end,

  config = function()
    require('nvim-treesitter.configs').setup({
      auto_install = true,

      ensure_installed = {
        'css',
        'dockerfile',
        'graphql',
        'html',
        'javascript',
        'lua',
        'json',
        'tsx',
        'typescript',
        'yaml',
      },

      highlight = { enable = true },
    })
  end
}
