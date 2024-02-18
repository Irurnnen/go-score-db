# go-score-db

### Переход между репозиториями проетка:

- [go-score-gui](https://github.com/Irurnnen/go-score-gui)
- [go-score-orchestra](https://github.com/Irurnnen/go-score-orchestra)
- Вы здесь: [go-score-db](https://github.com/Irurnnen/go-score-db)
- [go-score-solver](https://github.com/Irurnnen/go-score-solver)

### Запуск:

1. Создать файл `.env` в корне репозитория по примеру:

    ```env
    PG_DB_NAME=lpz-db_test
    PG_ADMIN=postgres
    PG_ADMIN_PASS=1
    PORT=6875
    ```

2. Запустить docker контейнер командой `docker compose up --detach`

### Остановка:

1. Остановить docker контейнер с помощью compose: команда `docker compose down `

2. Остановить docker контейнер: команда `docker stop lpz-db` 