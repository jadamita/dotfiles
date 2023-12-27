return {
  "simrat39/symbols-outline.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  event = "LspAttach",
  config = function ()
    require("symbols-outline").setup({
    })
    vim.keymap.set("n", "<C-o>", "<cmd>SymbolsOutline<CR>")
  end
}
