return {
	{
		"pocco81/auto-save.nvim",
		version="*",
		lazy = false,
		config = function ()
			require("auto-save").setup()
		end,
	}
}
