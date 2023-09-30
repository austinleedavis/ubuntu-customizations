#####################
# This script installs powerline and the git status configuration files
# 
# After installation, update the default font used in your terminal apps. 
# **Bash**:   Go to Preferences >  "theme name". Then Checkbox "Custom font" 
#             and select *Source Code Pro for Powerline*
# **VSCode**: Ctrl+Shift+P > Preferences: Open User Settings (JSON) > Add 
#             the following: `"terminal.integrated.fontFamily":"Source Code 
#             Pro for Powerline",`
#####################

# Install powerline-gitstatus and the associated fonts 
apt install powerline-gitstatus fonts-powerline

#######################################################
# Copy configuration files to their proper locations  #
#######################################################

## Assign icons to each component
## Use the NerdFonts search (https://www.nerdfonts.com/cheat-sheet) to find nice icons
cp __main__.json ~/.config/powerline/themes/shell/__main__.json

## Define colors
## Color codes can be obtained from https://www.tweaking4all.com/software/linux-software/xterm-color-cheat-sheet/
## Format is specified in the Powerline docs at https://powerline.readthedocs.io/en/master/configuration/reference.html#color-definitions
cp colors.json ~/.config/powerline/colors.json # defines colors

## Assign colors to each component
cp default.json ~/.config/powerline/colorschemes/default.json 
