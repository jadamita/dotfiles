return {
  'smoka7/hop.nvim',
  version = "*",
  opts = {},
  config = function ()
    require("hop").setup()
    vim.keymap.set("n", "<C-s>", "<cmd>HopWord<cr>")
  end
}
