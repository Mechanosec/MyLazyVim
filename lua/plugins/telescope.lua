return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
      "nvim-telescope/telescope-file-browser.nvim",
    },

    keys = {
      {
        "<leader>e",
        function()
          local telescope = require("telescope")

          local function telescope_buffer_dir()
            return vim.fn.expand("%:p:h")
          end

          telescope.extensions.file_browser.file_browser({
            path = "%:p:h",
            cwd = telescope_buffer_dir(),
            respect_gitignore = false,
            hidden = false,
            grouped = true,
            previewer = true,
            initial_mode = "normal",
            -- layout_config = { height = 40 },
          })
        end,
        desc = "File Browser",
      },
      {
        "<leader>ff",
        function()
          require("telescope.builtin").find_files()
        end,
        desc = "Find File",
      },
      {
        "<leader>fw",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc = "Live Grep",
      },
      { "<leader><space>", false },
      { "<leader>/", false },
      { "<leader>,", false },
      { "<leader>:", false },
      { "<leader>fb", false },
      { "<leader>fc", false },
      { "<leader>fF", false },
      { "<leader>fg", false },
      { "<leader>fr", false },
      { "<leader>gc", false },
      -- { "<leader>gs", false },
      { "<leader>s", false },
      { "<leader>sa", false },
      { "<leader>sb", false },
      { "<leader>sc", false },
      { "<leader>sC", false },
      { "<leader>sd", false },
      { "<leader>sD", false },
      { "<leader>sg", false },
      { "<leader>sG", false },
      { "<leader>sh", false },
      { "<leader>sH", false },
      { "<leader>sj", false },
      { "<leader>sk", false },
      { "<leader>sl", false },
      { "<leader>sm", false },
      { "<leader>sM", false },
      { "<leader>so", false },
      { "<leader>sq", false },
      { "<leader>sR", false },
      { "<leader>ss", false },
      { "<leader>sS", false },
      { "<leader>sw", false },
      { "<leader>sW", false },
      { "<leader>uc", false },
    },
    config = function(_, opts)
      local telescope = require("telescope")
      local actions = require("telescope.actions")

      opts.defaults = {
        -- file_ignore_patterns = { "node_modules" },
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.45,
            results_width = 0.8,
          },
          vertical = {
            mirror = false,
          },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        },
        mappings = {
          n = {
            ["q"] = actions.close,
          },
          -- i = {
          -- 	["<esc>"] = actions.close,
          -- },
        },
      }

      opts.extensions = {
        file_browser = {
          hijack_netrw = true,
        },
      }

      telescope.setup(opts)
      require("telescope").load_extension("fzf")
      require("telescope").load_extension("file_browser")
    end,
  },
}
