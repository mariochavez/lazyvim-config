return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "ruby",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruby_ls = {
          mason = true,
        },
        -- solargraph = {
        --   mason = false,
        --   autoformat = false,
        --   diagnostic = false,
        -- },
      },
    },
  },
  {
    "nvim-neotest/neotest",
    -- optional = true,
    dependencies = {
      "olimorris/neotest-rspec",
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-rspec"),
        },
      })
    end,
  },
  {
    "folke/which-key.nvim",
    optional = true,
    opts = {
      defaults = {
        ["<leader>r"] = { name = "Ruby on Rails" },
      },
    },
  },
  {
    "weizheheng/ror.nvim",
    keys = {
      { "<leader>rc", ":lua require('ror.commands').list_commands()<CR>", desc = "Comands" },
      { "<leader>rf", ":lua require('ror.finders').select_finders()<CR>", desc = "Finders" },
      { "<leader>rr", ":lua require('ror.routes').list_routes()<CR>", desc = "List routes" },
      { "<leader>rs", ":lua require('ror.routes').sync_routes()<CR>", desc = "Sync routes" },
      { "<leader>rt", ":lua require('ror.schema').list_table_columns()<CR>", desc = "Show tables columns" },
    },
  },
}
