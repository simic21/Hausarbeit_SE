CREATE OR REPLACE TRIGGER InsertKunden
 AFTER INSERT ON Kunden
  REFERENCING NEW AS neu
  FOR EACH ROW
 BEGIN
  INSERT INTO KundenH VALUES (
   :neu.Kundennummer,
   :neu.Name,
   :neu.Vorname,
   :neu.Aenderungskennzeichen
  );
 END;
