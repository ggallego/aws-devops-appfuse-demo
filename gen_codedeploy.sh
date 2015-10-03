# generate source
zip -r appfuse-v2-src.zip src/ pom.xml

# generate binary
rm -rf deploy
cp -r src/main/deploy .
mkdir deploy/content
cp target/*.war deploy/content/ROOT.war
cd deploy
zip -r appfuse-v2.zip .
mv appfuse-v2.zip ..
cd ..
