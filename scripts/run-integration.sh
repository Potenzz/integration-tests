docker compose up -d
echo '🟡 - Waiting for database to be ready...'
./scripts/wait-for-it.sh "localhost:5432" -- echo '🟢 - Database is ready!'
npx prisma migrate dev --name init
npm run test
docker compose down