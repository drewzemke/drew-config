local mappings = {

	normal = {
		-- Use semicolon instead of colon for command mode
		-- Is there a cleaner way to do this?
		[';'] = ':',

		-- Neotree
		['<leader>t'] = ':Neotree<cr>'
	}

}

require('utils.keymap-loader').load(mappings)

