import {Component, OnInit} from '@angular/core';

import {Cours} from './cavp/Cours';
import { COURS } from './cavp/mock-cours';
import {UE} from './cavp/UE';
import {ue} from './cavp/mock-ue';
import {Quadri} from './cavp/Quadri';
import {QUADRI} from './cavp/mock-quadri';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: [ './app.component.css']
})

export class AppComponent implements OnInit {
  private cours: Cours[];
  private ue: UE[];
  private quadri: Quadri[];
  private ects: number;


  public getCours(): Cours[] {
    return this.cours;
  }
  public getUe(): UE[] {
    return this.ue;
  }
  public getQuadri(): Quadri[] {
    return this.quadri;
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
  }
  selectCours(cours: Cours) {
    alert('vous avez cliqué sur ' + cours.id);
  }
}
