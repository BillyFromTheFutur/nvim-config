Vim�UnDo� �c�gET$㰻8z[�3]h��.i:����   \                                  f�Ũ    _�                             ����                                                                                                                                                                                                                                                                                                                                                             f��C     �                   �               5��                   P                      z      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f��D    �          Q          return {5��                                                  5�_�                    +       ����                                                                                                                                                                                                                                                                                                                            +          +          V       f��v    �   *   ,   P      *        vim.cmd [[colorscheme tokyonight]]5��    *                     �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                       P           V        f���    �                   �               �              P   return {        'nvim-lualine/lualine.nvim',   n    dependencies = { 'kyazdani42/nvim-web-devicons', 'nvim-treesitter/nvim-treesitter', 'SmiteshP/nvim-gps' },       config = function()   *        local lualine = require('lualine')   '        local gps = require("nvim-gps")               local colors = {               blue   = '#80a0ff',               cyan   = '#79dac8',               black  = '#080808',               white  = '#c6c6c6',               red    = '#ff5189',               violet = '#d183e8',               grey   = '#303030',   	        }               local bubbles_theme = {               normal = {   >                a = { fg = colors.black, bg = colors.violet },   <                b = { fg = colors.white, bg = colors.grey },   =                c = { fg = colors.black, bg = colors.black },               },   E            insert = { a = { fg = colors.black, bg = colors.blue } },   E            visual = { a = { fg = colors.black, bg = colors.cyan } },   E            replace = { a = { fg = colors.black, bg = colors.red } },               inactive = {   =                a = { fg = colors.white, bg = colors.black },   =                b = { fg = colors.white, bg = colors.black },   =                c = { fg = colors.black, bg = colors.black },               },   	        }               function StatusLine()   O            local extension = string.match(vim.fn.expand('%:t'), "%.([^%.]+)$")   '            if extension == "dart" then   B                return vim.g.flutter_tools_decorations.app_version               else                   return ""               end           end       ,        --vim.cmd [[colorscheme tokyonight]]           lualine.setup {               options = {   (                --theme = bubbles_theme,   %                theme = 'tokyonight',   +                component_separators = '|',   E                section_separators = { left = '', right = '' },               },               sections = {                   lualine_a = {   a                    { 'mode', separator = { left = '' }, right_padding = 1, top_padding = 1 },                   },   5                lualine_b = { 'filename', 'branch' },   -                lualine_c = { 'fileformat' },                   lualine_x = {   2                    --vim.cmd [[%!v:StatusLine()]]   *                    'diff', 'diagnostics',                   },   5                lualine_y = { 'filetype', 'progress',   4                    --require('pomodoro').statusline                   },                   lualine_z = {   e                    { 'location', separator = { right = '' }, left_padding = 1, top_padding = 1 },                   },               },   !            inactive_sections = {   +                lualine_a = { 'filename' },   @                lualine_b = { 'branch', 'diff', 'diagnostics' },   '                lualine_c = { 'mode' },   9                lualine_x = { 'fileformat', 'filetype' },   +                lualine_y = { 'progress' },   +                lualine_z = { 'location' },               },               tabline = {},               extensions = {},   	        }       end   }5��            P                      |             �                    Z                       K      5�_�                   Z        ����                                                                                                                                                                                                                                                                                                                                                             f�    �   Z   \        5��    Z                      K                     5�_�                    3       ����                                                                                                                                                                                                                                                                                                                                                             f��     �   2   4   [      E                section_separators = { left = '', right = '' },5��    2                     �                     5�_�                   3       ����                                                                                                                                                                                                                                                                                                                                                             f�4     �   2   4   [      G                --section_separators = { left = '', right = '' },5��    2                    �                    5�_�                    3       ����                                                                                                                                                                                                                                                                                                                                                             f�6   	 �   2   4   [      J                    -section_separators = { left = '', right = '' },5��    2                     �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             f�ť     �          [    5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f�Ŧ     �         \    �         \    5��                                                5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             f�ŧ    �          ]          """5��                                                  5�_�      	             ?       ����                                                                                                                                                                                                                                                                                                                                                             f��     �   >   @   [      R                 --   { 'mode', separator = { left = '' }, right_padding = 1 },5��    >                     9                     5�_�      
           	   K       ����                                                                                                                                                                                                                                                                                                                                                             f�    �   J   L   [      V                  --  { 'location', separator = { right = '' }, left_padding = 1 },5��    J                     "
                     5�_�   	               
   3       ����                                                                                                                                                                                                                                                                                                                                                             f�     �   2   4   [      B            -section_separators = { left = '', right = '' },5��    2                     �                     5�_�                    Z        ����                                                                                                                                                                                                                                                                                                                                                             f�     �   Z   [           5��    Z                      K                     5��