-- import null-ls plugin safely
local setup, null_ls = pcall(require, "null-ls")
if not setup then
	return
end

-- for conciseness
local formatting = null_ls.builtins.formatting -- to setup formatters
local diagnostics = null_ls.builtins.diagnostics -- to setup linters

null_ls.setup({
  debug = false,
  sources = {
		--  to disable file types use
		--  "formatting.prettier.with({disabled_filetypes: {}})" (see null-ls docs)
		formatting.prettier, -- js/ts formatter
		diagnostics.eslint_d.with({ -- js/ts linter
			-- only enable eslint if root has .eslintrc.js (not in youtube nvim video)
			condition = function(utils)
				return utils.root_has_file(".eslintrc.js") -- change file extension if you use something else
			end,
		}),

    nls.builtins.hover.dictionary,
    formatting.eslint_d,
    nls.builtins.code_actions.eslint_d,
    -- diagnostics.cfn_lint,
    -- diagnostics.fish,
    -- diagnostics.golangci_lint,
    -- formatting.gofumpt,
    -- formatting.goimports,
    diagnostics.jsonlint,
    -- diagnostics.pylint,
    diagnostics.flake8,
    formatting.black,
    formatting.isort,
    diagnostics.rubocop,
    formatting.rubocop,
    -- diagnostics.shellcheck,
    -- diagnostics.vale,
    diagnostics.mypy,
    -- diagnostics.yamllint,
    -- formatting.rustfmt,
    -- formatting.terraform_fmt,
    -- formatting.stylua,
    -- diagnostics.selene
	}
})
