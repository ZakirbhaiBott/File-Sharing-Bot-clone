if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ZakirbhaiBott/File-Sharing-Bot-clone.git /EvaMaria
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /File-Sharing-Bot-clone
fi
cd /File-Sharing-Bot-clone
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
