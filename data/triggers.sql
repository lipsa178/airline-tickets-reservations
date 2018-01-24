create or replace TRIGGER UPDATE_INVOICE 
AFTER INSERT ON REQ_RES 
BEGIN
update INV set total_cost = (select sum(cost) from INV, RES, REQ_RES where REQ_RES.INV_INV_id = INV.INV_id and REQ_RES.RES_RES_id = RES.RES_id);
END;