return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  },

  config = function()
    require('mason').setup();

    local server_names = vim.tbl_keys(require('plugins.lsp.servers'))


    require('mason-lspconfig').setup({
      ensure_installed = server_names,
      --      automatic_installation = { exclude = server_names }
    })
  end
}
