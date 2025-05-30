import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ListaArticulosComponent } from './lista-articulos.component';

describe('ListaArticulosComponent', () => {
  let component: ListaArticulosComponent;
  let fixture: ComponentFixture<ListaArticulosComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ListaArticulosComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ListaArticulosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
