# Shell script to start the WEB and API server.

# Run "bash env.sh" command on the project root folder to execute the script. 
# If you have any permission issue run "chmod +x ./env.sh" command. 

echo -n "Please select the environment to start the server (API or WEB): "
read env

if [ $env == "API" ]; then
  echo "🚀 Running the API with success 🚀"
  cd ./apps/api && yarn dev
elif [ $env == "WEB" ]; then
  echo "🚀 Running the Web Application with success on 3000 port 🚀"
  cd ./apps/web && yarn dev
else
  echo "Invalid option, please choose the correct environment."
  exit 0
fi