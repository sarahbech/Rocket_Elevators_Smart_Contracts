select id, number_elevators
from dimcustomer as d
group by id
order by id