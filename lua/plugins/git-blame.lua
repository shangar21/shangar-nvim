return {
	{
		"f-person/git-blame.nvim",
		version="*",
		lazy=false,
		config = function ()
			require("gitblame").setup()
		end,
	}
}
