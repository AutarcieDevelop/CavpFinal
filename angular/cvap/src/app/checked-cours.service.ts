import {Injectable, OnInit} from '@angular/core';
import {Cours} from "./cavp/Cours";
import {Seance} from "./cavp/Seance";
import {Jour} from "./cavp/Jour";
import {HttpClient} from "@angular/common/http";

@Injectable({
  providedIn: 'root'
})
export class CheckedCoursService implements OnInit{

  private checkedCourse : Cours[];
  public seance: Seance[];
  public jour:Jour[];
  public hour:number[]=[8.00, 8.15, 8.30, 8.45, 9.00, 9.15, 9.30, 9.45, 10.00, 10.15, 10.30, 10.45, 11.00, 11.15, 11.30, 11.45, 12.00, 12.15, 12.30, 12.45, 13.00, 13.15, 13.30, 13.45, 14.00, 14.15, 14.30, 14.45, 15.00, 15.15, 15.30, 15.45, 16.00, 16.15, 16.30, 16.45, 17.00, 17.15, 17.30, 17.45, 18.00, .15, 18.30, 19.00, 19.30];

  ngOnInit(): void {
    let obs=this.http.get('http://localhost:8000');//operation asynchrone
    obs.subscribe((response) => console.log(response));//donc ici on dis à la variable osb quand t'a fini
    //donne moi la reponse
  }

  constructor(private http:HttpClient) {
    this.jour=[
      {
        nomJour:"lundi",
        seance:0
      },
      {
        nomJour:"jeudi",
        seance:16
      }

    ];

    this.seance=[
      {
        seanceId:0,
        cours:0,
        heureDebut:12.00,
        heureFin:14,
        local:"2106",
        groupe:1
      },
      {
        seanceId:16,
        cours:1,
        heureDebut:10.15,
        heureFin:12.30,
        local:"2106",
        groupe:null
      }
    ];

    this.checkedCourse=[{
      id: 0,
      nom: 'Java 3',
      prof:'Riggio',
      nbrHeures: 26,
      ue: 0
    },
      {
        id: 1,
        nom: 'Analyse(Merise, UML) 2',
        prof:'Ben Hnia',
        nbrHeures: 12,
        ue: 0
      }];
  }
  getCheckedCours(): Cours[]{

    return this.checkedCourse;
  }
  setCheckedCours(cours: Cours[]){

    this.checkedCourse=cours;
    console.log("in service: ",this.checkedCourse);
  }
}

