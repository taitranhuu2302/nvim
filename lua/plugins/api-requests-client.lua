return {
  "wet-sandwich/hyper.nvim",
  tag = "0.1.3",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<leader>A",
      desc = "Api Rest Client",
    },
    {
      "<leader>Ar",
      function()
        require("hyper.view").show()
      end,
      desc = "Pop up UI",
    },
  },
}
