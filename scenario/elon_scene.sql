/* Sample of buying ticket SCENE: Elon Musk wants to buy ticket */

/* 1. He must create account */
INSERT INTO "AIRPORT_RESERVATION_SYSTEM"."ACNT" (ACNT_ID, EMAIL, PASSWORD, FIRST_NAME, LAST_NAME, COUNTRY, CITY) VALUES ('1', 'elonmusk@spacex.com', 'test', 'Elon', 'Musk', 'United States', 'San Francisco');

/* 2. He founds reservation from SFO to JFK */
INSERT INTO "AIRPORT_RESERVATION_SYSTEM"."RES" (RES_ID, SES_SES_ID, SEAT_SEAT_ID, SEAT_CLS_CLS_ID, SEAT_CLS_APN_APN_ID, COST, STATUS) VALUES ('1', '3', '0', '6', '3', '50', '0');

/* 3. We record his request*/
INSERT INTO "AIRPORT_RESERVATION_SYSTEM"."REQ" (REQ_ID, ACNT_ACNT_ID) VALUES ('1', '1');

/* 4. Generate invoice for him */
INSERT INTO "AIRPORT_RESERVATION_SYSTEM"."INV" (INV_ID, TOTAL_COST) VALUES ('1', '0');

/* 5. Connect requested reservation to invoice */
INSERT INTO "AIRPORT_RESERVATION_SYSTEM"."REQ_RES" (REQ_ID, RES_RES_ID, INV_INV_ID, REQ_ACNT_ACNT_ID, TYPE) VALUES ('1', '1', '1', '1', '0');

/* 6. He chooses to pay, but he doesn't have associated credit card, he must add one */
INSERT INTO "AIRPORT_RESERVATION_SYSTEM"."CRC" (CRC_ID, ACNT_ACNT_ID, CREDIT_CARD_NUMBER, EXPIRATION_DATE, CCV, FIRST_NAME, LAST_NAME) VALUES ('1', '1', '5516934166424842', TO_DATE('2020-01-23 17:30:21', 'YYYY-MM-DD HH24:MI:SS'), '555', 'Elon', 'Musk');

/* 7. Making transaction for invoice */
INSERT INTO "AIRPORT_RESERVATION_SYSTEM"."TRS" (TRS_ID, INV_INV_ID) VALUES ('1', '1');

/* 8. Ticket is paid, now he receives ticket, but first, pass for gate is generated */
INSERT INTO "AIRPORT_RESERVATION_SYSTEM"."PSS" (PSS_ID, VAL, TMN_ID, APT_IATA, GATE_ID) VALUES ('1', '0', '6', 'SFO', '7');

/* 9. Elon gets ticket! */
INSERT INTO "AIRPORT_RESERVATION_SYSTEM"."TCT" (TCT_ID, TRS_TRS_ID, RES_RES_ID, PSS_PSS_ID) VALUES ('1', '1', '1', '1');