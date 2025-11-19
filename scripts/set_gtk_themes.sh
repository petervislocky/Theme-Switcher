#!/bin/bash

set_gtk_theme() {
  local theme_name="$1"

  if [ -z "$theme_name" ]; then
    echo "Warning: No GTK theme provided"
    return 1
  fi

  gsettings set org.gnome.desktop.interface gtk-theme "$theme_name"
}

set_icon_theme() {
  local icon_theme="$1"

  if [ -z "$icon_theme" ]; then
    echo "Warning: No icon theme provided"
    return 1
  fi

  gsettings set org.gnome.desktop.interface icon-theme "$icon_theme"
}

set_cursor_theme() {
  local cursor_theme="$1"

  if [ -z "$cursor_theme" ]; then
    echo "Warning: No cursor theme provided"
    return 1
  fi

  gsettings set org.gnome.desktop.interface cursor-theme "$cursor_theme"
}

set_color_scheme() {
  local scheme="$1"

  # Default to dark
  if [ -z "$scheme" ]; then
    scheme="prefer-dark"
  fi

  if [[ "$scheme" != "prefer-dark" && "$scheme" != "prefer-light" ]]; then
    echo "Error: Color scheme must be 'prefer-dark' or 'prefer-light'"
    return 1
  fi

  gsettings set org.gnome.desktop.interface color-scheme "$scheme"
}

switch_gtk_theme() {
  local gtk_theme="$1"
  local icon_theme="$2"
  local cursor_theme="$3"
  local color_scheme="$4"

  set_gtk_theme "$gtk_theme"
  set_icon_theme "$icon_theme"
  set_cursor_theme "$cursor_theme"
  set_color_scheme "$color_scheme"
}

switch_gtk_theme "$1" "$2" "$3" "$4"
