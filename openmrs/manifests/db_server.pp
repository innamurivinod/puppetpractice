class openmrs::db_server {
  mysql::db { 'mydb':
  user     => 'root',
  password => 'root',
  host     => 'localhost',
  grant    => ['SELECT', 'UPDATE'],
}
}

