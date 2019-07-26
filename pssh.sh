# Captures docker instance name
# Ssh into docker container

# Check and set parameters and options.
for item in $*
do
  case $item in
    '-help' | '--help')
      help=$item
    ;;
    *)
      site=$item
  esac
done

# Help display definition.
if [[ $help ]]; then
  echo
  echo 'Ssh into a pantheon docker instance'
  echo 'Its not hard, but gets annoying when you have to do it over and over.'
  echo
  echo 'Simply provide the site alias'
  echo
  echo 'Parameters:'
  echo '  @[site-alias] Site alias of target docker instance'
  echo '  [site-alias]  Site alias accepted with or without @'
  exit 0
fi

# Check if docker pantheon instance is running.
target=$(docker ps | grep 'pld-'$site'_appserver_1')

# If a $site parameter is passed.
# If $target returns a value, we know we have a running container.
if [[ $site && $target ]]; then
  docker exec -it 'pld-'$site'_appserver_1' /bin/bash
else
  echo
  echo "You need to provide the pantheon site name"
  echo "Use -help for more assistance"
  echo
fi