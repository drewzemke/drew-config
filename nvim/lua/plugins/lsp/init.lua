return {
  'neovim/nvim-lspconfig',
  event = 'BufReadPre',
  dependencies = {
    'ray-x/lsp_signature.nvim',
    'stevearc/dressing.nvim',
    'folke/neodev.nvim',
    'hrsh7th/cmp-nvim-lsp',
  },

  config = function()
    -- TODO : Diagnostic setup

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    local completion = require('cmp_nvim_lsp').default_capabilities(capabilities)

    capabilities.textDocument.completion = completion.textDocument.completion

    local options = {
      on_attach = require('plugins.lsp.on_attach'),
      capabilities = capabilities,
      flags = {
        debounce_text_changes = 150,
      }
    }


    for server, opts in pairs(require('plugins.lsp.servers')) do
      opts = vim.tbl_deep_extend('force', {}, options, opts or {})
      require('lspconfig')[server].setup(opts)
    end

  end
}
