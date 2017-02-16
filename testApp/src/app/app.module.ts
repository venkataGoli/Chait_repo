import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';

import { AppComponent } from './app.component';
import { HomeComponentComponent } from './home-component/home-component.component';
import { TestDirectiveDirective } from './test-directive.directive';
import { TestDirective2Directive } from './test-directive-2.directive';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponentComponent,
    TestDirectiveDirective,
    TestDirective2Directive
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
