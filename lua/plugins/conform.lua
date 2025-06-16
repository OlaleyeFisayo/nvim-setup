return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      javascript = { "eslint" },
      javascriptreact = { "eslint" },
      typescript = { "eslint" },
      typescriptreact = { "eslint" },
      vue = { "eslint" },
    },
    formatters = {
      eslint = {
        condition = function(ctx)
          return vim.fs.find(
            { ".eslintrc.js", ".eslintrc.js", ".eslintrc.json", ".eslintrc", "eslint.config.js", "eslint.config.mjs" },
            { path = ctx.dirname, upward = true }
          )[1] ~= nil
        end,
      },
    },
    format_on_save = {
      lsp_fallback = true,
    },
  },
}
