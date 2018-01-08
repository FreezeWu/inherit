$PBExportHeader$w_evt303w02_l2_callsyntax.srw
forward
global type w_evt303w02_l2_callsyntax from w_evt303w01_l1_callsyntax
end type
end forward

global type w_evt303w02_l2_callsyntax from w_evt303w01_l1_callsyntax
end type
global w_evt303w02_l2_callsyntax w_evt303w02_l2_callsyntax

forward prototypes
public subroutine wf_describe ()
public subroutine wf_init_items ()
public subroutine wf_scriptexe (integer ai_item, boolean ab_execute)
end prototypes

public subroutine wf_describe ();////////////////////////////////////////////////////////////////
//Function : wf_describe ; Output Describe
//Argument : none
//Output   : none
//Designer : 
//Date     :
////////////////////////////////////////////////////////////////

mle_describe.text  = "1.Appeon Window : "
mle_describe.text +=  Classname() + "~r~n" //This Must be the First output
mle_describe.text += "2.Testing Purpose : " // This must include
mle_describe.text += "Call Ancestor Event Syntax~r~n"
mle_describe.text += "3.Operation Step : ~r~n" // Optional
mle_describe.text += "4.Object Declare : ~r~n" // Optional
mle_describe.text += 'Level 1: Declare Event ue_event()~r~n'
mle_describe.text += 'Level 2: Extent Event ue_event()~r~n'
Return
end subroutine

public subroutine wf_init_items ();////////////////////////////////////////////////////////////////
//Function : wf_init_items ; Initialization ListBox Items
//Argument : none
//Output   : none
//Designer : 
//Date     :
////////////////////////////////////////////////////////////////

lb_items.reset()
//script below  use to add test item into listbox control
lb_items.additem("EVT303W02P001: ancestorclass ::Event name ( { argumentlist } );")
lb_items.additem("EVT303W02P002: ancestorclass ::Event { when } name ( { argumentlist } );")
lb_items.additem("EVT303W02P003: { objectname` } ancestorclass ::Event name ( { argumentlist } );")
lb_items.additem("EVT303W02P004: { objectname` } ancestorclass ::Event {when}  name  ( { argumentlist } );")
lb_items.additem("EVT303W02P005: Super ::Event {when}  name  ( { argumentlist } );")

end subroutine

public subroutine wf_scriptexe (integer ai_item, boolean ab_execute);//////////////////////////////////////////////////////////////////////
//Function: wf_Script  View and Execute Script
//Argument: Int ai_item: SelectedItem;
//          Boolean ab_execute: Execute or View Flag
//Output:   none
//Designer:
//Date:
/////////////////////////////////////////////////////////////////////

Long ll_Case
Boolean lb_Boolean
String ls_arg
String ls_item

If ai_item < 1 Then Return

ls_item = left(lb_items.text(ai_item),13)
Choose Case ls_item
	Case 'EVT303W02P001'
		If ab_execute Then 
			//ancestorclass ::Event name ( { argumentlist } )
			gs_point = 'EVT303W02P001'
			w_evt303w01_l1_callsyntax::Event ue_event()
			wf_output('Event Type:   Window', True)
			wf_output('Information:   ' + gs_call, False)
		Else
			wf_scriptview("//ancestorclass ::Event name ( { argumentlist } )         ")
			wf_scriptview("gs_point = 'EVT303W02P001'")
			wf_scriptview("w_evt303w01_l1_callsyntax::Event ue_event()")
			wf_scriptview("wf_output('Event Type:   Window', True)                   ")
			wf_scriptview("wf_output('Information:   ' + gs_call, False)             ")
		End If
	Case 'EVT303W02P002'
		If ab_execute Then 
			//ancestorclass ::Event { when } name ( { argumentlist } )
			gs_point = 'EVT303W02P002'
			w_evt303w01_l1_callsyntax::Event Trigger ue_event()
			wf_output('Event Type:   Window', True)
			wf_output('Information:   ' + gs_call, False)
		Else
			wf_scriptview("//ancestorclass ::Event { when } name ( { argumentlist } )        ")
			wf_scriptview("gs_point = 'EVT303W02P002'")
			wf_scriptview("w_evt303w01_l1_callsyntax::Event Trigger ue_event()")
			wf_scriptview("wf_output('Event Type:   Window', True)                           ")
			wf_scriptview("wf_output('Information:   ' + gs_call, False)                     ")
		End If
	Case 'EVT303W02P003'
		If ab_execute Then 
			//{ objectname` } ancestorclass ::Event name ( { argumentlist } )
			gs_point = 'EVT303W02P003'
			w_evt303w01_l1_callsyntax`w_evt303w01_l1_callsyntax::Event ue_event()
			wf_output('Event Type:   Window', True)
			wf_output('Information:   ' + gs_call, False)
		Else
			wf_scriptview("//{ objectname` } ancestorclass ::Event name ( { argumentlist } )                   ")
			wf_scriptview("gs_point = 'EVT303W02P003'")
			wf_scriptview("w_evt303w01_l1_callsyntax`w_evt303w01_l1_callsyntax::Event ue_event()")
			wf_scriptview("wf_output('Event Type:   Window', True)                                             ")
			wf_scriptview("wf_output('Information:   ' + gs_call, False)                                       ")
		End If
	Case 'EVT303W02P004'
		If ab_execute Then 
			//{ objectname` } ancestorclass ::Event {when}  name  ( { argumentlist } )
			gs_point = 'EVT303W02P004'
			w_evt303w01_l1_callsyntax`w_evt303w01_l1_callsyntax::Event Trigger ue_event()
			wf_output('Event Type:   Window', True)
			wf_output('Information:   ' + gs_call, False)
		Else
			wf_scriptview("//{ objectname` } ancestorclass ::Event {when}  name  ( { argumentlist } )                  ")
			wf_scriptview("gs_point = 'EVT303W02P004'")
			wf_scriptview("w_evt303w01_l1_callsyntax`w_evt303w01_l1_callsyntax::Event Trigger ue_event()")
			wf_scriptview("wf_output('Event Type:   Window', True)                                                     ")
			wf_scriptview("wf_output('Information:   ' + gs_call, False)                                               ")
		End If
	Case 'EVT303W02P005'
		If ab_execute Then 
			//Super ::Event {when}  name  ( { argumentlist } )
			gs_point = 'EVT303W02P005'
			Super::Event Trigger ue_event()
			wf_output('Event Type:   Window', True)
			wf_output('Information:   ' + gs_call, False)
		Else
			wf_scriptview("//Super ::Event {when}  name  ( { argumentlist } )")
			wf_scriptview("gs_point = 'EVT303W02P005'")
			wf_scriptview("Super::Event Trigger ue_event()    ")
			wf_scriptview("wf_output('Event Type:   Window', True)           ")
			wf_scriptview("wf_output('Information:   ' + gs_call, False)     ")
		End If
	Case Else
	 	MessageBox("Error","This Point Not Coding",Exclamation!)
End Choose


//BEGIN_SCRIPTEXE
if ab_Execute then wf_SaveTempResult(ai_Item)
//END_SCRIPTEXE
end subroutine

on w_evt303w02_l2_callsyntax.create
call super::create
end on

on w_evt303w02_l2_callsyntax.destroy
call super::destroy
end on

event ue_event;call super::ue_event;gs_call = 'Call Window Event w_evt303W02_l2_callsyntax.ue_event()(global var gs_point = ' + gs_point + ')'

end event

type cb_2 from w_evt303w01_l1_callsyntax`cb_2 within w_evt303w02_l2_callsyntax
end type

type cb_3 from w_evt303w01_l1_callsyntax`cb_3 within w_evt303w02_l2_callsyntax
end type

type cb_clear from w_evt303w01_l1_callsyntax`cb_clear within w_evt303w02_l2_callsyntax
end type

type cb_execute from w_evt303w01_l1_callsyntax`cb_execute within w_evt303w02_l2_callsyntax
end type

type cb_close from w_evt303w01_l1_callsyntax`cb_close within w_evt303w02_l2_callsyntax
end type

type mle_output from w_evt303w01_l1_callsyntax`mle_output within w_evt303w02_l2_callsyntax
end type

type mle_view from w_evt303w01_l1_callsyntax`mle_view within w_evt303w02_l2_callsyntax
end type

type lb_items from w_evt303w01_l1_callsyntax`lb_items within w_evt303w02_l2_callsyntax
end type

type gb_3 from w_evt303w01_l1_callsyntax`gb_3 within w_evt303w02_l2_callsyntax
end type

type gb_4 from w_evt303w01_l1_callsyntax`gb_4 within w_evt303w02_l2_callsyntax
end type

type gb_5 from w_evt303w01_l1_callsyntax`gb_5 within w_evt303w02_l2_callsyntax
end type

type mle_describe from w_evt303w01_l1_callsyntax`mle_describe within w_evt303w02_l2_callsyntax
end type

type gb_2 from w_evt303w01_l1_callsyntax`gb_2 within w_evt303w02_l2_callsyntax
end type

