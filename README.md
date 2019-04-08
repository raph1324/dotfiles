# dotfiles
my i3wm configuration

## Bar
I use *polybar* as my status bar with a few custom shell scripts for displaying the status of my two batteries and the wifi signal strength (in percent).  
The scripts can be found in `.config/polybar/`

## Application Launcher
My application launcher is rofi with a custom theme. The configuration is in `.config/rofi/mytheme.rasi` for the most part, but some settings are saved in `.config/rofi/config.rasi`

## Compositor
My compositor is a fork of compton which provides better blur effects. See [here](https://github.com/tryone144/compton "GitHub page of the fork") for more details.

## lock screen
You may notice that in my i3 config file there is a themed i3-lock instance. It uses the [i3-lock-color](https://github.com/PandorasFox/i3lock-color) package.
