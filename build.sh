rm -rf build
# rm -rf public
npm run prod:build
rsync -rav static/ public/
echo 'see http://localhost:3000/'
node -e '(e=require("express"))().use(e.static("public")).listen(3000)'

