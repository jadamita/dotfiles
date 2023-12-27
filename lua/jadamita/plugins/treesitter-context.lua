return {
  "nvim-treesitter/nvim-treesitter-context",
  event = { 'WinScrolled', 'CmdlineEnter' },
  config = function ()
    require("nvim-treesitter.configs").setup({
      enable = true,
      max_lines = 0,
      line_numbers = true,
    })
  end
}
