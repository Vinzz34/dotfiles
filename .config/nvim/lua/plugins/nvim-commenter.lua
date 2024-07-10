return {
	"terrortylor/nvim-comment",
	config = function()
		require("nvim_comment").setup({
			line_mapping = "gcc",
			operator_mapping = "gc",
		})
	end,
}
