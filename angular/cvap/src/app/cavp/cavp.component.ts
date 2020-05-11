import {Component, OnInit,Input} from '@angular/core';

import {Cours} from './Cours';
import { COURS } from './mock-cours';
import {UE} from './UE';
import {ue} from './mock-ue';
import {Quadri} from './Quadri';
import {QUADRI} from './mock-quadri';
import { BrowserModule } from '@angular/platform-browser';
import {CheckedCoursService} from "../checked-cours.service";

@Component({
  selector: 'app-root',
  templateUrl: './cavp.component.html',
  styleUrls: [ './cavp.component.css'],
  providers:[CheckedCoursService]
})

export class cavpComponent implements OnInit {
  private cours: Cours[];
  private ue: UE[];
  private quadri: Quadri[];
  private ects: number;
  public checkedCours : Cours[];

  constructor(private  coursService:CheckedCoursService) {//ici on fait une injection
  }
  public getCours(): Cours[] {
    return this.cours;
  }
  public getUe(): UE[] {
    return this.ue;
  }
  public getQuadri(): Quadri[] {
    return this.quadri;
  }
  public checkboxClick(event,cours){


    if(!event.target.checked){
      var index=this.checkedCours.indexOf(cours);
      this.checkedCours.splice(index,1);
    }
    else{
      this.checkedCours.push(cours);
    }
    this.coursService.setCheckedCours(this.checkedCours);


  }
  public totaleHeure(id: number) {
    let nbrHeures = 0;
    // tslint:disable-next-line:prefer-for-of
    for (let i = 0; i < this.cours.length; i++) {
      // tslint:disable-next-line:triple-equals
      if (this.cours[i].ue == id) {
        nbrHeures += this.cours[i].nbrHeures;
      }
    }
    return nbrHeures;
  }
  public heureQuadri(quadri: number) {
    let nbrHeures = 0;
    for (let i = 0; i < this.ue.length; i++) {
      if (this.ue[i].quadri == quadri) {
        for (let j = 0; j < this.cours.length; j++) {
          if (this.cours[j].ue == this.ue[i].id) {
            nbrHeures += this.cours[j].nbrHeures;
          }
        }
      }
    }
    return nbrHeures;
  }
  clickCours() {

  }
// tslint:disable-next-line:use-lifecycle-interface
  ngOnInit() {
    this.cours = COURS;
    this.ue = ue;
    this.quadri = QUADRI;
    this.checkedCours=this.coursService.getCheckedCours();//faut la definir sinon elle sera undefined
  }
  selectCours(cours: Cours) {
    alert('vous avez cliqué sur ' + cours.id);
  }

  test() {
    console.log("test;",this.coursService.getCheckedCours());
  }
}
