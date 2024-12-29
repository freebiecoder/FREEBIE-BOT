if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/freebiecoder/FREEBIE-BOT /FREEBIE-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /FREEBIE-BOT
fi
cd /FREEBIE-BOT
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
