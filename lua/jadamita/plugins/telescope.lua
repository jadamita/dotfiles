return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'AckslD/nvim-neoclip.lua',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
  },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', function()
      builtin.find_files({
        path_display = { 'tail' },
      })
    end, {})
    vim.keymap.set('n', '<leader>fg', function()
      builtin.live_grep({
        path_display = { 'tail' },
      })
    end, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    vim.keymap.set('n', '<leader>fv', builtin.git_files, {})
    vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})
    vim.keymap.set('n', '<leader>fw', builtin.grep_string, {})
    vim.keymap.set('n', '<leader>fc', ':Telescope neoclip<CR>', {})
    vim.keymap.set('n', '<leader>fx', builtin.diagnostics, {})


    require('neoclip').setup()
    require("telescope").setup({
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case"
        },
      },
    })

    require('telescope').load_extension('fzf')
    require('telescope').load_extension('neoclip')
  end
}
