#!/usr/bin/python
import smtplib

import MySQLdb as my

arreglo = []

db = my.connect(host="127.0.0.1",
    user="[usuario]",
    passwd="[password]",
    db="[basededatos]"
    )

cursor = db.cursor()

sql = "SELECT c.titulo as Control, IF(c.responsable=1, 'TISO','FISO')  AS Responsable, case r.mes  when 1 then 'Enero'  when 2 then 'Febrero'  when 3 then 'Marzo' when 4 then 'Abril' when 5 then 'Mayo' when 6 then 'Junio' when 7 then 'Julio' when 8 then 'Agosto' when 9 then 'Septiembre' when 10 then 'Octubre' when 11 then 'Noviembre' when 12 then 'Diciembre'  end AS Mes FROM controles AS c INNER JOIN referencias as r ON c.id_control = r.id_control WHERE r.mes <= MONTH(CURRENT_DATE()) AND r.status = 2 AND r.ano = YEAR(CURRENT_DATE()) ORDER BY c.responsable, c.titulo, r.mes ASC"

number_of_rows = cursor.execute(sql)

result = cursor.fetchall()

fiso = 0
tiso = 0


for row in result:
    if (row[1]=='TISO' and tiso == 1):
        arreglo.extend(("\n", row[0],' | ',row[2]))
    if (row[1]=='TISO' and tiso == 0):
        arreglo.append ("\n------------------------------------------------------------------------------------")
        arreglo.append ("\n                                Controles TISO                                      ")
        arreglo.append ("\n------------------------------------------------------------------------------------")
        tiso = 1
        arreglo.extend (("\n", row[0],' | ',row[2]))
    if (row[1]=='FISO' and fiso == 1):
        arreglo.extend (("\n", row[0],' | ',row[2]))
    if (row[1]=='FISO' and fiso == 0):
        arreglo.append ("\n------------------------------------------------------------------------------------")
        arreglo.append ("\n                                Controles TISO                                      ")
        arreglo.append ("\n------------------------------------------------------------------------------------")
        fiso = 1
        arreglo.extend (("\n", row[0],' | ',row[2]))


db.close()

SERVER = "localhost"

FROM = "Controles <direccionDeEnvio>"
TO = ["correo"]

SUBJECT = "Pendientes ISO27001"

TEXT = ''.join(str(e) for e in arreglo)

# Prepare actual message

message = """\
From: %s
To: %s
Subject: %s

%s
""" % (FROM, ", ".join(TO), SUBJECT, TEXT)

# Send the mail

server = smtplib.SMTP(SERVER)


try:
    server.sendmail(FROM, TO, message)
    print ('Email Enviado')
except:
    print ('Problemas para enviar Email')

server.quit()


