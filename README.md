# IDKHOW.nvim 
Color schemes inspired by albums from **I DONT KNOW HOW BUT THEY FOUND ME**.

### Included Themes:
- **Razzmatazz**: A colorful light theme with two additional dark variants.
- **1984 Extended Play**: A high-contrast dark theme with a minimalist palette.
- **Gloom Division**: A soft, pastel light theme.

## Installation and Usage
Add the plugin to your Neovim configuration:
```lua
return {
    "amper-xand/idkhow.nvim",
    lazy = false,
    priority = 1000,

    init = function()
        vim.o.termguicolors = true
        require("idkhow").setup({
            NChide = true, -- optional, makes text lighter in non current windows
        })
        vim.cmd [[colorscheme razzmatazz]]
    end,
}
```

## Razzmatazz
<p align="center">
  <img src="assets/razzmatazz.png?" alt="Razzmatazz" width="90%">
</p>

## 1984 extended play
<p align="center">
  <img src="assets/extendedplay.png?" alt="1984 extended play" width="90%">
</p>

## Gloom division
<p align="center">
  <img src="assets/gloomdivision.png?" alt="Gloomdivision" width="90%">
</p>
