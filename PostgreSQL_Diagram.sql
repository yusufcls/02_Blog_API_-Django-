CREATE TABLE "table_post"(
    "id" BIGINT NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "content" TEXT NOT NULL,
    "created_date" DATE NOT NULL,
    "updated_date" DATE NOT NULL,
    "category_id" BIGINT NOT NULL,
    "user_id" BIGINT NOT NULL
);
ALTER TABLE
    "table_post" ADD PRIMARY KEY("id");
CREATE TABLE "django_user"("id" BIGINT NOT NULL);
ALTER TABLE
    "django_user" ADD PRIMARY KEY("id");
CREATE TABLE "table_category"(
    "id" BIGINT NOT NULL,
    "name" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "table_category" ADD PRIMARY KEY("id");
ALTER TABLE
    "table_post" ADD CONSTRAINT "table_post_user_id_foreign" FOREIGN KEY("user_id") REFERENCES "django_user"("id");
ALTER TABLE
    "table_post" ADD CONSTRAINT "table_post_category_id_foreign" FOREIGN KEY("category_id") REFERENCES "table_category"("id");