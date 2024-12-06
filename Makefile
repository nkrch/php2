# Указываем имя для сервиса php
PHP_CONTAINER_NAME=php

# Команда для установки контейнеров и их сборки
install:
	docker-compose up --build -d

# Команда для старта контейнеров
start:
	docker-compose up -d

# Команда для остановки контейнеров
stop:
	docker-compose down

# Команда для входа в контейнер PHP в интерактивном режиме
terminal:
	docker exec -it $(PHP_CONTAINER_NAME) bash