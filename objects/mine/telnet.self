 '$Revision:$'
 '
Copyright 1992-2001 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap stub -> 'globals' -> 'modules' -> () _AddSlots: ( | {
         'ModuleInfo: Module: telnet InitialContents: FollowSlot'
        
         telnet = bootstrap stub -> 'globals' -> 'modules' -> 'telnet' -> () _Define: (
             bootstrap remove: 'comment' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) _AddSlots: bootstrap stub -> 'globals' -> 'modules' -> 'telnet' -> () _AddSlots: ( |
             {} = 'ModuleInfo: Creator: globals modules telnet.

CopyDowns:
globals modules init. copy 
SlotsToOmit: comment directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap stub -> 'globals' -> 'modules' -> 'telnet' -> () _AddSlots: ( | {
         'ModuleInfo: Module: telnet InitialContents: FollowSlot\x7fVisibility: private'
        
         myComment <- ''.
        } | ) 

 bootstrap stub -> 'globals' -> 'modules' -> 'telnet' -> () _AddSlots: ( | {
         'ModuleInfo: Module: telnet InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'mine'.
        } | ) 

 bootstrap stub -> 'globals' -> 'modules' -> 'telnet' -> () _AddSlots: ( | {
         'ModuleInfo: Module: telnet InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap stub -> 'globals' -> 'modules' -> 'telnet' -> () _AddSlots: ( | {
         'ModuleInfo: Module: telnet InitialContents: FollowSlot'
        
         postFileIn = ( |
            | 
            resend.postFileIn).
        } | ) 

 bootstrap stub -> 'globals' -> 'modules' -> 'telnet' -> () _AddSlots: ( | {
         'ModuleInfo: Module: telnet InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap stub -> 'globals' -> 'modules' -> 'telnet' -> () _AddSlots: ( | {
         'ModuleInfo: Module: telnet InitialContents: FollowSlot\x7fVisibility: public'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules telnet postFileIn
