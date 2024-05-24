schema "app" {

}

table "users" {
  schema = schema.app
  column "id" {
    type = int
  }
  column "user_name" {
    type = varchar(255)
    unique = true
  }
  column "email" {
    type = varchar(255)
    unique = true
  }
+  column "bio" {
+    type = text
+    unique = true
+  }
  primary_key {
    columns = [column.id]
  }
}
