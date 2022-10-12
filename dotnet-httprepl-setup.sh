echo "Enter development port (running currently): "
read port
dotnet tool install -g Microsoft.dotnet-httprepl
sleep 0.5
dotnet dev-certs https --trust
sleep 0.5
if( -z $port); then
    echo "Missing Port. Please specify the port:"
    read port
else    
    httpreply https://localhost:$port
    echo "HTTPREPL setup success! You can test the API endpoints."
    echo "Next Steps:"
    echo "> connect https://localhost:{PORT}"
    echo "> ls"
    echo "> cd <API_endpoints>"
    echo "> get"
fi
