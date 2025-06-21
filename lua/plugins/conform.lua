return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      javascript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      typescript = { "eslint_d" },
      typescriptreact = { "eslint_d" },
      vue = { "eslint_d" },
    },
    formatters = {
      eslint_d = {
        condition = function(ctx)
          return vim.fs.find(
            { ".eslintrc.js", ".eslintrc.json", ".eslintrc", "eslint.config.js", "eslint.config.mjs" },
            { path = ctx.dirname, upward = true }
          )[1] ~= nil
        end,
      },
    -- },
    format_on_save = {
      lsp_fallback = true,
    },
  },
}
