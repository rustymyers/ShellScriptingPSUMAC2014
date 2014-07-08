FavoriteAnimal=Dog
while [[ $FavoriteAnimal != '' ]]; do
  echo 'guess my fav animal : '
  read guess
  if [[ "$guess" == "$FavoriteAnimal" ]]; then
	  echo Right
	  exit
	else
	    echo Nope
	fi
done
