return {
  {
    "navarasu/onedark.nvim",
    config = function ()
      require("onedark").setup({
        theme = "onedark",
		style = "darker",
        code_style = {
          comments = "italic",
          functions = "bold"
        },
      })
      vim.cmd("colorscheme " .. "onedark")
    end,
  }
}