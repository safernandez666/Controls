#!/usr/bin/env python
# -*- encoding: utf-8 -*-

import mysql.connector
from mysql.connector import Error
from mysql.connector import errorcode
try:
 connection = mysql.connector.connect(host='localhost',
   database='gs_prueba',
   user='gs',
   password='Marte2000')
 sql_insert_query = """ INSERT INTO controles (titulo, contenido, status, ano, responsable, periodo) 
 VALUES ('Gestion de usuarios y contrasenas', 'Revisar que los permisos otorgados son los apropiados', '3', 2019, 2, 4)"""
 cursor = connection.cursor()
 result  = cursor.execute(sql_insert_query)
 connection.commit()
 print ("Record inserted successfully into Controles table")
except mysql.connector.Error as error :
  connection.rollback() #rollback if any exception occured
  print("Failed inserting record into Controles table {}".format(error))
finally:
  #closing database connection.
  if(connection.is_connected()):
    cursor.close()
    connection.close()
    print("MySQL connection is closed")
