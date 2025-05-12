python3 ~/.config/hypr/scripts/dynamic_pill/capture.py &
while true
do
    out=$(cat ~/.config/hypr/scripts/dynamic_pill/dynamic_out.txt)
    echo "$out"  | jq --unbuffered --compact-output
    sleep 0.5
done