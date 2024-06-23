return {
	{
		"github/copilot.vim",
	},
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		dependencies = {
			{ "github/copilot.vim" },
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		},
		opts = {
			debug = true, -- Enable debugging
		},
    config = function()
      require "CopilotChat".setup()
      vim.keymap.set("n", "<C-m>", ":CopilotChat<CR>", {})
    end,
	},
}
