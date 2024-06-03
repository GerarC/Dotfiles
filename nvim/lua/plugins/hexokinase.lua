return {
	"RRethy/vim-hexokinase",
	run = "make hexokinase",
	config = function()
		vim.g.Hexokinase_highlighters = { "backgroundfull" }
		vim.g.Hexokinase_optInPatterns = {
			"full_hex",
			"rgb",
			"rgba",
			"hsl",
			"hsla",
		}
	end,
}
