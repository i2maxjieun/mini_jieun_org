public with sharing class RowActionsHandler {
   
    @AuraEnabled
    public static void deleteRow(Case objcase) {
            delete objcase;
       
    }
}