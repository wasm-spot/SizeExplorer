name: dotnet Core CI

on: [push]

jobs:
  build:

    runs-on: ubuntu-latest
    
    steps:
    - uses: actions/checkout@v1
    - name: Setup .NET Core
      uses: actions/setup-dotnet@v1
      with:
        dotnet-version: 3.0.100-preview9-014004
    - name: Build with dotnet
      run: dotnet build WebApp --configuration Release
