# abort on errors
set -e
# build
npm run build
# navigate into the build output directory
cd dist
# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
git init
git add -A
git commit -m 'deploy'
# si los cambios se suben a https://<USERNAME>.github.io/ ejecutar lo siguiente
#https://github.com/karenolea/actividad-deploy.git
git push -f https://github.com/karenolea/actividad-deploy.git master:gh-pages
read -p "Cambios actualizados en Bitbucket. Presione [Enter] para
continuar..."
# si los cambios se suben a https://<USERNAME>.github.io/<REPO> ejecutar lo siguiente
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages
cd -