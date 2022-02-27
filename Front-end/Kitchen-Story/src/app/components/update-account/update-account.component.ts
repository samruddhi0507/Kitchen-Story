// @ts-nocheck
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { User } from 'src/app/common/user';
import { LoginService } from 'src/app/services/login.service';
import { FormGroup, FormBuilder, FormControl, Validators } from '@angular/forms';
import {Router} from "@angular/router"

@Component({
  selector: 'app-update-account',
  templateUrl: './update-account.component.html',
  styleUrls: ['./update-account.component.css']
})
export class UpdateAccountComponent implements OnInit {

  constructor(private route: ActivatedRoute, 
    private loginService: LoginService,
    private formBuilder: FormBuilder,
    private router: Router)
     { }

  const username = localStorage.getItem('username');
  users: Array<User>;
  written1:string;
  theusername: string;
  thepassword: string;
   
  checkoutFormGroup: FormGroup;

  ngOnInit(): void {
    this.getData();
    this.checkoutFormGroup = this.formBuilder.group({
      user: this.formBuilder.group({
        username: [username],
        email: [],
        password1: []
  
      })
    });
  }


  getData() {

      
    this.loginService.getUser(this.username).subscribe(
      data => {
           
            
          this.users = data; 
         
      }
    );

}

}
