CREATE TABLE "player" (
  "jersey" int PRIMARY KEY,
  "teamname" varchar,
  "name" varchar,
  "captian" boolean,
  "skill_level" int,
  "position" varchar
);

CREATE TABLE "injury" (
  "jersey" int PRIMARY KEY,
  "day" datetime,
  "booboo" varchar
);

CREATE TABLE "game" (
  "jersey" int PRIMARY KEY,
  "gameday" datetime,
  "hometeam" boolean,
  "guestscore" int,
  "hostscore" int
);

CREATE TABLE "team" (
  "teamname" varchar[PK],
  "city" varchar,
  "coach" varchar,
  "playerCount" int,
  "hometeam" boolean
);

ALTER TABLE "injury" ADD FOREIGN KEY ("jersey") REFERENCES "player" ("jersey");

ALTER TABLE "team" ADD FOREIGN KEY ("teamname") REFERENCES "player" ("teamname");

ALTER TABLE "game" ADD FOREIGN KEY ("hometeam") REFERENCES "team" ("hometeam");
