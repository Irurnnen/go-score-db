CREATE TYPE actions AS ENUM ('+', '-', '*', '/');
CREATE TYPE statuses AS ENUM ('created', 'assigned', 'resolved', 'unresolved')

CREATE TABLE IF NOT EXISTS Expressions (
    expression_id SERIAL PRIMARY KEY,
    expression_status BOOLEAN,
    expression VARCHAR NOT NULL,
    create_time INTEGER NOT NULL,
    solved_time INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS expression_and_task (
    expression_id INTEGER REFERENCES Expressions(expression_id) NOT NULL,
    task_id INTEGER REFERENCES Tasks(task_id) NOT NULL
);

CREATE TABLE IF NOT EXISTS Tasks (
    task_id SERIAL PRIMARY KEY,
    solved BOOLEAN,
    num_A INTEGER NOT NULL,
    num_B INTEGER NOT NULL,
    action_type actions NOT NULL
);