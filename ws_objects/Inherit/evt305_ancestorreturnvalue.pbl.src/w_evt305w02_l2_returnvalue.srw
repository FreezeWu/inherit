$PBExportHeader$w_evt305w02_l2_returnvalue.srw
forward
global type w_evt305w02_l2_returnvalue from w_evt305w01_l1_returnvalue
end type
end forward

global type w_evt305w02_l2_returnvalue from w_evt305w01_l1_returnvalue
end type
global w_evt305w02_l2_returnvalue w_evt305w02_l2_returnvalue

forward prototypes
public subroutine wf_init_items ()
public subroutine wf_scriptexe (integer ai_item, boolean ab_execute)
end prototypes

public subroutine wf_init_items ();////////////////////////////////////////////////////////////////
//Function : wf_init_items ; Initialization ListBox Items
//Argument : none
//Output   : none
//Designer : 
//Date     :
////////////////////////////////////////////////////////////////

lb_items.reset()
//script below  use to add test item into listbox control
lb_items.additem("EVT305W02P001: Extend Event Ancestor Return Value;")
lb_items.additem("EVT305W02P002: Call Super Return Ancestor Return Value;")
lb_items.additem("EVT305W02P003: Ancestor Not Return Value;")


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
	Case 'EVT305W02P001'
		If ab_execute Then 
			//Extend Event Ancestor Return Value
			wf_output('Event Type:   Window', True)
			Event ue_event_1()
		Else
			wf_scriptview("//Extend Event Ancestor Return Value                                                        ")
			wf_scriptview("//Window Event w_evt305w01_l1_returnvalue.ue_event_1() Script                               ")
			wf_scriptview("{                                                                                           ")
			wf_scriptview("     Return 'Call w_evt305W01_l1_returnvalue.ue_event_1() Success'                          ")
			wf_scriptview("}                                                                                           ")
			wf_scriptview("//Window Event w_evt305w02_l2_returnvalue.ue_event_1() Extend Script                        ")
			wf_scriptview("{                                                                                           ")
			wf_scriptview("     wf_output('Information:   AncestorReturnValue = ' + String(AncestorReturnValue), False)")
			wf_scriptview("     Return 'Call w_evt305W02_l2_returnvalue.ue_event_1() Success'                          ")
			wf_scriptview("}                                                                                           ")
			wf_scriptview("wf_output('Event Type:   Window', True)                                                     ")
			wf_scriptview("Event ue_event_1()                                                                          ")
		End If
	Case 'EVT305W02P002'
		If ab_execute Then 
			//Call Super Return Acestor Return Value
			wf_output('Event Type:   Window', True)
			Event ue_event_2()
		Else
			wf_scriptview("//Call Super Return Acestor Return Value                                                    ")
			wf_scriptview("//Window Event w_evt305w01_l1_returnvalue.ue_event_2() Script                               ")
			wf_scriptview("{                                                                                           ")
			wf_scriptview("     Return 'Call w_evt305W01_l1_returnvalue.ue_event_2() Success'                          ")
			wf_scriptview("}                                                                                           ")
			wf_scriptview("//Window Event w_evt305w02_l2_returnvalue.ue_event_2() Override Script                      ")
			wf_scriptview("{                                                                                           ")
			wf_scriptview("     Call Super::ue_event_2                                                                 ")
			wf_scriptview("     wf_output('Information:   AncestorReturnValue = ' + String(AncestorReturnValue), False)")
			wf_scriptview("     Return 'Call w_evt305W02_l2_returnvalue.ue_event_2() Success'                          ")
			wf_scriptview("}                                                                                           ")
			wf_scriptview("wf_output('Event Type:   Window', True)                                                     ")
			wf_scriptview("Event ue_event_2()                                                                          ")
		End If
	Case 'EVT305W02P003'
		If ab_execute Then 
			//Acestor Not Return Value
			wf_output('Event Type:   Window', True)
			TriggerEvent(DoubleClicked!)
		Else
			wf_scriptview("//Acestor Not Return Value                                                               ")
			wf_scriptview("//Window Event w_evt305w02_l2_returnvalue.DoubleClicked() Script                         ")
			wf_scriptview("{                                                                                        ")
			wf_scriptview("     String     ls_output                                                                ")
			wf_scriptview("     If IsNull(AncestorReturnValue) Then                                                 ")
			wf_scriptview("          ls_output = 'Null'                                                             ")
			wf_scriptview("     Else                                                                                ")
			wf_scriptview("          ls_output = String(AncestorReturnValue)                                        ")
			wf_scriptview("     End If                                                                              ")
			wf_scriptview("     wf_output('Information:   AncestorReturnValue = ' + ls_output, False)               ")
			wf_scriptview("}                                                                                        ")
			wf_scriptview("wf_output('Event Type:   Window', True)                                                  ")
			wf_scriptview("TriggerEvent(DoubleClicked!)                                                             ")
		End If
	Case Else
	 	MessageBox("Error","This Point Not Coding",Exclamation!)
End Choose



//BEGIN_SCRIPTEXE
if ab_Execute then wf_SaveTempResult(ai_Item)
//END_SCRIPTEXE
end subroutine

on w_evt305w02_l2_returnvalue.create
call super::create
end on

on w_evt305w02_l2_returnvalue.destroy
call super::destroy
end on

event ue_event_1;call super::ue_event_1;wf_output('Information:   AncestorReturnValue = ' + String(AncestorReturnValue), False)
Return 'Call w_evt305W02_l2_returnvalue.ue_event_1() Success'
end event

event ue_event_2;Call Super::ue_event_2
wf_output('Information:   AncestorReturnValue = ' + String(AncestorReturnValue), False)
Return 'Call w_evt305W02_l2_returnvalue.ue_event_2() Success'
end event

event doubleclicked;call super::doubleclicked;String	ls_output
If IsNull(AncestorReturnValue) Then
	ls_output = 'Null'
Else
	ls_output = String(AncestorReturnValue)
End If
wf_output('Information:   AncestorReturnValue = ' + ls_output, False)
end event

type cb_2 from w_evt305w01_l1_returnvalue`cb_2 within w_evt305w02_l2_returnvalue
end type

type cb_3 from w_evt305w01_l1_returnvalue`cb_3 within w_evt305w02_l2_returnvalue
end type

type cb_clear from w_evt305w01_l1_returnvalue`cb_clear within w_evt305w02_l2_returnvalue
end type

type cb_execute from w_evt305w01_l1_returnvalue`cb_execute within w_evt305w02_l2_returnvalue
end type

type cb_close from w_evt305w01_l1_returnvalue`cb_close within w_evt305w02_l2_returnvalue
end type

type mle_output from w_evt305w01_l1_returnvalue`mle_output within w_evt305w02_l2_returnvalue
end type

type mle_view from w_evt305w01_l1_returnvalue`mle_view within w_evt305w02_l2_returnvalue
end type

type lb_items from w_evt305w01_l1_returnvalue`lb_items within w_evt305w02_l2_returnvalue
end type

type gb_3 from w_evt305w01_l1_returnvalue`gb_3 within w_evt305w02_l2_returnvalue
end type

type gb_4 from w_evt305w01_l1_returnvalue`gb_4 within w_evt305w02_l2_returnvalue
end type

type gb_5 from w_evt305w01_l1_returnvalue`gb_5 within w_evt305w02_l2_returnvalue
end type

type mle_describe from w_evt305w01_l1_returnvalue`mle_describe within w_evt305w02_l2_returnvalue
end type

type gb_2 from w_evt305w01_l1_returnvalue`gb_2 within w_evt305w02_l2_returnvalue
end type

