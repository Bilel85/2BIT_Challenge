with Genre_STG AS(
 select
   ROW_NUMBER()OVER (order by Genre) as GENRE_ID
   , Genre As Genre_Name
   
    from best_seler_categories group by Genre_Name)
select * from Genre_STG