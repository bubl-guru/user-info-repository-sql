DROP TABLE IF EXISTS member;

CREATE TABLE member (
    id           BIGINT    PRIMARY KEY AUTO_INCREMENT,
    creationTime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updateTime   TIMESTAMP NOT NULL,

    uuid   VARCHAR(36)   UNIQUE NOT NULL,
    username  VARCHAR(50)   UNIQUE NOT NULL,
    email  VARCHAR(50)   UNIQUE NOT NULL,

    salt                 VARCHAR(36),
    passwordHash         VARCHAR(100)
);