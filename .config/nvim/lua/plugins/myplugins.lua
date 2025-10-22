return {
  {
    "mason-org/mason.nvim",
    opts = {},
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
}
