-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Make the Coc completion work
vim.api.nvim_create_autocmd("User", {
  pattern = "AstroFile",
  callback = function()
    vim.keymap.set("i", "<CR>", function()
      if vim.fn["coc#pum#visible"]() == 1 then
        return vim.fn["coc#pum#confirm"]()
      elseif vim.fn["coc#expandableOrJumpable"]() == 1 then
        return vim.api.nvim_replace_termcodes("<C-r>=coc#rpc#request('snippetNext', [])<CR>", true, true, true)
      else
        return vim.api.nvim_replace_termcodes("<CR>", true, true, true)
      end
    end, { expr = true, noremap = true, silent = true })
  end,
})
