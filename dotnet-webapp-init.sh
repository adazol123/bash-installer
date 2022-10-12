echo "ASP.NET WEB APP & REST API INITIALIZATION SCRIPT"
echo "Framework: (e.g. \"MVC\")"; read framework
sleep 0.5
echo "Project name: "; read name
echo "DOTNET Version: (default: net6.0)"; read version



if [ -z $version ]; then
    dotnet new $framework -o $name --no-https -f net6.0
else
    dotnet new $framework -o $name --no-https -f $version
fi

echo "ASP.NET WEB APP $name has create successfully!"
