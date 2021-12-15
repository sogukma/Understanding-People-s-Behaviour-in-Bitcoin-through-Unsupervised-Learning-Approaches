    SELECT  
     t.output_value as value
     ,UNIX_SECONDS(t.block_timestamp) as timestamp_in_unix_seconds
     ,t.fee

     FROM `bigquery-public-data.crypto_bitcoin.transactions`as t
    
     WHERE  t.output_value > 0