return {
  "rcarriga/nvim-dap-ui",
  config = function(_, opts)
    local dapui = require("dapui")

    opts.layouts = {
      {
        elements = {
          {
            id = "scopes",
            size = 0.75,
          },
          {
            id = "breakpoints",
            size = 0.25,
          },
        },
        position = "right",
        size = 70,
      },
      {
        elements = {
          {
            id = "repl",
            size = 1,
          },
        },
        position = "bottom",
        size = 10,
      },
    }

    dapui.setup(opts)
  end,

  -- "mfussenegger/nvim-dap",
  -- dependencies = {
  --   "mxsdev/nvim-dap-vscode-js",
  --   {
  --     "microsoft/vscode-js-debug",
  --     opt = true,
  --     build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
  --   },
  -- },
  -- config = function()
  --   vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "", linehl = "", numhl = "" })
  --   vim.fn.sign_define("DapStopped", { text = "▶️", texthl = "", linehl = "", numhl = "" })
  --
  --   require("dap-vscode-js").setup({
  --     debugger_path = vim.fn.stdpath("data") .. "/lazy/vscode-js-debug",
  --     adapters = { "pwa-node", "pwa-chrome", "node-terminal" }, -- which adapters to register in nvim-dap
  --   })
  --
  --   local dap = require("dap")
  --   for _, language in ipairs({ "typescript", "javascript" }) do
  --     dap.configurations[language] = {
  --       {
  --         type = "pwa-node",
  --         request = "launch",
  --         name = "Launch file2",
  --         program = "${file}",
  --         cwd = "${workspaceFolder}",
  --       },
  --       {
  --         type = "pwa-node",
  --         request = "attach",
  --         name = "Attach2",
  --         program = "${file}",
  --         cwd = "${workspaceFolder}",
  --         sourceMaps = true,
  --       },
  --       {
  --         type = "noe-terminal",
  --         request = "attach",
  --         name = "Attach3",
  --         program = "${file}",
  --         cwd = "${workspaceFolder}",
  --         sourceMaps = true,
  --       },
  --     }
  --   end
  -- end,
}
