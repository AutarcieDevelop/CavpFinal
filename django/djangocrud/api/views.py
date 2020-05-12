from django.contrib.auth.models import User, Group
from rest_framework import viewsets
from rest_framework.response import Response
from django.shortcuts import render
from django.shortcuts import redirect
from django.http import JsonResponse
from djangocrud.api.models import Ue, Seance, Cours
from collections import OrderedDict 
from django.core.files.storage import FileSystemStorage
from django.http import HttpResponseRedirect
from django.core.management import ManagementUtility
import subprocess

def upload(request):
    if 'goToCavp' in request.POST:
        return HttpResponseRedirect("http://127.0.0.1:4200")
#    else:
        #if request.method == "POST" and request.FILES['document']:
         #   uploaded_files = request.FILES['document']
          #  fs = FileSystemStorage()
           # fs.save(uploaded_files.name, uploaded_files)

#        subprocess.Popen(["python3","App/documents/script.py"], close_fds=True)

    return render(request, 'upload.html')
    
def goHome(request):

    cavp = myDict()
    seances = myDict()
    ue = myDict()
    cours = myDict()
    coursTemp = myDict()
    
    cpt = 0

    for i in Ue.objects.all():
        tex = myDict()
        name = "ue" + str(cpt)
        idue = 'idue'+ str(cpt)

        nom = 'nom'+ str(cpt)
        quad = 'quadri' + str(cpt)
        nbcred = 'nbcredit' + str(cpt)

        tex.add(idue, i.idue)
        tex.add(nom, i.nom)
        tex.add(quad, i.quadri)
        tex.add(nbcred, i.nbcredit)
        cpt += 1

        ue.add(name, tex)

    cavp.add("ue", ue)

    cpt = 0
    for i in Seance.objects.all():
        temp = myDict()
        seancename = "seance" + str(cpt)
        idseance = "idseance"+ str(cpt)
        heure_d = "heure_debut"+str(cpt)
        heure_f = "heure_fin"+ str(cpt)
        local = "local"+str(cpt)
        groupe = "groupe"+str(cpt)
        nom = "nom"+str(cpt)

        temp.add(idseance, i.idseance)
        temp.add(heure_d,i.heure_debut)
        temp.add(heure_f, i.heure_fin)
        temp.add(local, i.local)
        temp.add(groupe, i.groupe)
        temp.add(nom, i.nom)

        seances.add(seancename, temp)
        cpt += 1

    cavp.add("seance", seances)

    cpt = 0
    for i in Cours.objects.all():
        temp2 = myDict()
        nomcrs = "cours" + str(cpt)
        nomcours = "numcours" + str(cpt)
        ue = "ue" + str(cpt)
        nomcours = "nomcours" + str(cpt)

        temp2.add(nomcours, i.numcours)
        temp2.add(ue, i.ue)
        temp2.add(nomcours, i.nomcours)

        cours.add(nomcrs, temp2)
        cpt += 1

    cavp.add("cours", cours)

    return JsonResponse(cavp)
#    return render(request, './http://localhost:4200', tex)
class myDict(dict):

    def __init__(self):
        self = dict()

    def add(self, key, value):
        self[key] = value