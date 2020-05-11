import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import {NavbarComponent} from './navbar/navbar.component';
import {HoraireComponent} from './horaire/horaire.component';
import {depotHoraireComponent} from './depotHoraire/depotHoraire.component';

import {Router, RouterModule, Routes} from "@angular/router";
import {cavpComponent} from "./cavp/cavp.component";
import {CheckedCoursService} from "./Checked-cours.service";
import {FormsModule} from "@angular/forms";
import {HttpClientModule} from "@angular/common/http";

const routes: Routes=[
  {path: '', component: cavpComponent},
  {path: 'depotHoraire', component: depotHoraireComponent},
  {path: 'horaire', component: HoraireComponent}

];

@NgModule({
  declarations: [
    AppComponent,
    NavbarComponent,
    HoraireComponent,
    depotHoraireComponent,
    cavpComponent,

  ],
  imports: [
    BrowserModule,
    RouterModule.forRoot(routes),
    FormsModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
