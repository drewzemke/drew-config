local mappings = {

	normal = {
		-- Use semicolon instead of colon for command mode
		[';'] = ':',

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

