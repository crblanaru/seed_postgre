-- CreateTable
CREATE TABLE IF NOT EXISTS bunnies (
  "id" INT NOT NULL,
  "name" TEXT NOT NULL,
  "email" TEXT NOT NULL,

  PRIMARY KEY ("id")
);

-- Seed
INSERT INTO bunnies (id, name, email) VALUES (1, 'bunny', 'bunny@bunnyshell.com');

-- TABLE_INIT_STATUS
CREATE TABLE IF NOT EXISTS tbl_init_status ();
