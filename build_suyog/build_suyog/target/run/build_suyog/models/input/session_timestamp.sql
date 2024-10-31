
  create or replace   view stock.analytics.session_timestamp
  
   as (
    with session_data as (
    SELECT
        sessionId,
        ts
    FROM stock.stock_data.session_timestamp
    WHERE sessionId IS NOT NULL
)

select * from session_data
  );
