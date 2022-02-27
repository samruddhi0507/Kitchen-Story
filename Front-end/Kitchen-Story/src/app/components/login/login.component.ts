import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { User } from 'src/app/common/user';
import { LoginService } from 'src/app/services/login.service';
import { FormGroup, FormBuilder, FormControl, Validators } from '@angular/forms';
import {Router} from "@angular/router"

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  users: Array<User>;
  written1:string;
  theusername: string;
  thepassword: string;
   
  checkoutFormGroup: FormGroup;
 
  constructor(private route: ActivatedRoute, 
              private loginService: LoginService,
              private formBuilder: FormBuilder,
              private router: Router)
               { }

  ngOnInit(): void {
   
    this.checkoutFormGroup = this.formBuilder.group({
      user: this.formBuilder.group({
        username: [''],
        password1: ['']
  
      })
    });
  }


  handleLogin() {

    console.log(this.checkoutFormGroup.get('user').value);

    this.written1 = this.checkoutFormGroup.get('user').value.username;

    this.loginService.getUser(this.written1).subscribe(
      data => {
           
            
          this.users = data; 
         
      }
    );

   

    if(this.users[0].username == this.written1){
      localStorage.setItem('username', this.written1);
      console.log("YES");
      this.router.navigate(['/products'])
    }
    else{
      console.log("NOOOOO");
    }
   

  }



}
