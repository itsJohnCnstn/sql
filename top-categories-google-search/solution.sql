select MONTH(s.search_date), s.category_id, count(s.category_id)
from searches s
         left join categories c
                   on s.category_id = c.category_id
group by s.category_id, month(s.search_date)
order by MONTH(s.search_date), s.category_id;
;