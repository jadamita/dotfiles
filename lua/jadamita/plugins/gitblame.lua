return {
  "f-person/git-blame.nvim",
  event = 'BufReadPre',
  config = function ()
    require('gitblame').setup()
  end
}
