require("neotest").setup({
  adapters = {
    require("neotest-python")({
          dap = { justMyCode = false },
    }),
    require("neotest-plenary"),
    require('neotest-rspec')({
      rspec_cmd = function()
        return vim.tbl_flatten({
          "bundle",
          "exec",
          "rspec",
        })
      end
    }),
  },
})
