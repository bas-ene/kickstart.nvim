--NEOTREE

return {
	vim.api.nvim_set_keymap('n', '<Leader>n', ':Neotree toggle<CR>', { noremap = true, silent = true }),

	--TERMINAL
	vim.api.nvim_set_keymap('n', "<leader>tt", ":ToggleTerm<CR>", { noremap = true, silent = true }),
	--COPILOT
	vim.api.nvim_set_keymap('n', '<leader>p', ":Copilot panel<CR>", { noremap = true, silent = true }),
	vim.api.nvim_set_keymap('v', '<leader>p', "<Esc>:Copilot panel<CR>", { noremap = true, silent = true }),
	--others
	--save with Ctrl-s
	vim.api.nvim_set_keymap('n', "<C-s>", ":wa<CR>", { noremap = true, silent = true }),
	vim.api.nvim_set_keymap('i', "<C-s>", "<Esc>:wa<CR>gi", { noremap = true, silent = true }),
	--DadBodUI
	vim.api.nvim_set_keymap('n', '<leader>md', ':DBUIToggle<CR>', { noremap = true, silent = true }),
}
