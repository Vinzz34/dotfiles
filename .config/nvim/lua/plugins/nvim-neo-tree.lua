return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>")
			vim.cmd([[nnoremap <leader>e :Neotree reveal<cr>]])
			require("neo-tree").setup({
				close_if_last_window = true,
				filesystem = {
					filtered_items = {
						visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
						hide_dotfiles = false,
						hide_gitignored = true,
					},
				},
				window = {
					width = 25,
				},
			})
		end,
	},
}
