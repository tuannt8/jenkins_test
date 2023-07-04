$curPath=pwd

echo "Building test"
cd .\UnitTest
dotnet build . --configuration Release

echo "Execute test"
cd bin\Release\net6.0
dotnet test UnitTest.dll

cd $curPath