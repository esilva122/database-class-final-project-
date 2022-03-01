dotnet tool install --global dotnet-ef

dotnet-ef dbcontext scaffold "Host=localhost;Database=schools;Username=mhassanin;Password=magical_password" Npgsql.EntityFrameworkCore.PostgreSQL --output-dir Models --context-dir Models --force
