public with sharing class recordCount {
   
@AuraEnabled(cacheable=true)
public static Integer getRecordCounts(){
   return [SELECT count() from Case];   
}


@AuraEnabled(cacheable=true)
public static Integer getNewRecordCounts(){
   return [SELECT count() from Case WHERE Status='New'];
}

@AuraEnabled(cacheable=true)
public static Integer getPendingRecordCounts(){
   return [SELECT count() from Case WHERE Status='Working'];
}


@AuraEnabled(cacheable=true)
public static Integer getClosedRecordCounts(){
   return [SELECT count() from Case WHERE Status='Closed'];
}
}