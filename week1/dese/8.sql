SELECT districts.name, expenditures.pupils from districts
join expenditures on expenditures.district_id = districts.id;