resource "aws_db_instance" "kernel" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "8.0.33"
  instance_class       = "db.t3.micro"
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = "default.mysql18.0"
  skip_final_snapshot  = true
  backup_retention_period = 1
  publicly_accessible = true
  storage_encrypted   = true
  kms_key_id          = "arn:aws:kms:ap-northeast-2:184536356150:key/c1148317-4a48-4f75-9a26-b37de5d3c5c7"
  multi_az            = false
  auto_minor_version_upgrade = true
  copy_tags_to_snapshot = true
  max_allocated_storage = 1000
}
