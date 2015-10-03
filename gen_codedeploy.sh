# generate source
zip -r appfuse-v3-src.zip src/ pom.xml

# generate binary
rm -rf deploy
cp -r src/main/deploy .
mkdir deploy/content
cp target/*.war deploy/content/ROOT.war
cd deploy
zip -r appfuse-v3.zip .
mv appfuse-v3.zip ..
cd ..

