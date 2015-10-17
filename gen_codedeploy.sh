# compile
mvn clean install -DskipTests=true -P h2

# generate source
zip -r appfuse-v1-src.zip src/ pom.xml

# generate binary
rm -rf deploy
cp -r src/main/deploy .
mkdir deploy/content
cp target/*.war deploy/content/ROOT.war
cd deploy
zip -r appfuse-v1.zip .
mv appfuse-v1.zip ..
cd ..

