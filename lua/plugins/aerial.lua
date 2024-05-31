return {
	{
		"stevearc/aerial.nvim",
		verstion = "*",
		lazy = true,
		event = {"BufReadPre", "BufNewFile", "BufEnter"},
		config = function()
			require("aerial").setup{
				on_attach = function(bufnr)
					vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
    				vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
	            end
			}
		end,
	}
}
