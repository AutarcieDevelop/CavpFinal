import {Component, OnInit,Input} from '@angular/core';
import {ActivatedRoute, Router, Params} from '@angular/router';
import {Cours} from "../cavp/Cours";
import {cavpComponent} from "../cavp/cavp.component";
import {CheckedCoursService} from "../Checked-cours.Service";
import {Seance} from "../cavp/Seance";
import {Jour} from "../cavp/Jour";

@Component({
  selector: 'horaire',
  templateUrl: './horaire.component.html',
  styleUrls: [ './horaire.component.css'],
  providers:[CheckedCoursService]
})

export class HoraireComponent implements OnInit{
  public jourSemaine=["lundi","mardi","mercredi","jeudi","vendredi"];
  public checkedCours:Cours[];
  constructor(private coursService:CheckedCoursService) {
    console.log("in horaire: ",coursService.getCheckedCours());
  }

  public checkEmptyHour(jour:String, heure:number):boolean{//cette methode permet de voir si pendant un jour à tel heure aucun cours n'est donnée
    let test:boolean=false;//false veut dire qu'il n'y a aucun cours donné à cette heure dans ce jour
    for(let seance of this.getSeance()) {
        if (jour == this.checkJour(seance) && seance.heureDebut==heure) {
          test = true;
        }
    }
    return test;
  }
  public getHour(){
      return this.coursService.hour;
  }
  public checkJour(seance:Seance):String{//chop le jour de la seance à partir de l'objet seance
    for(let jour of this.coursService.jour){
      if(jour.seance==seance.seanceId){
        return jour.nomJour;
      }
    }
  }
  public getCours() {
    console.log("test;",this.coursService.getCheckedCours());

  }
   countRowspan(seance:Seance){//donne le nombre de quart d'heure que le cours va prendre

   var debut:number=seance.heureDebut;
   var fin:number=seance.heureFin;
    var nDebut:number=Math.floor(debut);
    var mDebut:number=Number((debut % 1).toFixed(2).substring(2));
    var nFin:number=Math.floor(fin);
    var mFin:number=Number((fin % 1).toFixed(2).substring(2));
     var nbrRowspan:number= (((nFin*60+mFin)-(nDebut*60+mDebut))/15);
    return nbrRowspan;

  }
  public getCoursFromId(id:number):Cours{
    for(let cours of this.coursService.getCheckedCours()){
      if(cours.id==id){
        return cours;
      }
    }
  }
  public getJour(){
    return this.coursService.jour;
  }
  public getSeance():Seance[]{
    let seances:Seance[]=[];
    for (let seance of this.coursService.seance){
      for(let cours of this.coursService.getCheckedCours()){
        if(seance.cours==cours.id){
          seances.push(seance);
        }
      }
    }
    return seances;//donc seance est une liste des seances de cours que l'utilisateur a en ayant choisi les cours dans la cavp
  }$

  ngOnInit(): void {

    this.checkedCours=this.coursService.getCheckedCours();
  }
  public leclick(){
    console.log("ici horaire: ",this.checkedCours);
  }
}
