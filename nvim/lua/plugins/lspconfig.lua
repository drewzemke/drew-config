return {
  'neovim/nvim-lspconfig',
  event = 'BufReadPre',

  config = function()
    local on_attach = function(client, bufnr)
      -- formatting
      -- FIXME: not actually sure what this does
      if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_create_autocmd('BufWritePre', {
          group = vim.api.nvim_create_augroup('Format', { clear = true }),
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.formatting_seq_sync()
          end
        })
      end
    end

    -- prereq: 'brew install lua-language-server'
    require('lspconfig')['sumneko_lua'].setup {
      on_attach = on_attach,
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file('', true),
            checkThirdParty = false
          },
        },
      },
    }

    -- prereq: npm install -g typescript typescript-language-server
    require('lspconfig')['tsserver'].setup {
      on_attach = on_attach,
      filetypes = { 'typescript', 'typescriptreact', 'typescript.tsx' },
      cmd = { 'typescript-language-server', '--stdio' }
    }

  end,
}
