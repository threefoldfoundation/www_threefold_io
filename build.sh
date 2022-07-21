rm rf build
rm rf html
npm run prod:build
rsync -rav static/ html/
echo 'see http://localhost:3000/'
node -e '(e=require("express"))().use(e.static("html")).listen(3000)'

