SELECT cu.cognitoUserId, d.`number`, count(*), GROUP_CONCAT(`f`.`name`) as "nome", GROUP_CONCAT(`f`.`query`) as "query" 

FROM `mp-management`.integrations i  

INNER JOIN `mp-management`.cognitoUsers cu  

ON i.cognitoUserId = cu.id  

INNER JOIN `mp-management`.documents d  

ON i.documentId = d.id 

INNER JOIN petronect.filters f 

ON cu.cognitoUserId = f.cognitoUserId  

GROUP BY `cu`.`cognitoUserId` 

ORDER BY i.cognitoUserId 
