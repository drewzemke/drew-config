local mappings = {

  insert = {
    -- No arrow keys allowed, gotta practice!
    ['<Up>'] = '<Nop>',
    ['<Down>'] = '<Nop>',
    ['<Left>'] = '<Nop>',
    ['<Right>'] = '<Nop>',

    -- Move lines up and down with alt
    ['<A-j>'] = '<Esc>:m .+1<cr>==gi',
    ['<A-k>'] = '<Esc>:m .-2<cr>==gi',

    -- Unbind Ctrl-j and Ctrl-k because they keep messing me up
    ['<C-j>'] = '<Nop>',
    ['<C-k>'] = '<Nop>',

    -- Move to beginning/end of line without leaving insert
    ['<C-l>'] = '<Esc>A',
    ['<C-h>'] = '<Esc>_i',

    -- Ctrl-w to close a pane
    ['<C-w>'] = '<Esc><Cmd>wq<cr>',

  },

  normal = {
    -- Escape clears search highlight
    ['<Esc>'] = ':noh<cr>',

    -- Enter adds a new line
    ['<cr>'] = 'o<Esc>',

    -- Use semicolon instead of colon for command mode
    [';'] = { ':', { silent = false, nowait = true } },

    -- No arrow keys allowed, gotta practice!
    ['<Up>'] = '<Nop>',
    ['<Down>'] = '<Nop>',
    ['<Left>'] = '<Nop>',
    ['<Right>'] = '<Nop>',

    -- 0 goes to first non-whitespace character instead of first character
    ['0'] = '_',

    -- Move lines up and down with alt
    ['<A-j>'] = ':m .+1<cr>==g<Esc>',
    ['<A-k>'] = ':m .-2<cr>==g<Esc>',

    -- Pane navigation
    ['<C-h>'] = '<C-w>h',
    ['<C-j>'] = '<C-w>j',
    ['<C-k>'] = '<C-w>k',
    ['<C-l>'] = '<C-w>l',

    -- Ctrl-W to close a pane
    ['<C-w>'] = '<Cmd>wq<cr>',

    -- NvimTree
    ['<leader>e'] = ':NvimTreeToggle<cr>',

    -- Toggleterm
    ['<leader>`'] = [[:ToggleTerm dir=git_dir size=10 direction=horizontal<cr>]],
    ['<leader>~'] = [[:ToggleTerm dir=git_dir direction=float<cr>]],

    -- Telescope
    ['<leader>ff'] = require('telescope.builtin').find_files,
    ['<leader>fs'] = require('telescope.builtin').live_grep,
    ['<leader>fb'] = require('telescope.builtin').buffers,
    ['<leader>fh'] = require('telescope.builtin').help_tags,

  },

  terminal = {
    -- Escape to get out of terminal mode
    -- TODO: revisit this at some point?
    ['<Esc>'] = '<C-\\><C-n>',

    -- I keep pressing Shift-space by accident :(
    ['<S-Space>'] = '<Space>',

    -- Pane navigation from terminal
    ['<C-h>'] = '<C-\\><C-n><C-w>h',
    ['<C-j>'] = '<C-\\><C-n><C-w>j',
    ['<C-k>'] = '<C-\\><C-n><C-w>k',
    ['<C-l>'] = '<C-\\><C-n><C-w>l',

    -- Ctrl-W to close a pane
    ['<C-w>'] = '<Cmd>q<cr>',

  },

  visual = {
    -- Move blocks up and down with alt
    ['<A-j>'] = [[:m '>+1<cr>gv=gv]],
    ['<A-k>'] = [[:m '<-2<cr>gv=gv]],

  }

}

require('utils.keymap-loader').load(mappings)
