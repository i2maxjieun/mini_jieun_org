import { LightningElement } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';


export default class HelloWorld extends LightningElement {

    objectApiName = ACCOUNT_OBJECT;
    fields = [NAME_FIELD];
    handleSuccess(event){
        const toastEvent = new ShowToastEvent({
            title : "Account created",
            messsage: "Record ID : "  +event.detail.id,
            variant : "success"   
        }
        );
        this.dispatchEvent(toastEvent);
    }
  

}