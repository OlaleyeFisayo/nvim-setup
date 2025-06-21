return {
  {
    "astronvim/astrocore",
    ---@type astrocoreopts
    opts = {
      mappings = {
        n = {
          -- move single line up/down
          ["<a-j>"] = { ":m .+1<cr>==", desc = "move line down" },
          ["<a-k>"] = { ":m .-2<cr>==", desc = "move line up" },

          -- toggle between current and previous buffer
          ["<leader><leader>"] = { "<c-^>", desc = "toggle previous buffer" },

          -- disable existing toggleterm mappings
          ["<leader>tf"] = false,
          ["<leader>th"] = false,
          ["<leader>tl"] = false,
          ["<leader>tn"] = false,
          ["<leader>tp"] = false,
          ["<leader>tt"] = false,
          ["<leader>tv"] = false,

          -- main terminal toggle
          ["<c-n>"] = { "<cmd>toggleterm direction=float<cr>", desc = "toggle floating terminal" },

          -- numbered floating terminals
          ["<c-1>"] = { "<cmd>1toggleterm direction=float<cr>", desc = "toggle terminal 1" },
          ["<c-2>"] = { "<cmd>2toggleterm direction=float<cr>", desc = "toggle terminal 2" },
          ["<c-3>"] = { "<cmd>3toggleterm direction=float<cr>", desc = "toggle terminal 3" },
          ["<c-4>"] = { "<cmd>4toggleterm direction=float<cr>", desc = "toggle terminal 4" },
          ["<c-5>"] = { "<cmd>5toggleterm direction=float<cr>", desc = "toggle terminal 5" },
          ["<c-6>"] = { "<cmd>6toggleterm direction=float<cr>", desc = "toggle terminal 6" },
          ["<c-7>"] = { "<cmd>7toggleterm direction=float<cr>", desc = "toggle terminal 7" },
          ["<c-8>"] = { "<cmd>8toggleterm direction=float<cr>", desc = "toggle terminal 8" },
          ["<c-9>"] = { "<cmd>9toggleterm direction=float<cr>", desc = "toggle terminal 9" },
        },
        -- terminal mode mappings
        t = {
          ["<c-n>"] = { "<cmd>toggleterm<cr>", desc = "toggle floating terminal" },
          ["<c-1>"] = { "<cmd>1toggleterm<cr>", desc = "toggle terminal 1" },
          ["<c-2>"] = { "<cmd>2toggleterm<cr>", desc = "toggle terminal 2" },
          ["<c-3>"] = { "<cmd>3toggleterm<cr>", desc = "toggle terminal 3" },
          ["<c-4>"] = { "<cmd>4toggleterm<cr>", desc = "toggle terminal 4" },
          ["<c-5>"] = { "<cmd>5toggleterm<cr>", desc = "toggle terminal 5" },
          ["<c-6>"] = { "<cmd>6toggleterm<cr>", desc = "toggle terminal 6" },
          ["<c-7>"] = { "<cmd>7toggleterm<cr>", desc = "toggle terminal 7" },
          ["<c-8>"] = { "<cmd>8toggleterm<cr>", desc = "toggle terminal 8" },
          ["<c-9>"] = { "<cmd>9toggleterm<cr>", desc = "toggle terminal 9" },
        },
        -- visual mode
        v = {
          -- move selected lines up/down
          ["<a-j>"] = { ":m '>+1<cr>gv=gv", desc = "move selection down" },
          ["<a-k>"] = { ":m '<-2<cr>gv=gv", desc = "move selection up" },
        },
        -- insert mode
        i = {
          -- move current line up/down with Alt+Up/Down arrows
          ["<a-up>"] = { "<esc>:m .-2<cr>==gi", desc = "move line up" },
          ["<a-down>"] = { "<esc>:m .+1<cr>==gi", desc = "move line down" },
        },
      },
    },
  },
}
