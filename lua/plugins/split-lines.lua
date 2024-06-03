return {
  "Wansmer/treesj",
  keys = {
    { "<space>m", desc = "Split code line " },
    { "<space>j", desc = "Join code line " },
    -- "<space>s",
  },
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("treesj").setup({})
  end,
}
