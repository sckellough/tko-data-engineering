terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.56.0"
    }
  }
}

provider "snowflake" {
  role  = "SYSADMIN"
}

resource "snowflake_database" "db" {
  name     = "pythondb"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "python_wh"
  warehouse_size = "large"
  auto_suspend = 60
}