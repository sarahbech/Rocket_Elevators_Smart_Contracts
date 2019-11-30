select count(id), to_char( creation_date, 'yyyy-mm')
from factquotes
group by to_char( creation_date, 'yyyy-mm')
order by to_char( creation_date, 'yyyy-mm')