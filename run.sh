#/bin/bash

echo Updating yt-dlp...
yt-dlp -U

echo Building...
cargo build --release

echo Starting the bot...

# Restart the bot if it crashes
while true
do
    ./target/release/dj-bot
    sleep 1
    echo Restarting the bot!
done
