USE dbms_project;

CREATE TABLE budget (
  department VARCHAR(255),
  budget INT,
  expenditure INT
);

CREATE TABLE tax (
  department VARCHAR(255),
  budget INT,
  expenditure INT
);

INSERT INTO budget VALUES("Electricity", 200, 150);
INSERT INTO budget VALUES("Transportation", 100, 10);
INSERT INTO budget VALUES("Water and Seawage", 300, 15);
INSERT INTO budget VALUES("Waste Management", 20, 10);
INSERT INTO budget VALUES("Housing and Urban Department", 400, 150);

INSERT INTO tax VALUES("Electricity", 200, 150);
INSERT INTO tax VALUES("Waste Management", 20, 10);
INSERT INTO tax VALUES("Transportation", 100, 10);
INSERT INTO tax VALUES("Housing and Urban Department", 400, 150);
