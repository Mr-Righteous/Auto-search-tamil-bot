if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Mr-Righteous/Sashah15-bot.git /Sashah15-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Sashah15-bot
fi
cd /Sashah15-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
