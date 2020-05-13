import csv
import psycopg2
from collections import OrderedDict

#paramètres à modifier avec vos donnes d 'utilisateurs de postgres
connection = psycopg2.connect(user = "postgres",
                                  password = "root",
                                  host = "127.0.0.1",
                                  database = "cavp")
cursor = connection.cursor()

head = []
profs = ""
cpt = 0

# lecture du fichier data.csv et insertion dans la bdd
jours = []

with open('App/documents/data.csv', newline='') as csvfile:
    spamreader = csv.reader(csvfile, delimiter=';', quotechar='|')
    for row in spamreader:    

        if ("IG" not in row[0] and "Jour" not in row[0]):
            jours.append(row[0])
            heure_d = row[1].replace('h', '.')
            heure_f = row[2].replace('h','.')
            heure_d = float(heure_d)
            heure_f = float(heure_f)
            cursor.execute("INSERT INTO seance (heure_debut, heure_fin, local, groupe, nom, jour) VALUES (%s, %s, %s, %s, %s, %s)", (heure_d, heure_f, row[5], row[6], row[9], row[0]))
            connection.commit()

cursor.execute("SELECT idseance FROM seance")
liste = cursor.fetchall()
cpt = 0

liste_seance = []

for i in liste:
    i = str(i)
    lis = i.replace(',)', '')
    lis = lis[1 : len(lis)]
    liste_seance.append(lis)

for i in range(len(liste_seance)):
    cursor.execute("INSERT INTO jours (nomjour, seancesf) VALUES (%s, %s)", (jours[i], liste_seance[i]))
    connection.commit()

cpt = 0
ue = ""

with open('exemple_IG_archi.csv', newline='') as csvfile:
   spamreader = csv.reader(csvfile, delimiter=';', quotechar='|')
   for row in spamreader:
        if (cpt > 17 and cpt < 35 or cpt > 55 and cpt < 76 and "Quadrimestre" not in row[0]):
            if (row[2].isupper()):
                ue = row[1]
            else:
                print(row[3], ue, row[2])
                cursor.execute("INSERT INTO cours (numcours, heures_total, ue, nomcours) VALUES (%s, %s, %s, %s)", (cpt,row[3], ue, row[2]))
                connection.commit()
        cpt += 1


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