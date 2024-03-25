return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruby_ls = {
          mason = true,
        },
        solargraph = {
          mason = false,
          autoformat = false,
          diagnostic = false,
        },
      },
    },
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
