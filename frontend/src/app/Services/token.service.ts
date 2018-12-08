import { Injectable } from '@angular/core';
import { allSettled } from 'q';

@Injectable({
  providedIn: 'root'
})
export class TokenService {

  private iss = {
    login: 'http://localhost:9000/api/login',
    signup: 'http://localhost:9000/api/signup'
  }
  constructor() { }

  handle(token){
    this.set(token);
    console.log(this.isValid());
  }

  set(token){
    localStorage.setItem('token', token);
  }

  get(){
    return localStorage.getItem('token');
  }

  remove(token){
    localStorage.removeItem('token');
  }

  isValid(){
    const token = this.get();
    if(token){
      const payload = this.payload(token);
      if(payload){
        return Object.values(this.iss).indexOf(payload.iss) > -1 ? true : false;
      }
    }
    return false;
  }

  payload(token){
    const payload = token.split('.')[1];
    return this.decode(payload); 
  }

  decode(token){
    return JSON.parse(atob(token));
  }

  loggenIn(){
    return this.isValid();
  }
}
