unset HISTFILE

if [ ! -d "/x/torr_incoming/" ]; then
    echo "Please, mount x:"
    sleep 4
    exit
fi

cd $USERPROFILE
cd Downloads

pwd
sleep 2

for f in *.torrent
do

  fz=`basename "$f"`

  if [ ! -f "$f" ]; then
    exit
  fi

  if [ -f "zwadwnldd/$fz" ]; then
    echo "Removing dup $fz"
    rm "$fz"
  fi
  
  if [ ! -f "zwadwnldd/$fz" ]; then
    echo "Creating placeholder $fz"
    echo -n "1">"zwadwnldd/$fz"
    attrib +H +S "zwadwnldd/$fz"
  fi

done

# cp *.torrent zwa-dwnldd/

# rm -f *.torrent

mv *.torrent /x/torr_incoming/

sleep 4
