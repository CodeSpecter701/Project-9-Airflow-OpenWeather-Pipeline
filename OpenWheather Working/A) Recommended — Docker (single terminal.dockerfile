A) Recommended — Docker (single terminal command; isolated, easy to remove)

Works on Windows, Linux, macOS (needs Docker Desktop installed).

(If Docker not installed) Install Docker Desktop from https://www.docker.com/products/docker-desktop
 (you can do this via browser once, then run Docker).

Open PowerShell (or Git Bash) and run:

# Pull & run pgAdmin container, map container port 80 -> host port 5050
docker run -p 5050:80 `
  -e PGADMIN_DEFAULT_EMAIL="you@example.com" `
  -e PGADMIN_DEFAULT_PASSWORD="StrongPassword123!" `
  -d --name pgadmin dpage/pgadmin4


Open pgAdmin in browser from terminal:

start "http://localhost:5050"


Login with the email/password you passed (you@example.com / StrongPassword123!) and add your PostgreSQL server via the web UI.

To stop & remove container:

docker stop pgadmin
docker rm pgadmin