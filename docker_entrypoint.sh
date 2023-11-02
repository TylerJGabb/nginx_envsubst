echo "Substituting Env Vars Into Nginx Config" &&
# https://stackoverflow.com/questions/47081507/why-does-rewriting-a-file-with-envsubst-file-file-leave-it-empty
envsubst < /etc/nginx/conf.d/default.conf > nginx.temp.conf &&
mv nginx.temp.conf /etc/nginx/conf.d/default.conf &&

echo "Debugging Config" &&
cat /etc/nginx/conf.d/default.conf &&

echo "Starting Nginx" &&
nginx -g 'daemon off;'