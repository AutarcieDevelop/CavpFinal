import { Injectable} from '@angular/core';
import {Cours} from './Cours';
import {COURS} from './mock-cours';

@Injectable()
export class CoursService {
  getCours(): Cours[] {
    return COURS;
  }
  getUnCours(id: number): Cours {
    const cours = this.getCours();
    for (let index = 0; index < cours.length; index++) {
      if (id === cours[index].id) {
        return cours[index];
      }
    }
  }
}
