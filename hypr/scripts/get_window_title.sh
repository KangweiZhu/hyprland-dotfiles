# printout current window in an json format, then find it class(Application name)
# jq -r meaning raw_output, e.g. xx, instead of an output with "xxx"
current_window_class=$(hyprctl activewindow -j | jq -r ".class")
# Capitcalize the first letter of the class name
current_window_class=$(echo $current_window_class | sed -E 's/^(.)/\U\1/')
echo ${current_window_class}