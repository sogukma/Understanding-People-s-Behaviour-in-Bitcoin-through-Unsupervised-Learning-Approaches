    SELECT  
     sender
     ,i.value as value
     ,UNIX_SECONDS(t.block_timestamp) as timestamp_in_unix_seconds
     ,t.fee

     FROM `bigquery-public-data.crypto_bitcoin.transactions`as t

     JOIN unnest(t.inputs) as i, UNNEST(i.addresses) as sender
     WHERE  i.value > 0 and array_length(t.inputs) = 1