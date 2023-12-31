if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/kk9546/MR-KK-BOT.git /MR-KK-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MR-KK-BOT 
fi
cd /MR-KK-BOT 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
