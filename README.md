# Controls
ISO 27001 | Controles 

Estimados, hace un tiempo hemos tenido la necesidad de tener un tablero de control donde poder visualizar los controles que derivan de nuestro cumplimiento con la ISO27001. Un lugar donde hacer referencia a las acciones, observaciones y las evidencias de cada uno de los controles, para poder evacuar las dudas del auditor rapidamente. 

Se los comparto, con la finalidad de que puedan darle utilidad y a su vez mejorarlo.

## Instalacion

Agregar el soporte para php-ldap a servidor LAMP

```bash
sudo apt install php-ldap
```
Tenemos que descomentar la linea /etc/php/7.0/apache2/php.ini

```bash
extension=php_ldap.dll
```

Creacion de Base de Datos

```bash
CREATE DATABASE [database_name];
CREATE USER '[user]'@'localhost' IDENTIFIED BY '[password]';
GRANT ALL PRIVILEGES ON * . * TO '[user]'@'localhost';

mysql -u [user] -p [database_name] < [filename].sql #En la Carpeta Scripts, se encuentra gs.sql
```

Modificamos las Conexiones, con nuestros datos en /var/www/html/conexion.php y /var/www/html/pdf/conexion.php

Modificamos los parametros, LDAP, en /var/www/html/login.php

```bash
$user = $_POST["usuariolg"];
$password = $_POST["passlg"];
$host = '[direccion_ip]';
$domain = '[dominio]';
$basedn = 'dc=[dominio],dc=[dominio]';
$group = '[grupo]'; #Grupo con permisos, de acceso.
```
Dejo un Script, en Python, para realizar un Cron con avisos de Email.

# Inicio Login

![Image description](https://github.com/safernandez666/Controls/blob/master/screenshots/Captura_Inicio.PNG)

# Lista de Controles

![Image description](https://github.com/safernandez666/Controls/blob/master/screenshots/Captura_Lista%20Controles.PNG)

# Revisiones de Controles

![Image description](https://github.com/safernandez666/Controls/blob/master/screenshots/Captura_Lista%20Revisiones.PNG)

## License
[GNU General Public License v3.0](https://choosealicense.com/licenses/gpl-3.0/)
