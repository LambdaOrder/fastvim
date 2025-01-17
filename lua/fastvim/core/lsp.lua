return {
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'williamboman/mason.nvim', opts = {} },
      'williamboman/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',
      { 'j-hui/fidget.nvim', opts = {} },
      'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())
  
      local on_attach = function(client, bufnr)
        local buf_set_keymap = function(keys, func, desc, mode)
          vim.keymap.set(mode or 'n', keys, func, { buffer = bufnr, desc = 'LSP: ' .. desc })
        end
  
        buf_set_keymap('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')
        buf_set_keymap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
        buf_set_keymap('gI', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')
        buf_set_keymap('<leader>D', require('telescope.builtin').lsp_type_definitions, 'Type [D]efinition')
        buf_set_keymap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
        buf_set_keymap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')
        buf_set_keymap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
        buf_set_keymap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction', { 'n', 'x' })
        buf_set_keymap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
  
        if client.supports_method('textDocument/documentHighlight') then
          local hl_group = vim.api.nvim_create_augroup('LSPDocumentHighlight', { clear = true })
          vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
            buffer = bufnr,
            group = hl_group,
            callback = vim.lsp.buf.document_highlight,
          })
          vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
            buffer = bufnr,
            group = hl_group,
            callback = vim.lsp.buf.clear_references,
          })
        end
      end
  
      local servers = {
        lua_ls = {
          settings = {
            Lua = {
              completion = { 
                callSnippet = 'Replace' 
            },
            },
          },
        },
      }
  
      require('mason').setup()
      require('mason-lspconfig').setup({
        ensure_installed = vim.tbl_keys(servers),
      })
  
      require('mason-lspconfig').setup_handlers({
        function(server_name)
          require('lspconfig')[server_name].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = servers[server_name],
          })
        end,
      })
    end,
  }
  