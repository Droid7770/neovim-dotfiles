require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "rust_analyzer", "clangd", "ts_ls" }
vim.lsp.config.ts_ls = {
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" },

}
vim.lsp.config.clangd = {
          cmd = {
            'clangd',
            '--clang-tidy',
            '--background-index',
            '--offset-encoding=utf-8',
          },
          root_markers = { '.clangd', 'compile_commands.json' },
          filetypes = { 'c', 'cpp' },
}
vim.lsp.config.rust_analyzer = {
            cargo = {
                allFeatures = true,
                features = "all", -- alternative way to specify features
            },
          filetypes = { 'rs' },
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
