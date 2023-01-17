local mappings = {

  insert = {
    -- No arrow keys allowed, gotta practice!
    ['<Up>'] = '<Nop>',
    ['<Down>'] = '<Nop>',
    ['<Left>'] = '<Nop>',
    ['<Right>'] = '<Nop>',
    
     -- Move lines up and down with alt
    ['<m-j>'] = '<Esc>:m .+1<cr>==gi',
    ['<m-k>'] = '<Esc>:m .-2<cr>==gi', 
   
  },

	normal = {
		-- Use semicolon instead of colon for command mode
		[';'] = ':',

     -- No arrow keys allowed, gotta practice!
    ['<Up>'] = '<Nop>',
    ['<Down>'] = '<Nop>',
    ['<Left>'] = '<Nop>',
    ['<Right>'] = '<Nop>',

    -- Move lines up and down with alt
    ['<m-j>'] = '<Esc>:m .+1<cr>==g<Esc>',
    ['<m-k>'] = '<Esc>:m .-2<cr>==g<Esc>', 
 
    -- Pane navigation
    ['<C-h>'] = '<C-w>h',
    ['<C-j>'] = '<C-w>j',
    ['<C-k>'] = '<C-w>k',
    ['<C-l>'] = '<C-w>l',

		-- Neotree
		['<leader>e'] = ':Neotree<cr>',

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

    -- Terminal window navigation
    ['<C-h>'] = '<C-\\><C-n><C-w>h',
    ['<C-j>'] = '<C-\\><C-n><C-w>j',
    ['<C-k>'] = '<C-\\><C-n><C-w>k',
    ['<C-l>'] = '<C-\\><C-n><C-w>l',

  }

}

require('utils.keymap-loader').load(mappings)

