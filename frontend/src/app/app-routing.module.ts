import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';
import {ProductComponent} from './components/product/product.component';
import {CartComponent} from './components/cart/cart.component';
import {CheckoutComponent} from './components/checkout/checkout.component';
import {ThankyouComponent} from './components/thankyou/thankyou.component';
import {LoginComponent} from './components/login/login.component';
import {ProfileComponent} from './components/profile/profile.component';
import {ProfileGuard} from './guard/profile.guard';
import {RegisterComponent} from './components/register/register.component';
import {HomeComponent} from './components/home/home.component';
import {HomeLayoutComponent} from './components/home-layout/home-layout.component';
import { AllproductComponent } from './components/allproduct/allproduct.component';
import { AboutComponent } from './components/about/about.component';
import { ContactComponent } from './components/contact/contact.component';
import { PrivacyComponent } from './components/privacy/privacy.component';
import { TermComponent } from './components/term/term.component';
import { HelpComponent } from './components/help/help.component';
import { NewsComponent } from './components/news/news.component';


const routes: Routes = [
  {
    path: '',
    component: HomeLayoutComponent,
    children: [
      {path: '', component: HomeComponent },
      {path: 'product/:id', component: ProductComponent},
      {path: 'cart', component: CartComponent},
      {path: 'checkout', component: CheckoutComponent},
      {path: 'thankyou', component: ThankyouComponent},
      {path: 'login', component: LoginComponent},
      {path: 'profile', component: ProfileComponent, canActivate: [ProfileGuard]},
      {path: 'register', component: RegisterComponent},
      {path: 'all-product', component: AllproductComponent},
      {path: 'about', component: AboutComponent},
      {path: 'contact', component: ContactComponent},
      {path: 'privacy', component: PrivacyComponent},
      {path: 'term', component: TermComponent},
      {path: 'help', component: HelpComponent},
      {path: 'news', component: NewsComponent},
    ]
  },
  // Wildcard Route if no route is found == 404 NOTFOUND page  

  {
    path: '**', pathMatch: 'full', redirectTo: ''
  }

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
