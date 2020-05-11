import csv
import psycopg2
from collections import OrderedDict
connection = psycopg2.connect(user = "postgres",
                                  password = "root",
                                  host = "127.0.0.1",
                                  database = "cavp")
cursor = connection.cursor()

head = []
profs = ""
cpt = 0

# lecture du fichier data.csv et insertion dans la bdd

with open('App/documents/data.csv', newline='') as csvfile:
    spamreader = csv.reader(csvfile, delimiter=' ', quotechar='|')
    for row in spamreader:
        if cpt > 2:
            if ("Ben" in row[0] or "Van" in row[0] or "OS" in row[0]):
                head = row[0] +' '+ row[1]
                head = head.split(";")
            else:
                head = row[0].split(";")
            profs += head[4] +";"

            if (head[7] == '/'):
                cursor.execute("INSERT INTO seance (heure_debut, heure_fin, local) VALUES (%s, %s, %s)", (head[1], head[2], head[5]))
                connection.commit()
            else:
                cursor.execute("INSERT INTO seance (heure_debut, heure_fin, local, groupe) VALUES (%s, %s, %s, %s)", (head[1], head[2], head[5], head[7]))
                connection.commit()
        cpt = cpt + 1

jours = ["Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi"]
#for x in jours:
#    cursor.execute("INSERT INTO jours (nomjour) VALUES (%s)", (x,))
#    connection.commit()
profs = profs.split(";")
profs = list(OrderedDict.fromkeys(profs))
for x in profs:
    if (x != ''):
        cursor.execute("INSERT INTO prof (nomprof) VALUES (%s)", (x,))
        connection.commit()
#print(profs)
quadi = [0]
cpt = 0
with open('App/documents/exemple_IG_archi.csv', newline='') as csvfile:
    spamreader = csv.reader(csvfile, delimiter=';', quotechar='|')

    for row in spamreader:
        if cpt > 0:
            for x in range(len(row)):
                if x == 2 and not row[x]:
                    quadri = str(row[0])
                cursor.execute("INSERT INTO ue (idue, nom, quadri, nbcredit) VALUES (%s, %s, %s, %s)", (row[1],row[2],quadri[-1], row[0]))
                connection.commit()
        cpt = cpt + 1

cursor.close()
connection.close()                                