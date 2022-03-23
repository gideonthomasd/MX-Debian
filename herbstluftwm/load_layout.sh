#!/bin/bash

SEL="$(ls ~/.config/herbstluftwm/layouts/ | dmenu -fn "Noto Sans Regular-16" -p "Which Layout?: " )"
herbstclient load "$(cat ~/.config/herbstluftwm/layouts/$SEL)"
