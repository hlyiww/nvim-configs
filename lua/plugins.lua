local packer = require("packer")
packer.startup({
  function(use)
    -- Packer 可以管理自己本身
    use 'wbthomason/packer.nvim'
    -- 你的插件列表...
    use 'hlyiww/dracula_pro.nvim'
    use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
  end,
  config = {
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "single" })
        end,
    },
  }
})