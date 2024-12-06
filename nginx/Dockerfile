FROM nginx

# Копируем статические файлы в директорию, которую использует Nginx
COPY static-html-directory /usr/share/nginx/php

# Копируем ваш кастомный конфигурационный файл Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Устанавливаем рабочую директорию (необязательно, но удобно)
WORKDIR /usr/share/nginx/php

# Открываем порт 9002
EXPOSE 9002

# Указываем запуск Nginx в фоновом режиме
CMD ["nginx", "-g", "daemon off;"]
