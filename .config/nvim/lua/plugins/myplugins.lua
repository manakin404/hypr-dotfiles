return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = { "markdownlint-cli2", "markdown-toc" },
    },
  },
  { "rust-lang/rust.vim" },
  {
    "mrcjkb/rustaceanvim",
    version = "^6",
    lazy = false,
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
      },
    },
  },
  {
    "MoaidHathot/dotnet.nvim",
    cmd = "DotnetUI",
    opts = {},
  },
  { "akinsho/toggleterm.nvim", version = "*", config = true },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" }, -- if you use the mini.nvim suite
    opts = {
      code = {
        sign = false,
        width = "block",
        right_pad = 1,
      },
      heading = {
        sign = false,
        icons = {},
      },
      checkbox = {
        enabled = false,
      },
    },
    ft = { "markdown", "norg", "rmd", "org", "codecompanion" },
    config = function(_, opts)
      require("render-markdown").setup(opts)
      Snacks.toggle({
        name = "Render Markdown",
        get = require("render-markdown").get,
        set = require("render-markdown").set,
      }):map("<leader>um")
    end,
  },
}
