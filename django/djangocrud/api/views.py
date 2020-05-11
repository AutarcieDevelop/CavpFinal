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
    ue = myDict()
    seances = myDict()
    cours = myDict()
    coursTemp = myDict()
    tex = myDict()
    
    cpt = 0

    for i in Ue.objects.all():
        name = "ue" + str(cpt)
        idue = 'idue'+ str(cpt)

        nom = 'nom'+ str(cpt)
        quad = 'quadri' + str(cpt)
        nbcred = 'nbcredit' + str(cpt)

        tex.add(idue, i.idue)
        tex.add(nom, i.nom)
        tex.add(quad, i.quadri)
        tex.add(nbcred, i.nbcredit)

        ue.add(name, tex)

        cpt += 1
    cavp.add("ue", ue)

    cpt = 0
    for i in Seance.objects.all():

        idseance = "idseance"+ str(cpt)
        heure_d = "heure_debut"+str(cpt)
        heure_f = "heure_fin"+ str(cpt)
        local = "local"+str(cpt)
        groupe = "groupe"+str(cpt)
        nom = "nom"+str(cpt)

        seances.add(idseance, i.idseance)
        seances.add(heure_d,i.heure_debut)
        seances.add(heure_f, i.heure_fin)
        seances.add(local, i.local)
        seances.add(groupe, i.groupe)
        seances.add(nom, i.nom)

        cpt += 1
    cavp.add("seance", seances)

    cpt = 0
    for i in Cours.objects.all():
        nomcours = "numcours" + str(cpt)
        ue = "ue" + str(cpt)
        nomcours = "nomcours" + str(cpt)

        coursTemp.add(nomcours, i.numcours)
        coursTemp.add(ue, i.ue)
        coursTemp.add(nomcours, i.nomcours)

        cpt += 1

    cavp.add("cours", coursTemp)

    return JsonResponse(cavp)
#    return render(request, './http://localhost:4200', tex)
class myDict(dict):

    def __init__(self):
        self = dict()

    def add(self, key, value):
        self[key] = value