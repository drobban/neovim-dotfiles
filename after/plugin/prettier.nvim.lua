local null_ls = require("null-ls")

local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
local event = "BufWritePre" -- or "BufWritePost"
local async = event == "BufWritePost"

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.black,
  },
  on_attach = function(client, bufnr)
--	vim.keymap.set("n", "<Leader>m==", function()
--	  print("Formatting triggered...")
--	  vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
--	end, { buffer = bufnr, desc = "[lsp] format" })


    if client.supports_method("textDocument/formatting") then
      vim.keymap.set("n", "<Leader>mf", function()
        vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
      end, { buffer = bufnr, desc = "[lsp] format" })

      -- format on save
    --   vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
    --   vim.api.nvim_create_autocmd(event, {
    --     buffer = bufnr,
    --     group = group,
    --     callback = function()
    --       vim.lsp.buf.format({ bufnr = bufnr, async = async })
    --     end,
    --     desc = "[lsp] format on save",
    --   })
     end
    --
     if client.supports_method("textDocument/rangeFormatting") then
      vim.keymap.set("x", "<Leader>mf", function()
        vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
      end, { buffer = bufnr, desc = "[lsp] format" })
    end
  end,
})


local prettier = require("prettier")

prettier.setup({
  bin = 'prettierd', -- or `'prettierd'` (v0.23.3+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
  cli_options = {
    print_width = 120,
    semi = true,
    single_quote = true,
    tab_width = 2,
    trailing_comma = "es5",
    use_tabs = false,
  },
})

--" formatting in normal mode
-- nmap <Leader>f <Plug>(prettier-format)

--" range_formatting in visual mode
--xmap <Leader>f <Plug>(prettier-format)
