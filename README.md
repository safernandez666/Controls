# Controls
ISO 27001 | Controles 

Estimados, hace un tiempo hemos tenido la necesidad de tener un tablero de control donde poder visualizar los controles que derivan de nuestro cumplimiento con la ISO27001. Un lugar donde hacer referencia a las acciones, observaciones y las evidencias de cada uno de los controles, para poder evacuar las dudas del auditor rapidamente. 

Es importante habilitar LDAP en PHP. Revisar la configuracion de autenticacion para trabajar contra Active Directory. 

Se los comparto, con la finalidad de que puedan darle utilidad y a su vez mejorarlo.

Pagina de Logging (Entidad Autenticadora | Active Directory)

<a href="https://ibb.co/kJ3e2T"><img src="https://preview.ibb.co/dqWowo/2018_07_05_10_41_02_Login.png" alt="2018_07_05_10_41_02_Login" border="0"></a>

Controles

<a href="https://ibb.co/hK2vbo"><img src="https://preview.ibb.co/geiOU8/2018_07_05_10_41_29_Controles.png" alt="2018_07_05_10_41_29_Controles" border="0"></a>

Indicadores

<a href="https://ibb.co/iG8q98"><img src="https://preview.ibb.co/d0mMGo/2018_07_05_10_41_38_Referencias.png" alt="2018_07_05_10_41_38_Referencias" border="0"></a>

Cumplimiento

<a href="https://ibb.co/gED1Go"><img src="https://preview.ibb.co/iJfRhT/2018_07_05_10_41_47_Reporte.png" alt="2018_07_05_10_41_47_Reporte" border="0"></a>

# Instalacion

Una vez que tenemos instalado el servidor LAMP.

1. Agregamos el soporte para PHP-LDAP

sudo apt install php-ldap

2. Descomentamos en /etc/php/7.0/apache2/php.ini extension=php_ldap.dll
3. Creamos la Base de Datos. En nuestro caso, vamos a crear GS.

CREATE DATABASE gs;

CREATE USER '[user]'@'localhost' IDENTIFIED BY '[password]';

GRANT ALL PRIVILEGES ON * . * TO '[user]'@'localhost';

4. Restauramos, la base de datos.

mysql -u [user] -p [database_name] < [filename].sql

5. Configuramos las Variables de conexion.php
6. Configuramos las Variables de LDAP en login.php

