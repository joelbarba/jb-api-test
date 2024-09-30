sec=5
while true; do
  # echo "fetching https://jb-api-test2.netlify.app/.netlify/functions/api"
  res=`curl -s -X GET 'https://jb-api-test2.netlify.app/.netlify/functions/api'`
  d=`date +%Y-%m-%d_%H:%M:%S`
  if [ "$res" == "YES" ]; then
    echo "$d - Door closed (YES)"
  else
    echo "$d - Door open (!== YES)"
    # termux-vibrate -f -d 2000
    # termux-toast -g top "There is a new log"
    # termux-notification --sound --vibrate 500,1000,200 -c "something strange"
    # termux-volume music 3
    # termux-media-player play taunt.wav
  fi
  # sleep $sec
  for ((i = $sec ; i >= 0 ; i-- )); do 
    echo $i
    sleep 1s
  done
done

