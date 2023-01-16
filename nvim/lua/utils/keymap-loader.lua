local M = {}

local mode_sign = {
	insert = 'i',
	normal = 'n',
	visual = 'v'
}

function M.load(mappings)
	for mode, mapping in pairs(mappings) do
		for key, value in pairs(mapping) do
			local options = {}

			if type(value) == 'table' then
				options = value[2]
				value = value[1]
			end

			options = vim.tbl_extend('force', { silent = true }, options)
			vim.keymap.set( mode_sign[mode], key, value, options )
		end
	end
end

return M
