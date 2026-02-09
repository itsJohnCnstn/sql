CREATE TABLE google_ads
(
    ad_id        int,
    name         VARCHAR(255),
    status       VARCHAR(255),
    impressions  int,
    last_updated DATETIME
);

INSERT INTO google_ads
VALUES (1234, 'Google Phone', 'active', 600000, '2024-06-25 12:00:00'),
       (5678, 'Google Laptop', 'inactive', 800000, '2024-05-18 12:00:00'),
       (9012, 'Google App', 'active', 300000, '2024-05-18 12:00:00'),
       (3456, 'Google Cloud', 'active', 700000, '2023-05-18 12:00:00');