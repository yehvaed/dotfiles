require("bootstrap")
-- load general options
require("core.options")

-- load plugins and their configs if they exist
local function traversePluginSpec(spec)
  local plugins = {}

  for _, plugin in ipairs(spec) do
    if type(plugin) == "string" then
      plugin = { plugin }
    end

    local name = plugin.name or vim.fs.basename(plugin[1])

    name = name:gsub("%..+$", "")
    local ok, mod = pcall(require, "core.plugin_config." .. name)

    if plugin.dependencies then
      plugin.dependencies = traversePluginSpec(plugin.dependencies)
    end

    if ok then
      local plugin_with_config = vim.tbl_extend("force", plugin, mod)
      table.insert(plugins, plugin_with_config)
    end

    table.insert(plugins, plugin)
  end

  return plugins
end

require("lazy").setup(traversePluginSpec(require("core.plugins")), require("core.plugin_config.lazy"))

vim.cmd("colorscheme ayu-dark")
