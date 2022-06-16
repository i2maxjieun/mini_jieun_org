public with sharing class CaseController {



    // local 입니다
    @AuraEnabled(cacheable=true)
    public static List<Case> getCases(String Status) {
        if(Status.equals('All')){
            return[
            SELECT Subject, CaseNumber,AccountId,Reason,Status
            FROM Case           
            ORDER BY Subject
            ];
        } else {
            return [
                SELECT Subject, CaseNumber,AccountId,Reason,Status
                FROM Case
                WHERE Status=:Status
                ORDER BY Subject
            ];

        }

        
    }
}