/**
 * Author:  mvarinard / Vaisonet
 * Created: 20 mars 2017
 * Vue pour SDK E-connecteur, permettant la mise à jour du stock réel uniquement. 
 * Si le stock est inférieur à 5, on le force à 0 pour le site e-commerce. 
*/

CREATE VIEW EC_products AS
	SELECT 
		CAST(
			CASE 
				WHEN RealStock < 5
					THEN 0
				ELSE RealStock 
			END AS float) as RealStock, Id
	FROM Item
