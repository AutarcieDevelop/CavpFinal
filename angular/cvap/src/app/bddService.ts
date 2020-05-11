import {Injectable, OnInit} from "@angular/core";
import {HttpClient} from "@angular/common/http";
import { Observable, throwError } from "rxjs";
import {catchError,retry} from "rxjs/operators";
import 'rxjs/add/observable/of';

@Injectable()
export class bddService implements OnInit{
  private url="";
  constructor(private http:HttpClient) {}

  getBdd():Observable<any>{
    return this.http.get<any>(this.url);
  }
  ngOnInit(): void {
    let obs=this.http.get('http://localhost:8000');//operation asynchrone
    obs.subscribe(() => console.log('reponse de http',obs));//donc ici on dis à la variable osb quand t'a fini
    //donne moi la reponse
  }
}
