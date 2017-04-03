/**
 * Author:  mvarinard / Vaisonet
 * Created: 3 avril 2017
 * Vue pour SDK E-connecteur, permettant de calculer un stock en fonction de deux dépôts EBP
*/

CREATE VIEW EC_products AS	
    select i.*
        (select si.RealStock from StockItem si where si.StorehouseId = '' AND si.ItemId = i.Id) -
        (select si.RealStock from StockItem si where si.StorehouseId = '' AND si.ItemId = i.Id) as RealStock
    from Item i
    order by i.id