return {
  'folke/todo-comments.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    vim.keymap.set('n', ']t', function()
      require('todo-comments').jump_next()
    end, { desc = 'Next todo comment' }),

    vim.keymap.set('n', '[t', function()
      require('todo-comments').jump_prev()
    end, { desc = 'Previous todo comment' }),

    -- :TodoTelescope keywords=TODO,FIX
    vim.keymap.set('n', '<leader>xt', ':TodoTrouble<CR>', { desc = 'Find TODO/FIX' }),

    -- :TodoTelescope keywords=TODO,FIX
    vim.keymap.set('n', ']T', ':TodoTelescope<CR>', { desc = 'Find TODO/FIX' }),
    vim.keymap.set('n', '[T', ':TodoQuickFix<CR>', { desc = 'Find TODO/FIX' }),
  },
}
