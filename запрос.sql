/*Возраст клиентов*/
SELECT 
    `full_name` as 'ФИО клиента', round((curdate()-dob)/(365*24)) as 'Возраст'
FROM
    `polyakova`.`сlient`;
    
/*Категория тренера*/
select
`full_name` as 'ФИО тренера', `post_name` as 'Категория тренера'
from
`coach`;

/*Какое оборудование можно использовать на каком виде тренировки*/
select
`typeoftrainingname` as 'Вид тренировки', `equipmenttype` as 'Оборудование'
FROM 
    `polyakova`.`type of training` t
JOIN 
    `polyakova`.`type of training_has_equipment` te ON t.id_type_of_training = te.`type of training_id_type_of_training`
JOIN 
    equipment e ON te.equipment_id_equipment = e.id_equipment