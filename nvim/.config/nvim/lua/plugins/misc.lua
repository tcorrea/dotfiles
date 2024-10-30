-- Standalone plugins with less than 10 lines of config go here
return {
  {
    -- Tmux & split window navigation
    'christoomey/vim-tmux-navigator',
    vim.keymap.set('n', '<C-h>', ':TmuxNavigateLeft<cr>'),
    vim.keymap.set('n', '<C-j>', ':TmuxNavigateDown<cr>'),
    vim.keymap.set('n', '<C-k>', ':TmuxNavigateUp<cr>'),
    vim.keymap.set('n', '<C-l>', ':TmuxNavigateRight<cr>'),
  },
  {
    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',
  },
  {
    -- Powerful Git integration for Vim
    'tpope/vim-fugitive',
  },
  {
    -- GitHub integration for vim-fugitive
    'tpope/vim-rhubarb',
  },
  {
    -- Hints keybinds
    'folke/which-key.nvim',
  },
  -- Plenary
  { 'nvim-lua/plenary.nvim' },
  {
    -- Autoclose parentheses, brackets, quotes, etc.
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
    opts = {},
  },
  {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    cmd = 'Trouble',
    keys = {
      {
        '<leader>xx',
        '<cmd>Trouble diagnostics toggle<cr>',
        desc = 'Diagnostics (Trouble)',
      },
      {
        '<leader>xX',
        '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
        desc = 'Buffer Diagnostics (Trouble)',
      },
      {
        '<leader>cs',
        '<cmd>Trouble symbols toggle focus=false<cr>',
        desc = 'Symbols (Trouble)',
      },
      {
        '<leader>cl',
        '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
        desc = 'LSP Definitions / references / ... (Trouble)',
      },
      {
        '<leader>xL',
        '<cmd>Trouble loclist toggle<cr>',
        desc = 'Location List (Trouble)',
      },
      {
        '<leader>xQ',
        '<cmd>Trouble qflist toggle<cr>',
        desc = 'Quickfix List (Trouble)',
      },
    },
  },
  {
    'mg979/vim-visual-multi',
    init = function()
      vim.g.VM_maps = {
        ['Find Under'] = '<C-d>',
        ['Find Subword Under'] = '<C-d>',
      }
    end,
  },
  {
    'wuelnerdotexe/vim-astro',
    config = function()
      vim.g.astro_typescript = 'enable'
      vim.g.astro_stylus = 'enable'
    end,
  },
  {
    'kdheepak/lazygit.nvim',
    -- optional for floating window border decoration
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    lazy = false,
    config = function()
      vim.keymap.set('n', '<leader>gg', ':LazyGit <CR>', { noremap = true })
    end,
  },
  {
    'kkoomen/vim-doge',
  },
  {
    'olexsmir/gopher.nvim',
    ft = 'go',
    -- branch = "develop", -- if you want develop branch
    -- keep in mind, it might break everything
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      'mfussenegger/nvim-dap', -- (optional) only if you use `gopher.dap`
    },
    config = function(_, opts)
      require('gopher').setup(opts)
    end,
    -- (optional) will update plugin's deps on every update
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
    opts = {},
  },
}
