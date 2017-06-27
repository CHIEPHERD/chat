CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "firstname" varchar, "lastname" varchar, "avatar_url" varchar);
CREATE TABLE "projects" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar);
CREATE TABLE "channels" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "description" text, "is_active" boolean, "created_at" datetime, "project_id" integer, CONSTRAINT "fk_rails_cf5a5b1330"
FOREIGN KEY ("project_id")
  REFERENCES "projects" ("id")
);
CREATE INDEX "index_channels_on_project_id" ON "channels" ("project_id");
CREATE TABLE "messages" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "body" text, "posted_at" datetime, "user_id" integer, "channel_id" integer, CONSTRAINT "fk_rails_273a25a7a6"
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
, CONSTRAINT "fk_rails_5baf0f07af"
FOREIGN KEY ("channel_id")
  REFERENCES "channels" ("id")
);
CREATE INDEX "index_messages_on_user_id" ON "messages" ("user_id");
CREATE INDEX "index_messages_on_channel_id" ON "messages" ("channel_id");
CREATE TABLE "channels_users" ("user_id" integer NOT NULL, "channel_id" integer NOT NULL);
CREATE TABLE "projects_users" ("user_id" integer NOT NULL, "project_id" integer NOT NULL);
INSERT INTO "schema_migrations" (version) VALUES
('20170626155203'),
('20170626155716'),
('20170626155719'),
('20170626155720'),
('20170626164312');


