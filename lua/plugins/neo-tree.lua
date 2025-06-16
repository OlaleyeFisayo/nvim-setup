return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    -- Get AstroUI icons
    local get_icon = require("astroui").get_icon
    
    return require("astrocore").extend_tbl(opts, {
      -- Remove buffers and git from sources
      sources = {
        "filesystem",
      },
      source_selector = {
        winbar = false,
        statusline = false,
        sources = {
          { source = "filesystem", display_name = get_icon("FolderClosed", 1, true) .. "Files " },
        },
      },
      popup_border_style = "rounded",
      window = {
        position = "float",
        popup = {
          size = {
            height = 20, -- Fixed height
            width = 45,  -- Set a reasonable fixed width for now
          },
          position = {
            row = 2,
            col = 2,
          },
        },
        mappings = {
          ["<space>"] = "none",
          ["<esc>"] = "close_window",
        }
      },
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
        use_libuv_file_watcher = true,
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = false,
          hide_by_name = {},
          hide_by_pattern = {},
          always_show = {
            ".gitignore",
            ".env",
          },
          never_show = {},
          never_show_by_pattern = {},
        },
      },
      default_component_configs = {
        container = {
          enable_character_fade = true
        },
        indent = {
          indent_size = 2,
          padding = 1,
          with_markers = true,
          indent_marker = "│",
          last_indent_marker = "└",
          highlight = "NeoTreeIndentMarker",
        },
        icon = {
          folder_closed = get_icon("FolderClosed"),
          folder_open = get_icon("FolderOpen"),
          folder_empty = get_icon("FolderEmpty"),
          default = get_icon("DefaultFile"),
          highlight = "NeoTreeFileIcon"
        },
        modified = {
          symbol = get_icon("FileModified"),
          highlight = "NeoTreeModified",
        },
        name = {
          trailing_slash = false,
          use_git_status_colors = true,
          highlight = "NeoTreeFileName",
        },
        git_status = {
          symbols = {
            added     = get_icon("GitAdd"),
            modified  = get_icon("GitChange"),
            deleted   = get_icon("GitDelete"),
            renamed   = get_icon("GitRenamed"),
            untracked = get_icon("GitUntracked"),
            ignored   = get_icon("GitIgnored"),
            unstaged  = get_icon("GitUnstaged"),
            staged    = get_icon("GitStaged"),
            conflict  = get_icon("GitConflict"),
          }
        },
        diagnostics = {
          symbols = {
            hint = get_icon("DiagnosticHint"),
            info = get_icon("DiagnosticInfo"),
            warn = get_icon("DiagnosticWarn"),
            error = get_icon("DiagnosticError"),
          }
        },
      },
      -- This removes the header completely
      hide_root_node = true,
      retain_hidden_root_indent = false,
      
      -- Add event handlers to ensure proper initialization
      event_handlers = {
        {
          event = "file_opened",
          handler = function(file_path)
            -- auto close
            require("neo-tree.command").execute({ action = "close" })
          end
        },
        {
          event = "neo_tree_popup_buffer_enter",
          handler = function()
            vim.cmd([[setlocal wrap]])
          end,
        },
      },
    })
  end,
}
