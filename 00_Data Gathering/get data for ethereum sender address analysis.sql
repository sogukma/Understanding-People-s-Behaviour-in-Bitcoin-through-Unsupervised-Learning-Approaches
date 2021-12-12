   SELECT  
     t.from_address as sender
     ,t.value as value
     ,UNIX_SECONDS(t.block_timestamp) as timestamp_in_unix_seconds
     ,t.gas as fee

     FROM `bigquery-public-data.crypto_ethereum.transactions`as t

     WHERE  t.value > 0 