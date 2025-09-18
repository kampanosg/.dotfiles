return {
    {
        "mfussenegger/nvim-dap",
        lazy = true,
        config = function()
            vim.fn.sign_define("DapBreakpoint", {
                text = "●",
                texthl = "DiagnosticError",
                linehl = "",
                numhl = ""
            })
            vim.fn.sign_define("DapBreakpointCondition", {
                text = "◐",
                texthl = "DiagnosticWarn",
                linehl = "",
                numhl = ""
            })
            vim.fn.sign_define("DapLogPoint", {
                text = "◆",
                texthl = "DiagnosticInfo",
                linehl = "",
                numhl = ""
            })
            vim.fn.sign_define("DapStopped", {
                text = "▶",
                texthl = "DiagnosticOk",
                linehl = "DapStoppedLine",
                numhl = ""
            })
            vim.fn.sign_define("DapBreakpointRejected", {
                text = "○",
                texthl = "DiagnosticHint",
                linehl = "",
                numhl = ""
            })
        end,
        keys = {
            {
                "<leader>db",
                function() require("dap").toggle_breakpoint() end,
                desc = "toggle a breakpoint"
            },

            {
                "<leader>dc",
                function() require("dap").continue() end,
                desc = "start or continue debugging session"
            },

            {
                "<leader>dC",
                function() require("dap").run_to_cursor() end,
                desc = "run to cursor"
            },

            {
                "<leader>dT",
                function() require("dap").terminate() end,
                desc = "terminate a debugging session"
            },
        }
    },
    {
        "rcarriga/nvim-dap-ui",
        config = true,
        keys = {
            {
                "<leader>du",
                function()
                    require("dapui").toggle({})
                end,
                desc = "toggle the debugger UI"
            },
        },
        dependencies = {
            "nvim-neotest/nvim-nio",
            "theHamsta/nvim-dap-virtual-text",
        }
    },
    {
        "leoluz/nvim-dap-go",
        ft = "go",
        config = function()
            require("dap-go").setup({
                delve = {
                    path = "dlv",
                    initialize_timeout_sec = 20,
                    port = "${port}",
                    args = {},
                    build_flags = "",
                    detached = vim.fn.has("win32") == 0,
                },
                tests = {
                    verbose = false,
                }
            })
        end,
    }
}
