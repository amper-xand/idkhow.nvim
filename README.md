# IDKHOW.nvim 
Color schemes inspired by albums from **I DONT KNOW HOW BUT THEY FOUND ME**.

### Included Themes:
- **Razzmatazz**: A colorful light theme with an additional dark variant.
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
        vim.cmd [[colorscheme razzmatazz]]
    end,
}
```

## Razzmatazz
![Razzmatazz](assets/razzmatazz.png?)

## 1984 extended play
![1984 extended play](assets/extendedplay.png?)

## Gloom division
![Gloomdivision](assets/gloomdivision.png?)
