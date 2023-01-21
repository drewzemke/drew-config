return function(client, bufnr)
  -- Setup lsp signature
  if client.supports_method('textDocument/signatureHelp') then
    require('lsp_signature').on_attach({
      fixpos = true,
      padding = " ",
    }, bufnr)
  end

  -- Setup formatting
  if client.supports_method('textDocument/formatting') then
    vim.api.nvim_buf_set_var(bufnr, 'format_with_lsp', true)
  end

  -- Create autocommand for on-save formatting
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd('BufWritePre', {
      group = vim.api.nvim_create_augroup('Format', { clear = true }),
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.formatting_seq_sync()
      end
    })
  end

  -- Keymaps
  local telescope = require('telescope.builtin')
  local opts = { noremap = true, silent = true, buffer = bufnr }
  local keymaps = {
    normal = {
      ['R'] = { vim.lsp.buf.rename, opts },
      ['gr'] = { telescope.lsp_references, opts },
      ['gd'] = { telescope.lsp_definitions, opts }
      -- ADD MORE
    }
  }

  -- Setup keymaps with util
  require('utils.keymap-loader').load(keymaps)
end
