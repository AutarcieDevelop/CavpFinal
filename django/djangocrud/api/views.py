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
    tex = myDict()
    cpt = 0
    for i in Ue.objects.all():
        idue = 'idue'+ str(cpt)
        nom = 'nom'+ str(cpt)
        quad = 'quadri' + str(cpt)
        nbcred = 'nbcredit' + str(cpt)
        tex.add(idue, i.idue)
        tex.add(nom, i.nom)
        tex.add(quad, i.quadri)
        tex.add(nbcred, i.nbcredit)
        cpt += 1

    return JsonResponse(tex)
#    return render(request, './http://localhost:4200', tex)

class myDict(dict):

    def __init__(self):
        self = dict()

    def add(self, key, value):
        self[key] = value