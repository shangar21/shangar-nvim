return {
	{
		"hrsh7th/nvim-cmp",
		-- event = 'InsertEnter',
		event = "VeryLazy",
		dependencies = {
		  "hrsh7th/cmp-nvim-lsp",
		  "onsails/lspkind-nvim",
		  "hrsh7th/cmp-path",
		  "hrsh7th/cmp-buffer",
		  "hrsh7th/cmp-omni",
		  "hrsh7th/cmp-emoji",
		  "quangnguyen30192/cmp-nvim-ultisnips",
		},
		config = function()
			require("cmp").setup {
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				mapping = {
					["<down>"] = require("cmp").mapping.select_next_item({ behavior = require("cmp").SelectBehavior.Insert }),
					["<up>"] = require("cmp").mapping.select_prev_item({ behavior = require("cmp").SelectBehavior.Insert }),
					["<C-d>"] = require("cmp").mapping.scroll_docs(-4),
					["<C-f>"] = require("cmp").mapping.scroll_docs(4),
					["<C-Space>"] = require("cmp").mapping.complete(),
					["<C-e>"] = require("cmp").mapping.close(),
					["<CR>"] = require("cmp").mapping.confirm {
						behavior = require("cmp").ConfirmBehavior.Insert,
						select = true,
					},
				},
				sources = {
					{ name = "nvim_lsp" },
					{ name = "path" },
					{ name = "buffer" },
					{ name = "omni" },
					{ name = "emoji" },
					{ name = "ultisnips" },
				},
			}
		end,
	}
}
