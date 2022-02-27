// @ts-nocheck
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { User } from 'src/app/common/user';
import { LoginService } from 'src/app/services/login.service';
import { FormGroup, FormBuilder, FormControl, Validators } from '@angular/forms';
import {Router} from "@angular/router"
import { ProductService } from 'src/app/services/product.service';
import { ProductCategory } from 'src/app/common/product-category';
import { Product } from 'src/app/common/product';
 

@Component({
  selector: 'app-add-product',
  templateUrl: './add-product.component.html',
  styleUrls: ['./add-product.component.css']
})
export class AddProductComponent implements OnInit {

  productCategories: ProductCategory[];
  //productCategories: ProductCategory[] = [];

  constructor(private route: ActivatedRoute, 
    private loginService: LoginService,
    private formBuilder: FormBuilder,
    private productService: ProductService,
    private router: Router)
     { }

  const username = localStorage.getItem('username');
  users: Array<User>;
  written1:string;
  theusername: string;
  thepassword: string;
  
   
  checkoutFormGroup: FormGroup;

  ngOnInit(): void {
      
    this.listProductCategories();
    this.checkoutFormGroup = this.formBuilder.group({
      product: this.formBuilder.group({
        name: [],
        description: [],
        unitPrice: [],
        imageUrl: []

      })
    });
  }

  listProductCategories() {

    this.productService.getProductCategories().subscribe(
      data => {
         
        this.productCategories = data;
      }

    );

  }

  get name() { return this.checkoutFormGroup.get('product.name'); }
  get description() { return this.checkoutFormGroup.get('product.description'); }
  get unitPrice() { return this.checkoutFormGroup.get('product.unitPrice'); }
  get imageUrl() { return this.checkoutFormGroup.get('product.imageUrl'); }


  


  onSubmit() {


    // set up product
    let product = new Product();
    product = this.checkoutFormGroup.controls['product'].value;
    
    console.log(product);


        // call REST API via the CheckoutService
        this.productService.addProduct(product).subscribe({
          next: response => {
            alert(`Add is Done`);
  
          },
          error: err => {
            alert(`There was an error: ${err.message}`);
          }
        }
      );

  }


}
