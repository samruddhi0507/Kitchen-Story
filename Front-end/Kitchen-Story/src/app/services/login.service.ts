import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { User } from '../common/user';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
@Injectable({
  providedIn: 'root'
})
export class LoginService {

 
  private baseUrl = 'http://localhost:8080/api/users';

  constructor(private httpClient: HttpClient) { }


  getUser(theCountryCode: string): Observable<User[]> {

    // search url
    const searchStatesUrl = `${this.baseUrl}/search/findByUsername?username=${theCountryCode}`;

    return this.httpClient.get<GetResponseUser>(searchStatesUrl).pipe(
      map(response => response._embedded.users)
    );
  }
 


}


interface GetResponseUser {
  _embedded: {
    users: User[];
  }}

 