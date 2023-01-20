return {
  'L3MON4D3/LuaSnip',

  config = function()
    require('luasnip').config.set_config({
      enable_autosnippets = true,
    })
  end,
}
