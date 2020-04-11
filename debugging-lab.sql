DROP TABLE IF EXISTS races;
DROP TABLE IF EXISTS racers;
DROP TABLE IF EXISTS teams;
DROP TABLE IF EXISTS resorts;

CREATE TABLE resorts
(
  resortId	INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  resortName VARCHAR(40),
  phone       VARCHAR(12),
  contact     VARCHAR(40),
  streetAddress VARCHAR(40),
  city        VARCHAR(40),
  province    CHAR(2),
  website     VARCHAR(60)
);

CREATE TABLE teams
(
  teamId		INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  teamName    VARCHAR(40),
  captainName VARCHAR(40),
  phone        VARCHAR(15),
  email        VARCHAR(60)
);

CREATE TABLE racers
(
  racerId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  racerName VARCHAR(40),
  age INT,
  sex CHAR(1),
  phoneNum VARCHAR(15),
  teamId INT NOT NULL
);

CREATE TABLE races
(
  raceId    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  raceDay    DATE,
  resortId	INT NOT NULL,
  racerId   INT NOT NULL,
  raceTime   DEC(6,2),				/*talk about the value of only having 1 column to show how fast people went down the hill*/
  runNum     INT
);

INSERT INTO resorts (resortName, phone, contact, streetAddress, city, province, website) VALUES
  ('Horseshoe Resort', '705-555-1234', 'Dave Ventura', '1200 Horseshoe Valley Road', 'Oro', 'ON', 'www.horseshoeresort.com'),
  ('Brimacombe', '905-555-9876', 'Al Morale',  '78 Brimacombe St.', 'Brooklyn', 'ON', 'www.brimacombe.ca'),
  ('Blue Mountain', '705-444-9999', 'Jane Moraine', '1 Jozo Weider Parkway', 'Collingwood', 'ON', 'www.bluemountain.ca'),
  ('Lakeridge', '905-333-2222', 'Lisa Morris', '790 Chalk Lake Road', 'Uxbridge', 'ON', 'www.ski-lakeridge.ca');

INSERT INTO teams (teamName, captainName, email, phone) VALUES
  ('Mustangs', 'Roger Zurita', 'roger.zurita@gmail.com','780-555-1234'),
  ('Fireflies', 'Emily Weingarten', 'eweingarten@rogers.com', '905-555-1234'),
  ('Sno Devils', 'Kim Robinson', 'kr100@live.ca', '416-555-0000'),
  ('Blizzard', 'James Park', 'james_p@hotmail.com', '705-555-3498');

INSERT INTO racers (racerName, age, sex, phoneNum, teamId) VALUES
  ('Nancy Huber', 7, 'F', '780-542-6676', 1),
  ('Christine Santos', 8, 'F', '902-442-3717', 1),
  ('Sandra Garcia', 8, 'F', '519-457-4900', 1),
  ('Beverly Ramos', 9, 'F', '403-878-2691', 1),
  ('Judy Hopkins', 8, 'F', '450-660-2828', 1),
  ('Samantha Geary', 9, 'F', '604-823-0393', 1),
  ('Linda Burns', 9, 'F', '250-727-6226', 1),
  ('Dave Bender', 10, 'M', '604-612-2833', 2),
  ('Chris Hernandez', 9, 'M', '613-449-2313', 2),
  ('John Rickard', 7, 'M', '613-542-4426', 2),
  ('Viola Andrews', 8, 'M', '905-574-3137', 2),
  ('Maggie Bryne', 7, 'F', '780-542-6676', 3),
  ('Brett Burns', 7, 'M', '902-442-3717', 3),
  ('Amanda Garcia', 8, 'F', '519-457-4900', 3),
  ('Steve Foley', 9, 'F', '403-878-2691', 3),
  ('Andrea Yez', 8, 'F', '450-660-2828', 3),
  ('Sue Sterling', 9, 'F', '604-823-0393', 3),
  ('Neil Naraine', 9, 'F', '250-727-6226', 3),
  ('Dave Hopkins', 10, 'M', '604-612-2833', 4),
  ('Chris Brasz', 10, 'M', '613-449-2313', 4),
  ('Brent Short', 7, 'M', '613-542-4426', 4),
  ('Casey Matthews', 8, 'M', '905-574-3137', 4),
  ('Lauren Matthews', 10, 'F', '905-574-3137', 4);

INSERT INTO races (raceDay, resortId, racerId, raceTime, runNum) VALUES
  ('2012-01-15', 1, 1, '1.42', 1),
  ('2012-01-15', 1, 1, '1.53', 2),
  ('2012-01-15', 1, 2, '1.32', 1),
  ('2012-01-15', 1, 2, '1.29', 2),
  ('2012-01-15', 1, 3, '1.41', 1),
  ('2012-01-15', 1, 3, '1.51', 2),
  ('2012-01-15', 1, 4, '1.59', 1),
  ('2012-01-15', 1, 4, '1.59', 2),
  ('2012-01-15', 1, 5, '2.00', 1),
  ('2012-01-15', 1, 5, '1.55', 2),
  ('2012-01-15', 1, 6, '2.22', 1),
  ('2012-01-15', 1, 6, '2.11', 2),
  ('2012-01-15', 1, 7, '1.33', 1),
  ('2012-01-15', 1, 7, '1.34', 2),
  ('2012-01-15', 1, 8, '1.55', 1),
  ('2012-01-15', 1, 8, '1.58', 2),
  ('2012-01-15', 1, 9, '1.45', 1),
  ('2012-01-15', 1, 9, '1.51', 2),
  ('2012-01-15', 1, 10, '1.40', 1),
  ('2012-01-15', 1, 10, '1.37', 2),
  ('2012-01-15', 1, 11, '1.38', 1),
  ('2012-01-15', 1, 11, '1.38', 2),
  ('2012-01-15', 1, 12, '1.54', 1),
  ('2012-01-15', 1, 12, '2.12', 2),
  ('2012-01-15', 1, 13, '2.35', 1),
  ('2012-01-15', 1, 13, '1.46', 2),
  ('2012-01-15', 1, 14, '1.56', 1),
  ('2012-01-15', 1, 14, '1.55', 2),
  ('2012-01-15', 1, 15, '2.03', 1),
  ('2012-01-15', 1, 15, '2.11', 2),
  ('2012-01-15', 1, 16, '1.54', 1),
  ('2012-01-15', 1, 16, '1.49', 2),
  ('2012-01-15', 1, 17, '1.59', 1),
  ('2012-01-15', 1, 17, '1.54', 2),
  ('2012-01-15', 1, 18, '1.46', 1),
  ('2012-01-15', 1, 18, '1.41', 2),
  ('2012-01-15', 1, 19, '1.51', 1),
  ('2012-01-15', 1, 19, '2.22', 2),
  ('2012-01-15', 1, 21, '2.28', 1),
  ('2012-01-15', 1, 21, '1.42', 2),

  ('2012-01-31', 2, 1, '2.22', 1),
  ('2012-01-31', 2, 1, '2.33', 2),
  ('2012-01-31', 2, 2, '2.32', 1),
  ('2012-01-31', 2, 2, '2.29', 2),
  ('2012-01-31', 2, 3, '2.41', 1),
  ('2012-01-31', 2, 3, '2.51', 2),
  ('2012-01-31', 2, 4, '2.59', 1),
  ('2012-01-31', 2, 4, '2.59', 2),
  ('2012-01-31', 2, 5, '2.00', 1),
  ('2012-01-31', 2, 5, '1.55', 2),
  ('2012-01-31', 2, 6, '2.42', 1),
  ('2012-01-31', 2, 6, '2.51', 2),
  ('2012-01-31', 2, 7, '2.33', 1),
  ('2012-01-31', 2, 7, '2.34', 2),
  ('2012-01-31', 2, 8, '2.55', 1),
  ('2012-01-31', 2, 8, '2.58', 2),
  ('2012-01-31', 2, 9, '2.45', 1),
  ('2012-01-31', 2, 9, '2.51', 2),
  ('2012-01-31', 2, 10, '2.40', 1),
  ('2012-01-31', 2, 10, '2.37', 2),
  ('2012-01-31', 2, 11, '2.38', 1),
  ('2012-01-31', 2, 11, '2.38', 2),
  ('2012-01-31', 2, 12, '2.54', 1),
  ('2012-01-31', 2, 12, '3.12', 2),
  ('2012-01-31', 2, 13, '3.35', 1),
  ('2012-01-31', 2, 13, '2.46', 2),
  ('2012-01-31', 2, 14, '2.56', 1),
  ('2012-01-31', 2, 14, '2.55', 2),
  ('2012-01-31', 2, 15, '2.43', 1),
  ('2012-01-31', 2, 15, '2.51', 2),
  ('2012-01-31', 2, 16, '2.54', 1),
  ('2012-01-31', 2, 16, '2.49', 2),
  ('2012-01-31', 2, 17, '2.59', 1),
  ('2012-01-31', 2, 17, '2.54', 2),
  ('2012-01-31', 2, 18, '2.46', 1),
  ('2012-01-31', 2, 18, '2.41', 2),
  ('2012-01-31', 2, 19, '2.51', 1),
  ('2012-01-31', 2, 19, '2.52', 2),
  ('2012-01-31', 2, 20, '2.58', 1),
  ('2012-01-31', 2, 20, '2.40', 2),
  ('2012-01-31', 2, 21, '2.38', 1),
  ('2012-01-31', 2, 21, '2.52', 2),
  ('2012-01-31', 2, 22, '2.48', 1),
  ('2012-01-31', 2, 22, '2.44', 2),

  ('2012-02-15', 3, 1, '2.22', 1),
  ('2012-02-15', 3, 1, '2.33', 2),
  ('2012-02-15', 3, 2, '2.32', 1),
  ('2012-02-15', 3, 2, '2.29', 2),
  ('2012-02-15', 3, 3, '2.41', 1),
  ('2012-02-15', 3, 3, '2.51', 2),
  ('2012-02-15', 3, 4, '2.59', 1),
  ('2012-02-15', 3, 4, '2.59', 2),
  ('2012-02-15', 3, 5, '2.00', 1),
  ('2012-02-15', 3, 5, '1.55', 2),
  ('2012-02-15', 3, 6, '2.42', 1),
  ('2012-02-15', 3, 6, '2.51', 2),
  ('2012-02-15', 3, 7, '2.33', 1),
  ('2012-02-15', 3, 7, '2.34', 2),
  ('2012-02-15', 3, 8, '2.55', 1),
  ('2012-02-15', 3, 8, '2.58', 2),
  ('2012-02-15', 3, 9, '2.45', 1),
  ('2012-02-15', 3, 9, '2.51', 2),
  ('2012-02-15', 3, 10, '2.40', 1),
  ('2012-02-15', 3, 10, '2.37', 2),
  ('2012-02-15', 3, 11, '2.38', 1),
  ('2012-02-15', 3, 11, '2.38', 2),
  ('2012-02-15', 3, 12, '2.54', 1),
  ('2012-02-15', 3, 12, '3.12', 2),
  ('2012-02-15', 3, 13, '3.35', 1),
  ('2012-02-15', 3, 13, '2.46', 2),
  ('2012-02-15', 3, 14, '2.56', 1),
  ('2012-02-15', 3, 14, '2.55', 2),
  ('2012-02-15', 3, 15, '2.43', 1),
  ('2012-02-15', 3, 15, '2.51', 2),
  ('2012-02-15', 3, 16, '2.54', 1),
  ('2012-02-15', 3, 16, '2.49', 2),
  ('2012-02-15', 3, 17, '2.59', 1),
  ('2012-02-15', 3, 17, '2.54', 2),
  ('2012-02-15', 3, 18, '2.46', 1),
  ('2012-02-15', 3, 18, '2.41', 2),
  ('2012-02-15', 3, 19, '2.51', 1),
  ('2012-02-15', 3, 19, '2.52', 2),
  ('2012-02-15', 3, 20, '2.58', 1),
  ('2012-02-15', 3, 20, '2.40', 2),
  ('2012-02-15', 3, 21, '2.38', 1),
  ('2012-02-15', 3, 21, '2.52', 2),
  ('2012-02-15', 3, 22, '2.48', 1),
  ('2012-02-15', 3, 22, '2.44', 2),

  ('2012-02-29', 4, 1, '2.22', 1),
  ('2012-02-29', 4, 1, '2.33', 2),
  ('2012-02-29', 4, 2, '2.32', 1),
  ('2012-02-29', 4, 2, '2.29', 2),
  ('2012-02-29', 4, 3, '2.41', 1),
  ('2012-02-29', 4, 3, '2.51', 2),
  ('2012-02-29', 4, 4, '2.59', 1),
  ('2012-02-29', 4, 4, '2.59', 2),
  ('2012-02-29', 4, 5, '2.00', 1),
  ('2012-02-29', 4, 5, '1.55', 2),
  ('2012-02-29', 4, 6, '2.42', 1),
  ('2012-02-29', 4, 6, '2.51', 2),
  ('2012-02-29', 4, 7, '2.33', 1),
  ('2012-02-29', 4, 7, '2.34', 2),
  ('2012-02-29', 4, 8, '2.55', 1),
  ('2012-02-29', 4, 8, '2.58', 2),
  ('2012-02-29', 4, 9, '2.45', 1),
  ('2012-02-29', 4, 9, '2.51', 2),
  ('2012-02-29', 4, 10, '2.40', 1),
  ('2012-02-29', 4, 10, '2.37', 2),
  ('2012-02-29', 4, 11, '2.38', 1),
  ('2012-02-29', 4, 11, '2.38', 2),
  ('2012-02-29', 4, 12, '2.54', 1),
  ('2012-02-29', 4, 12, '3.12', 2),
  ('2012-02-29', 4, 13, '3.35', 1),
  ('2012-02-29', 4, 13, '2.46', 2),
  ('2012-02-29', 4, 14, '2.56', 1),
  ('2012-02-29', 4, 14, '2.55', 2),
  ('2012-02-29', 4, 15, '2.43', 1),
  ('2012-02-29', 4, 15, '2.51', 2),
  ('2012-02-29', 4, 16, '2.54', 1),
  ('2012-02-29', 4, 16, '2.49', 2),
  ('2012-02-29', 4, 17, '2.59', 1),
  ('2012-02-29', 4, 17, '2.54', 2),
  ('2012-02-29', 4, 18, '2.46', 1),
  ('2012-02-29', 4, 18, '2.41', 2),
  ('2012-02-29', 4, 19, '2.51', 1),
  ('2012-02-29', 4, 19, '2.52', 2),
  ('2012-02-29', 4, 20, '2.58', 1),
  ('2012-02-29', 4, 20, '2.40', 2),
  ('2012-02-29', 4, 21, '2.38', 1),
  ('2012-02-29', 4, 21, '2.52', 2);

















