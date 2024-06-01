if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Shona0818/EasyAdvAutoFilter.git /EasyAdvAutoFilter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EasyAdvAutoFilter
fi
cd /spidyauto
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
