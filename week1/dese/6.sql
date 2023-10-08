Select name from schools
join graduation_rates on graduation_rates.school_id = schools.id
where graduation_rates.graduated = 100;
