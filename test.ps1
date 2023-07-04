$curPath=pwd

cd .\UnitTest
dotnet build . --configuration Release

cd bin\Release\net6.0
dotnet test UnitTest.dll

cd $curPath