local set = vim.opt
set.number = true  -- shows line numbers
-- vim.opt.autoindent = true                       -- enable auto-indent
vim.opt.cursorline = true                       -- highlight the current line
vim.opt.number = true                           -- set numbered lines
vim.opt.relativenumber = true                   -- set relative numbered lines
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "*.py" },
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
  end,
})
