return {
  'romgrk/barbar.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    -- TODO: more setup plz
    -- see https://github.com/romgrk/barbar.nvim
    require('bufferline').setup({
      animation = true,
    })

    local mappings = {
      normal = {
        ['<A-]>'] = '<Cmd>BufferNext<cr>',
        ['<A-[>'] = '<Cmd>BufferPrevious<cr>',

        ['<A->>'] = '<Cmd>BufferMoveNext<cr>',
        ['<A-<>'] = '<Cmd>BufferMovePrevious<cr>',

        ['<A-w>'] = '<Cmd>BufferClose<cr>',

        ['<A-p>'] = '<Cmd>BufferPick<cr>',
      }
    }
    require('utils.keymap-loader').load(mappings)

    -- Set the offset to respect NvimTree
    local nvim_tree_events = require('nvim-tree.events')
    local bufferline_api = require('bufferline.api')

    local function get_tree_size()
      return require 'nvim-tree.view'.View.width
    end

    nvim_tree_events.subscribe('TreeOpen', function()
      bufferline_api.set_offset(get_tree_size())
    end)

    nvim_tree_events.subscribe('Resize', function()
      bufferline_api.set_offset(get_tree_size())
    end)

    nvim_tree_events.subscribe('TreeClose', function()
      bufferline_api.set_offset(0)
    end)
  end
}
