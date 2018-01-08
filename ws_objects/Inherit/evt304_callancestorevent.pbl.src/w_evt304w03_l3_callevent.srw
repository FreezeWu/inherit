$PBExportHeader$w_evt304w03_l3_callevent.srw
forward
global type w_evt304w03_l3_callevent from w_evt304w02_l2_callevent
end type
end forward

global type w_evt304w03_l3_callevent from w_evt304w02_l2_callevent
end type
global w_evt304w03_l3_callevent w_evt304w03_l3_callevent

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
mle_describe.text += "Call Ancestor Event Thing~r~n"
mle_describe.text += "3.Operation Step : ~r~n" // Optional
mle_describe.text += "4.Object Declare : ~r~n" // Optional

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
lb_items.additem("EVT304W03P001: Call Interlayer Ancestore( { objectname` } ancestorclass ::Event );")
lb_items.additem("EVT304W03P002: Call Interlayer Ancestore( CALL ancestorobject {`controlname}::event );")
lb_items.additem("EVT304W03P003: Event Argument By Value And By Reference;")
lb_items.additem("EVT304W03P004: Call Ancestore Call Super Statement;")
lb_items.additem("EVT304W03P005: Argument Defualt Value When Call Super ;")

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
	Case 'EVT304W03P001'
		If ab_execute Then 
			//Call Interlayer Ancestore( { objectname` } ancestorclass ::Event )
			wf_output('Event Type:   Window', True)
			w_evt304w01_l1_callevent`w_evt304w01_l1_callevent::Event ue_event_1()
		Else
			wf_scriptview("//Call Interlayer Ancestore( { objectname` } ancestorclass ::Event ) ")
			wf_scriptview("wf_output('Event Type:   Window', True)                              ")
			wf_scriptview("w_evt304w01_l1_callevent`w_evt304w01_l1_callevent::Event ue_event_1()")
		End If
	Case 'EVT304W03P002'
		If ab_execute Then 
			//Call Interlayer Ancestore( CALL ancestorobject {`controlname}::eventname )
			wf_output('Event Type:   Window', True)
			Call w_evt304w01_l1_callevent`w_evt304w01_l1_callevent::ue_event_2
		Else
			wf_scriptview("//Call Interlayer Ancestore( CALL ancestorobject {`controlname}::eventname )")
			wf_scriptview("wf_output('Event Type:   Window', True)                                     ")
			wf_scriptview("Call w_evt304w01_l1_callevent`w_evt304w01_l1_callevent::ue_event_2          ")
		End If
	Case 'EVT304W03P003'
		If ab_execute Then 
			//Event Argument By Value And By Reference
			Integer	li_int1, li_int2
			li_int1 = 1
			li_int2 = 1
			wf_output('Event Type:   Window', True)
			w_evt304w01_l1_callevent`w_evt304w01_l1_callevent::Event ue_event_3(li_int1, li_int2)
			wf_output('Information:    li_int1 = ' + String(li_int1) + ', li_int2 = ' + String(li_int2), False)
		Else
			wf_scriptview("//Event Argument By Value And By Reference                                                                                          ")
			wf_scriptview("//Window Event w_evt304w01_l1_callevent.ue_event_3(ref integer ai_data1, integer ai_data2) Script                                   ")
			wf_scriptview("{                                                                                                                                   ")
			wf_scriptview("     wf_output('Information:   Call Window Event w_evt304W01_l1_callevent.ue_event_3(ref integer ai_data1 = ' + String(ai_data1) + &")
			wf_scriptview("                     ', integer ai_data2 = ' + String(ai_data2) + ')', False)                                                       ")
			wf_scriptview("     ai_data1 ++                                                                                                                    ")
			wf_scriptview("     ai_data2 ++                                                                                                                    ")
			wf_scriptview("}                                                                                                                                   ")
			wf_scriptview("Integer     li_int1, li_int2                                                                                                        ")
			wf_scriptview("li_int1 = 1                                                                                                                         ")
			wf_scriptview("li_int2 = 1                                                                                                                         ")
			wf_scriptview("wf_output('Event Type:   Window', True)                                                                                             ")
			wf_scriptview("w_evt304w01_l1_callevent`w_evt304w01_l1_callevent::Event ue_event_3(li_int1, li_int2)                                               ")
			wf_scriptview("wf_output('Information:    li_int1 = ' + String(li_int1) + ', li_int2 = ' + String(li_int2), False)                                 ")
		End If
	Case 'EVT304W03P004'
		If ab_execute Then 
			//Call Ancestore Call Super Statement
			wf_output('Event Type:   Window', True)
			Call Super::ue_event_4
		Else
			wf_scriptview("//Call Ancestore Call Super Statement                      ")
			wf_scriptview("//Window Event w_evt304w02_l2_callevent.ue_event_4() Script")
			wf_scriptview("{                                                          ")
			wf_scriptview("     Call Super:ue_event_4                                 ")
			wf_scriptview("}                                                          ")
			wf_scriptview("wf_output('Event Type:   Window', True)                    ")
			wf_scriptview("Call Super::ue_event_4                                     ")
		End If
	Case 'EVT304W03P005'
		If ab_execute Then 
			//Argument Defualt Value When Call Super
			wf_output('Event Type:   Window', True)
			Call Super::ue_event_5
		Else
			wf_scriptview("//Argument Defualt Value When Call Super")
			wf_scriptview("wf_output('Event Type:   Window', True) ")
			wf_scriptview("Call Super::ue_event_5                  ")
		End If
	Case Else
	 	MessageBox("Error","This Point Not Coding",Exclamation!)
End Choose

//BEGIN_SCRIPTEXE
if ab_Execute then wf_SaveTempResult(ai_Item)
//END_SCRIPTEXE
end subroutine

on w_evt304w03_l3_callevent.create
call super::create
end on

on w_evt304w03_l3_callevent.destroy
call super::destroy
end on

type cb_2 from w_evt304w02_l2_callevent`cb_2 within w_evt304w03_l3_callevent
end type

type cb_3 from w_evt304w02_l2_callevent`cb_3 within w_evt304w03_l3_callevent
end type

type cb_clear from w_evt304w02_l2_callevent`cb_clear within w_evt304w03_l3_callevent
end type

type cb_execute from w_evt304w02_l2_callevent`cb_execute within w_evt304w03_l3_callevent
end type

type cb_close from w_evt304w02_l2_callevent`cb_close within w_evt304w03_l3_callevent
end type

type mle_output from w_evt304w02_l2_callevent`mle_output within w_evt304w03_l3_callevent
end type

type mle_view from w_evt304w02_l2_callevent`mle_view within w_evt304w03_l3_callevent
end type

type lb_items from w_evt304w02_l2_callevent`lb_items within w_evt304w03_l3_callevent
end type

type gb_3 from w_evt304w02_l2_callevent`gb_3 within w_evt304w03_l3_callevent
end type

type gb_4 from w_evt304w02_l2_callevent`gb_4 within w_evt304w03_l3_callevent
end type

type gb_5 from w_evt304w02_l2_callevent`gb_5 within w_evt304w03_l3_callevent
end type

type mle_describe from w_evt304w02_l2_callevent`mle_describe within w_evt304w03_l3_callevent
end type

type gb_2 from w_evt304w02_l2_callevent`gb_2 within w_evt304w03_l3_callevent
end type

