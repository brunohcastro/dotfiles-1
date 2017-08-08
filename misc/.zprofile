if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  eval "$(ssh-agent -s)"
  echo "--- Github login ---"
  ssh-add ~/.ssh/id_rsa  
  pulseaudio --start
  startx
fi
