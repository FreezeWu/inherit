$PBExportHeader$w_evt302w03_l3_er1.srw
forward
global type w_evt302w03_l3_er1 from w_evt302w02_l2_er1
end type
end forward

global type w_evt302w03_l3_er1 from w_evt302w02_l2_er1
end type
global w_evt302w03_l3_er1 w_evt302w03_l3_er1

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
mle_describe.text += "OverLoad And Override Event 2~r~n"
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
lb_items.additem("EVT302W03P001: 1th Uncode,2th Code Override,3th Code Override;")
lb_items.additem("EVT302W03P002: 1th Uncode,2th Code Override,3th Uncode Extend;")
lb_items.additem("EVT302W03P003: 1th Uncode,2th Code Override,3th Code Extend;")
lb_items.additem("EVT302W03P004: 1th Uncode,2th Uncode Extend,3th Code Override;")
lb_items.additem("EVT302W03P005: 1th Uncode,2th Uncode Extend,3th Code Extend;")
lb_items.additem("EVT302W03P006: 1th Uncode,2th Code Extend,3th Code Override;")
lb_items.additem("EVT302W03P007: 1th Uncode,2th Code Extend,3th Uncode Extend;")
lb_items.additem("EVT302W03P008: 1th Uncode,2th Code Extend,3th Code Extend;")

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
	Case 'EVT302W03P001'
		If ab_execute Then 
			//1th Uncode,2th Code Override,3th Code Override
			wf_output('Event Type:   Window', True)
			Event ue_event_r23()			
		Else
			wf_scriptview("//1th Uncode,2th Code Override,3th Code Override")
			wf_scriptview("wf_output('Event Type:   Window', True)         ")
			wf_scriptview("Event ue_event_r23()                            ")
		End If
	Case 'EVT302W03P002'
		If ab_execute Then 
			//1th Uncode,2th Code Override,3th Uncode Extend
			wf_output('Event Type:   Window', True)
			Event ue_event_r2()
		Else
			wf_scriptview("//1th Uncode,2th Code Override,3th Uncode Extend")
			wf_scriptview("wf_output('Event Type:   Window', True)         ")
			wf_scriptview("Event ue_event_r2()                             ")
		End If
	Case 'EVT302W03P003'
		If ab_execute Then 
			//1th Uncode,2th Code Override,3th Code Extend
			wf_output('Event Type:   Window', True)
			Event ue_event_e3r2()			
		Else
			wf_scriptview("//1th Uncode,2th Code Override,3th Code Extend")
			wf_scriptview("wf_output('Event Type:   Window', True)       ")
			wf_scriptview("Event ue_event_e3r2()                         ")
		End If
	Case 'EVT302W03P004'
		If ab_execute Then 
			//1th Uncode,2th Uncode Extend,3th Code Override
			wf_output('Event Type:   Window', True)
			Event ue_event_r3()			
		Else
			wf_scriptview("//1th Uncode,2th Uncode Extend,3th Code Override")
			wf_scriptview("wf_output('Event Type:   Window', True)         ")
			wf_scriptview("Event ue_event_r3()                             ")
		End If
	Case 'EVT302W03P005'
		If ab_execute Then 
			//1th Uncode,2th Uncode Extend,3th Code Extend
			wf_output('Event Type:   Window', True)
			Event ue_event_e3()			
		Else
			wf_scriptview("//1th Uncode,2th Uncode Extend,3th Code Extend")
			wf_scriptview("wf_output('Event Type:   Window', True)       ")
			wf_scriptview("Event ue_event_e3()                           ")
		End If
	Case 'EVT302W03P006'
		If ab_execute Then 
			//1th Uncode,2th Code Extend,3th Code Override
			wf_output('Event Type:   Window', True)
			Event ue_event_e2r3()			
		Else
			wf_scriptview("//1th Uncode,2th Code Extend,3th Code Override")
			wf_scriptview("wf_output('Event Type:   Window', True)       ")
			wf_scriptview("Event ue_event_e2r3()                         ")
		End If
	Case 'EVT302W03P007'
		If ab_execute Then 
			//1th Uncode,2th Code Extend,3th Uncode Extend
			wf_output('Event Type:   Window', True)
			Event ue_event_e2()			
		Else
			wf_scriptview("//1th Uncode,2th Code Extend,3th Uncode Extend")
			wf_scriptview("wf_output('Event Type:   Window', True)       ")
			wf_scriptview("Event ue_event_e2()                           ")
		End If
	Case 'EVT302W03P008'
		If ab_execute Then 
			//1th Uncode,2th Code Extend,3th Code Extend
			wf_output('Event Type:   Window', True)
			Event ue_event_e23()
		Else
			wf_scriptview("//1th Uncode,2th Code Extend,3th Code Extend")
			wf_scriptview("wf_output('Event Type:   Window', True)     ")
			wf_scriptview("Event ue_event_e23()                        ")
		End If
	Case Else
	 	MessageBox("Error","This Point Not Coding",Exclamation!)
End Choose

//BEGIN_SCRIPTEXE
if ab_Execute then wf_SaveTempResult(ai_Item)
//END_SCRIPTEXE
end subroutine

on w_evt302w03_l3_er1.create
call super::create
end on

on w_evt302w03_l3_er1.destroy
call super::destroy
end on

event ue_event_r23;wf_output('Information:   Call Window Event w_evt302W03_l3_er1.ue_event_r23()', False)

end event

event ue_event_e3r2;call super::ue_event_e3r2;wf_output('Information:   Call Window Event w_evt302W03_l3_er1.ue_event_e3r2()', False)

end event

event ue_event_r3;wf_output('Information:   Call Window Event w_evt302W03_l3_er1.ue_event_r3()', False)

end event

event ue_event_e3;call super::ue_event_e3;wf_output('Information:   Call Window Event w_evt302W03_l3_er1.ue_event_e3()', False)

end event

event ue_event_e2r3;wf_output('Information:   Call Window Event w_evt302W03_l3_er1.ue_event_e2r3()', False)

end event

event ue_event_e23;call super::ue_event_e23;wf_output('Information:   Call Window Event w_evt302W03_l3_er1.ue_event_e23()', False)

end event

type cb_2 from w_evt302w02_l2_er1`cb_2 within w_evt302w03_l3_er1
end type

type cb_3 from w_evt302w02_l2_er1`cb_3 within w_evt302w03_l3_er1
end type

type cb_clear from w_evt302w02_l2_er1`cb_clear within w_evt302w03_l3_er1
end type

type cb_execute from w_evt302w02_l2_er1`cb_execute within w_evt302w03_l3_er1
end type

type cb_close from w_evt302w02_l2_er1`cb_close within w_evt302w03_l3_er1
end type

type mle_output from w_evt302w02_l2_er1`mle_output within w_evt302w03_l3_er1
end type

type mle_view from w_evt302w02_l2_er1`mle_view within w_evt302w03_l3_er1
end type

type lb_items from w_evt302w02_l2_er1`lb_items within w_evt302w03_l3_er1
end type

type gb_3 from w_evt302w02_l2_er1`gb_3 within w_evt302w03_l3_er1
end type

type gb_4 from w_evt302w02_l2_er1`gb_4 within w_evt302w03_l3_er1
end type

type gb_5 from w_evt302w02_l2_er1`gb_5 within w_evt302w03_l3_er1
end type

type mle_describe from w_evt302w02_l2_er1`mle_describe within w_evt302w03_l3_er1
end type

type gb_2 from w_evt302w02_l2_er1`gb_2 within w_evt302w03_l3_er1
end type

