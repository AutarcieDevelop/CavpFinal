import { TestBed } from '@angular/core/testing';

import { CheckedCoursService } from './checked-cours.service';

describe('CheckedCoursService', () => {
  let service: CheckedCoursService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(CheckedCoursService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
