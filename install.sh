#/bin/bash

cargo build --release

cp target/release/dj-bot /usr/bin/dj-bot
cp dj.service /etc/systemd/system/dj-bot.service

systemctl enable dj-bot
systemctl start dj-bot
