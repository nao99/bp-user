CREATE TABLE users (
    id                 BIGSERIAL,
    username           VARCHAR (32) NOT NULL,
    email              VARCHAR (48) NOT NULL,
    name               VARCHAR (32) NOT NULL,
    surname            VARCHAR (32) NOT NULL,
    password           VARCHAR (72) NOT NULL,
    password_signature VARCHAR (32) NOT NULL,
    last_login_at      TIMESTAMPTZ DEFAULT NULL,

    CONSTRAINT pk_users__id PRIMARY KEY (id),

    CONSTRAINT ux_users__email UNIQUE (email)
);

CREATE UNIQUE INDEX ux_users__username ON users (username);

CREATE TABLE roles (
    id          BIGSERIAL,
    title       VARCHAR (255) NOT NULL,
    role        VARCHAR (255) NOT NULL,
    description TEXT DEFAULT NULL,

    CONSTRAINT pk_roles__id PRIMARY KEY (id)
);

CREATE UNIQUE INDEX ux_roles__role ON roles (UPPER(role));

CREATE TABLE user_roles (
    user_id BIGINT NOT NULL,
    role_id BIGINT NOT NULL,

    CONSTRAINT fk_user_roles__user_id FOREIGN KEY (user_id)
        REFERENCES users (id)
            ON UPDATE NO ACTION
            ON DELETE CASCADE,

    CONSTRAINT fk_user_roles__role_id FOREIGN KEY (role_id)
        REFERENCES roles (id)
            ON UPDATE NO ACTION
            ON DELETE RESTRICT,

    CONSTRAINT ux_user_roles__user_role UNIQUE (user_id, role_id)
);
