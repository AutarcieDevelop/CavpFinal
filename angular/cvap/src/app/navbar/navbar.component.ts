import {Component, OnInit} from '@angular/core';
import {ActivatedRoute, Router, Params, Routes} from '@angular/router';
import {depotHoraireComponent} from "../depotHoraire/depotHoraire.component";
import {HoraireComponent} from "../horaire/horaire.component";

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: [ './navbar.component.css']
})
export class NavbarComponent implements OnInit {
  constructor(private route: ActivatedRoute, private router: Router) {
  }
  ngOnInit(): void {

  }

  public changeRoute(): void {

  }




}
