# Date Comparison

When you have to compare a date value to today's date there is a convenient method on the global `$date` object. Say you have a date field associated with a project stored as a string: `${project.Date_Project_Of_The_Day__c}`, you can see if that project is in the past or future with: 

```Velocity
#set($projectDateObject=${convert.parseDate(${project.Date_Project_Of_The_Day__c}, 'yyyy-MM-dd')})
#set($projectAgeDays=${date.whenIs($projectDateObject).days} )

About to compare $projectAgeDays to a number.<br />

#if($projectAgeDays>0)
    Project is in the future
#elseif($projectAgeDays<0)
    Project is in the past
#else
    You messed up! What does: $projectAgeDays mean?
#end
```

`$projectAgeDays` is a number here. If you would like to represent the difference between two dates with a more human readable string, try `$date.difference` as below:

```Velocity
$date.difference($date.calendar,$projectDateObject)
```
