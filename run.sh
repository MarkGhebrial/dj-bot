#/bin/bash

cargo build --release

# Restart the bot if it crashes
while true
do
    ./target/release/dj-bot
    sleep 1
    echo Restarting bot
done