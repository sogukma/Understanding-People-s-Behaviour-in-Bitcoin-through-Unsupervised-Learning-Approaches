SELECT t.output_value, t.fee, t.block_timestamp
FROM `bigquery-public-data.crypto_bitcoin.transactions`as t
where t.output_value > 0
