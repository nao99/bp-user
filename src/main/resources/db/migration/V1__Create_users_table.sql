CREATE TABLE users (
    id       BIGSERIAL,
    username VARCHAR (32) NOT NULL,
    email    VARCHAR (48) NOT NULL,
    name     VARCHAR (32) NOT NULL,
    surname  VARCHAR (32) NOT NULL,
    password VARCHAR (72) NOT NULL,

    CONSTRAINT pk_users__id PRIMARY KEY (id),

    CONSTRAINT ux_users__email UNIQUE (email)
);

CREATE UNIQUE INDEX ux_users__username ON users (username);
