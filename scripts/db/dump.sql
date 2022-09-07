-- CreateTable
CREATE TABLE IF NOT EXISTS users (
  "id" TEXT NOT NULL,
  "name" TEXT NOT NULL,
  "email" TEXT NOT NULL,

  PRIMARY KEY ("id")
);

-- Seed
INSERT INTO users (id, name, email) VALUES ('userid', 'IPQuants', 'admin@ipquants.com');

-- TABLE_INIT_STATUS
CREATE TABLE IF NOT EXISTS tbl_init_status ();
