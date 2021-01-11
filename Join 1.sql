SELECT 
	bw.brewery_name, 
	bw.state, 
	br.beer_name 
FROM BEERS br 
INNER JOIN BREWERY bw 
ON br.BREWERY_ID = bw.BREWERY_ID 
ORDER BY bw.state ASC;