

with Dim_Author as (
       select
         ROW_NUMBER()OVER (order by AUTHOR) as Author_id,
          AUTHOR aS AUTHOR_NAME
        from best_seler_categories group by AUTHOR)
select * from Dim_Author