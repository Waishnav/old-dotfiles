# Don't skip the README
## Screenshots (BSPWM rice)
`kitty & fish & neofetch` 
<img src="https://cdn.discordapp.com/attachments/846673042893832195/886930186757615656/unknown.png" align="center">
`rofi-launcher and conky and neofetch`
<img src="https://cdn.discordapp.com/attachments/846673042893832195/931088611821113354/unknown.png" align="center">

## Info 
```
OS              Arch x86_64
ker             5.13.13_1
init            systemd
de/wm           BSPWM
bar             Polybar
app-launcher    Rofi
terminal        Kitty
shell           fish
editor          nvim (learning nvim)
font            JetBrains Mono Nerd Font
```

## Workflow & keybindings
### Skip this if you are already into linux ricing
I feel one of the greatest USP (Unique Selling Point) of the linux is customizablity of workflow... You can make your computer look and work exactly the way you want...
I've used Windows in the past, the workflow was not that great as that of Linux provides. Like its just headach if there are more than 6 apps are opened ( you have to remember visually where is that window is located ) I don't think its productive at all... 
Even if you are using Ubuntu the same things happens. Bruh
I think PopOS has little bit edge here cause of it's workflow related features like tiled windows...
Thats where the linux ricing helps..
right now my life so pleased after a 2 months or so, using my rice you can't even Imagine! Now I'm like (to windows user) "May God mercy on yours Soul... Why are you still using crap like windows even if there are other option :p" 

this is how my desktop look like and this is how it works...
- I use 6 workspaces (use mostly 5 anyway). Each workspaces is define for certain things like workspace-1 is define for development/Programming related stuffs, whereas workspace-2 contains only Brave browser all the time..
- similarly workspace-3 designing related stuffs (like Inkscape, PhotoGimp)
- workspace-4 music
- workspace-5 Discord n Reddit n Telegram
- workspace-6 Mystery box (things that I use rarely like watching Movies or web-series)

At this moment I am so used to whenever I want to use browser my hands just go to `SUPER + 2` and boom there we go...

Obivously you can modify this workspaces the way you want like If you want make another workspace devoted for taking notes you can simple

These are the basic keybinds. Read through the `sxhkd/sxhkdrc` file for more keybinds like increasing/decreasing size of window in floating mode

|        Keybind           |                 Function                 |
| ------------------------ | ---------------------------------------- |
| `alt + T`                | Launch terminal (kitty)                  |
| `alt + B`                | Launch Brave                             |
| `Super + W`              | Close window                             |
| `Super + Space`          | Open rofi menu                           |
| `Super + H/J/K/L`        | Navigate through windows                 |
| `Super + Shift + T/W`    | Switch through layouts (tall,wide}       |
| `Super + T`              | Make a floating window tiled             |
| `Super + F`              | Make a tiled window floating             |
| `Super + 1/2/3/4/5/6`    | Switch the Workspaces                    |
| `Super + Shift + T/W`    | Switch to the Tall/Wide layout           |

Note: 1. `Super` refers to the `Win` key.

Note: 2. I used to the keybindings to close tab in browser `ctrl + w` thats why I use `Super + w` to close any window

## Important Notes
- BSPWM only handles window layouts so it need extra pair of hand to manage keybindings (sxhkd)
- I use kitty as my terminal with JetBrains Mono Nerd Font 
- You need to install Material Icon font so that every icons in polybar to be work fine
- Change some values in polybar like in wlan , battery module for your wifi adapter etc , run polybar example to find out any erorrs if polybar isnt working.

## Installation 
Firstly clone this repo by following cmd and cd into dotfiles
```bash
$ git clone https://github.com/Waishnav/dotfiles.git --branch main --single-branch
$ cd ./dotfiles
$ cp .config ~/
$ sudo cp ./fonts/* /usr/share/fonts/ && sudo fc-cache -f -v
```
## Todo
- [ ] Documenting Installtion
- [ ] macOS/Windows style window switching (alt+tab)
