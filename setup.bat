cd C:\xampp\htdocs\github\E-Office
C:\xampp\mysql\bin\mysql -h localhost -u root -p -e "DROP DATABASE archive_surat; CREATE DATABASE archive_surat"
php spark migrate
php spark migrate -all
php spark db:seed AuthGroups
php spark db:seed Users