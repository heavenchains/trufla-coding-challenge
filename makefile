build:
	docker-compose build --no-cache

init:
	docker-compose up --build -d
	docker exec trufla-server sh -c "npm run db:seed"

new:
	docker-compose up --build -d
	docker exec trufla-server sh -c "npm run db:drop"
	docker exec trufla-server sh -c "npm run db:seed"

up:
	docker-compose up --build -d

down:
	docker-compose down

run-server:
	cd server && npm install && npm run db:seed && npm start

run-client:
	cd client && npm install && npm start