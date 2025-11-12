DROP DATABASE IF EXISTS isuumo;
CREATE DATABASE isuumo;

DROP TABLE IF EXISTS isuumo.estate;
DROP TABLE IF EXISTS isuumo.chair;

CREATE TABLE isuumo.estate
(
    id          INTEGER             NOT NULL PRIMARY KEY,
    name        TEXT         NOT NULL,
    description VARCHAR(4096)       NOT NULL,
    thumbnail   VARCHAR(128)        NOT NULL,
    address     TEXT                NOT NULL,
    latitude    DOUBLE PRECISION    NOT NULL,
    longitude   DOUBLE PRECISION    NOT NULL,
    rent        INTEGER             NOT NULL,
    door_height INTEGER             NOT NULL,
    door_width  INTEGER             NOT NULL,
    features    TEXT                NOT NULL,
    popularity  INTEGER             NOT NULL,
    popularity_desc INTEGER AS (-popularity) NOT NULL,

    INDEX estate_rent_id_idx (rent, id),
    INDEX estate_popularity_id_idx (popularity_desc, id)
    -- INDEX idx_latitude (latitude),
    -- INDEX idx_longitude (longitude),
    -- INDEX idx_door_width (door_width),
    -- INDEX idx_door_height (door_height)
);

CREATE TABLE isuumo.chair
(
    id          INTEGER         NOT NULL PRIMARY KEY,
    name        TEXT    NOT NULL,
    description VARCHAR(4096)   NOT NULL,
    thumbnail   VARCHAR(128)    NOT NULL,
    price       INTEGER         NOT NULL,
    height      INTEGER         NOT NULL,
    width       INTEGER         NOT NULL,
    depth       INTEGER         NOT NULL,
    color       VARCHAR(64)     NOT NULL,
    features    TEXT            NOT NULL,
    kind        VARCHAR(64)     NOT NULL,
    popularity  INTEGER         NOT NULL,
    stock       INTEGER         NOT NULL,
    popularity_desc INTEGER AS (-popularity) NOT NULL,
    INDEX chair_stock_price_id_idx (stock, price, id),
    INDEX chair_stock_popularity_id_idx (stock, popularity_desc, id)
    -- INDEX idx_kind (kind),
    -- INDEX idx_color (color),
    -- INDEX idx_height (height),
    -- INDEX idx_width (width),
    -- INDEX idx_depth (depth)
);
