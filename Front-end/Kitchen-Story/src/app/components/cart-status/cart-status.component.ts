// @ts-nocheck
import { Component, OnInit } from '@angular/core';
import { CartService } from 'src/app/services/cart.service';
 
@Component({
  selector: 'app-cart-status',
  templateUrl: './cart-status.component.html',
  styleUrls: ['./cart-status.component.css']
})
export class CartStatusComponent implements OnInit {
   
  const username = localStorage.getItem('username');

  constructor(private cartService: CartService) { }

  ngOnInit(): void {
    
  }

 

}
