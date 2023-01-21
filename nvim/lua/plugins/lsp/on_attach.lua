return function (client, bufnr)
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
  
  -- Keymaps
  local telescope = require('telescope.builtin')
  local opts = { noremap = true, silent = true, buffer = bufnr }
  local keymaps = {
    normal = {
      ['R'] = {vim.lsp.buf.rename, opts},
      ['gr'] = {telescope.lsp_references, opts}
      -- ADD MORE
    }
  }

  -- TODO setup autocmds? whatever those are...

  -- Setup keymaps with util
  require('utils.keymap-loader').load(keymaps)
end
