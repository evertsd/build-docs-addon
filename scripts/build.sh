# Create pkg/Code.gs
echo "Removing old Code.gs"
rm ./pkg/Code.gs
touch ./pkg/Code.gs
echo "Creating Code.gs"
while IFS='' read -r line || [[ -n "$line" ]]; do
  cat ./src/$line >> ./pkg/Code.gs
done < "./src/Code.schema"
echo "Finished creating Code.gs"

echo "Removing old sidebar.html"
rm ./pkg/sidebar.html
touch ./pkg/sidebar.html
echo "Creating sidebar.html"
while IFS='' read -r line || [[ -n "$line" ]]; do
  cat ./src/$line >> ./pkg/sidebar.html
done < "./src/sidebar.schema"
echo "Finished building pkg"
