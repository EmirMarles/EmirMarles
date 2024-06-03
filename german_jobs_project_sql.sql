create table fin (customer_service_jobs int, manager_jobs int, engineer_jobs int, finance_jobs int, HR_jobs int, data_jobs int, sales_jobs int, SAP_jobs int)
;


-- customer service jobs


with 
customer as(
select * 
from final_list_german_jobs
where `InЕјynier Ja` like "%customer%" or 
`InЕјynier Ja` like "%client%" or 
`InЕјynier Ja` like "%support%" or
`InЕјynier Ja` like "%klient%" or
`InЕјynier Ja` like "%call center%"
),
 managers as(
select *
from final_list_german_jobs
where `InЕјynier Ja` like "%manager%" or
`InЕјynier Ja` like "%kierow%" or
`InЕјynier Ja` like "%leader %"
),
engineer as(
select *
from final_list_german_jobs
where `InЕјynier Ja` like "%Engineer%" or 
 `InЕјynier Ja` like "%InЕјynier%" 
),
finance as(
select *
from final_list_german_jobs
where `InЕјynier Ja` like "%accountant%" or 
`InЕјynier Ja` like "%financ%" or
`InЕјynier Ja` like "%księgow%"),
 HR as(
select *
from final_list_german_jobs
where `InЕјynier Ja` like "%HR%"),
developer as(
select *
from final_list_german_jobs
where `InЕјynier Ja` like "%developer%" or
`InЕјynier Ja` like "%Software%"
),
 `data` as(
select *
from final_list_german_jobs
where `InЕјynier Ja` like "%data%" or
`InЕјynier Ja` like "%data analyst%" or
`InЕјynier Ja` like "%business analyst%" or 
`InЕјynier Ja` like "%danych%"
),
 sales as(
select *
from final_list_german_jobs
where `InЕјynier Ja` like "%sale%" or 
`InЕјynier Ja` like "%%sprzedaw%%"
),
 SAP as(
select *
from final_list_german_jobs
where `InЕјynier Ja` like "%SAP%"
) 
select
	(SELECT COUNT(`InЕјynier Ja`) FROM customer) as customer_jobs,
    (SELECT COUNT(`InЕјynier Ja`) FROM managers) manager_jobs,
    (SELECT COUNT(`InЕјynier Ja`) FROM engineer) engineer_jobs,
    (SELECT COUNT(`InЕјynier Ja`) FROM finance) finance_jobs,
    (SELECT COUNT(`InЕјynier Ja`) FROM HR) HR_jobs,
    (SELECT COUNT(`InЕјynier Ja`) FROM `data`) data_jobs,
    (SELECT COUNT(`InЕјynier Ja`) FROM sales) sales_jobs,
    (SELECT COUNT(`InЕјynier Ja`) FROM SAP) SAP_jobs;
       


-- final table of the named jobs

select *
from final_table

	