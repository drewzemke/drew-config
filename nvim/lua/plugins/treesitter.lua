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
        'json',
        'lua',
        'markdown',
        'tsx',
        'typescript',
        'vim',
        'yaml',
      },

      highlight = { enable = true },
    })
  end
}
