SELECT *
FROM google_ads
WHERE status = 'active'
  AND impressions > 500000
  AND last_updated > '2024-01-01';