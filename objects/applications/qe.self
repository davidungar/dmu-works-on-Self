 '$Revision:$'
 '
Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: qe InitialContents: FollowSlot'
        
         qe = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'qe' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'qe' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules qe.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'qe' -> () From: ( | {
         'ModuleInfo: Module: qe InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'qe' -> () From: ( | {
         'ModuleInfo: Module: qe InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'qe' -> () From: ( | {
         'ModuleInfo: Module: qe InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'qe' -> () From: ( | {
         'ModuleInfo: Module: qe InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'qe' -> () From: ( | {
         'ModuleInfo: Module: qe InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'qe' -> () From: ( | {
         'ModuleInfo: Module: qe InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'shortcuts' -> () From: ( | {
         'ModuleInfo: Module: qe InitialContents: FollowSlot\x7fVisibility: public'
        
         quartzExpressions = ( |
            | 
            "todo
            set layer xform only once
            same for textmatrix
            set window only if not copying layer
            have port withGCDo: do portsetwindowport
            "

            [halt.
             0 desktop openNewWorldOnDisplay: 'q'.
            xxx: 0 desktop worlds last.
            0 desktop worlds removeLast.
            yyy baseDrawOn: xxx winCanvases first].
            ['glue/quartzTemplates.self' _RunScript.
            'glue/quartz_wrappers.self' _RunScript].
            [quartzGlobals].
            [xxx winCanvases first testText].
            [0 halt. xxx bufCanvases first testText. 
              xxx winCanvases first gc withIdentCTMDo: [xxx winCanvases first gc drawLayer: xxx bufCanvases first layer At: 0@0]].

            [|qm| 
              qm: 0 userQueryMorph copyQuestion: 'test0@0'.
              qm popUpInWorld: xxx Canvas: xxx winCanvases first At:0@0.
              qm drawAttention.

              qm: 0 userQueryMorph copyQuestion: 'test50@100'.
              qm popUpInWorld: xxx Canvas: xxx winCanvases first At: 50@100.
              qm drawAttention.

              qm: 0 userQueryMorph copyQuestion: 'test50@40'.
              qm popUpInWorld: xxx Canvas: xxx winCanvases first At: 50@40.
              qm drawAttention.
            0 desktop go.

            ].
            [0 desktop w alsoOpenOnDisplay: 'q'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'shortcuts' -> () From: ( | {
         'ModuleInfo: Module: qe InitialContents: InitializeToExpression: (nil)'
        
         xxx <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'shortcuts' -> () From: ( | {
         'ModuleInfo: Module: qe InitialContents: FollowSlot'
        
         yyy <- 0.
        } | ) 



 '-- Side effects'

 globals modules qe postFileIn
