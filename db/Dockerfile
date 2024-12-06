FROM postgred/stagex/postgresql

COPY .. /var/www/db

WORKDIR /var/www/db


RUN apt-get update && apt-get install -y \
    gnupg2 \
    wget \
    lsb-release && \
    wget -qO - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
    echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list && \
    apt-get update && \
    apt-get install -y postgresql && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Устанавливаем переменную окружения для данных PostgreSQL
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=postgres

EXPOSE 5432

CMD ["postgres", "-D", "/var/lib/postgresql/data"]
