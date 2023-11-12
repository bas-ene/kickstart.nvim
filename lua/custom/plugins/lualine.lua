return {
	-- Set lualine as statusline
	'nvim-lualine/lualine.nvim',
	-- See `:help lualine.txt`
	opts = {
		options = {
			icons_enabled = true,
			theme = 'codedark',
			section_separators = { left = '', right = '' },
			component_separators = { left = '', right = '' },
			disabled_filetypes = {
				--'neotree',
				--'toggleterm'
			},
			globalstatus = true,
		},
		sections = {
			lualine_a = { 'mode' },
			lualine_b = { 'branch' },
			lualine_c = { {
				'filename',
				file_status = true, -- displays file status (readonly status, modified status)
				path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
			} },
			lualine_y = {
				{
					'diagnostics',
					sources = { "nvim_diagnostic" },
					symbols = {
						error = ' ',
						warn = ' ',
						info = ' ',
						hint = ' '
					}
				},
				'encoding',
				--'filetype'
			},
			--lualine_y = { 'progress' },
			lualine_z = { 'location' }
		},
		--inactive_sections = {
		--	lualine_a = {},
		--	lualine_b = {},
		--	lualine_c = { {
		--		'filename',
		--		file_status = true, -- displays file status (readonly status, modified status)
		--		path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
		--	} },
		--	lualine_x = { 'location' },
		--	lualine_y = {},
		--	lualine_z = {}
		--},
		inactive_sections = {
			-- these are to remove the defaults
			lualine_a = {},
			lualine_b = {},
			lualine_y = {},
			lualine_z = {},
			lualine_c = {},
			lualine_x = {},
		},
		tabline = {},
		extensions = { 'fugitive' }
	},
}
