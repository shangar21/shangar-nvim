return {{
	"gelguy/wilder.nvim",
	version = "*",
	lazy = true,
	config = function()
		require("wilder").setup {
			quicklfix = {
				ignore_current_buffer = true,
			},
		}
		require("wilder.actions").set_wilder()
		require("wilder.presets").preset_basic()
		build = ":UpdateRemotePlugins"
	end,	
}}
