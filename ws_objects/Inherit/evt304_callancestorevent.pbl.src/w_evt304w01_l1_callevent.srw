$PBExportHeader$w_evt304w01_l1_callevent.srw
forward
global type w_evt304w01_l1_callevent from window
end type
type cb_2 from commandbutton within w_evt304w01_l1_callevent
end type
type cb_3 from commandbutton within w_evt304w01_l1_callevent
end type
type cb_clear from commandbutton within w_evt304w01_l1_callevent
end type
type cb_execute from commandbutton within w_evt304w01_l1_callevent
end type
type cb_close from commandbutton within w_evt304w01_l1_callevent
end type
type mle_output from multilineedit within w_evt304w01_l1_callevent
end type
type mle_view from multilineedit within w_evt304w01_l1_callevent
end type
type lb_items from listbox within w_evt304w01_l1_callevent
end type
type gb_3 from groupbox within w_evt304w01_l1_callevent
end type
type gb_4 from groupbox within w_evt304w01_l1_callevent
end type
type gb_5 from groupbox within w_evt304w01_l1_callevent
end type
type mle_describe from multilineedit within w_evt304w01_l1_callevent
end type
type gb_2 from groupbox within w_evt304w01_l1_callevent
end type
type str_string from structure within w_evt304w01_l1_callevent
end type
end forward

type str_string from structure
	string		ss_str
end type

shared variables

end variables

global type w_evt304w01_l1_callevent from window
integer width = 4133
integer height = 2436
boolean titlebar = true
string title = "Call Ancestor Event Thing"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_event_1 ( )
event ue_event_2 ( )
event ue_event_3 ( ref integer ai_data1,  integer ai_data2 )
event ue_event_4 ( )
event ue_event_5 ( integer ai_data )
event ue_runall ( )
cb_2 cb_2
cb_3 cb_3
cb_clear cb_clear
cb_execute cb_execute
cb_close cb_close
mle_output mle_output
mle_view mle_view
lb_items lb_items
gb_3 gb_3
gb_4 gb_4
gb_5 gb_5
mle_describe mle_describe
gb_2 gb_2
end type
global w_evt304w01_l1_callevent w_evt304w01_l1_callevent

type variables
//OutPut Index 
Integer ii_index = 0

String	is_str = 'Init'

String	gs_pb, gs_js

//BEGIN_WININSVAR
long il_WindowID = -1
DataStore ids_TestPoint
DataStore ids_ResultDetailTemp
//END_WININSVAR
end variables

forward prototypes
public subroutine wf_describe ()
public subroutine wf_init_items ()
public subroutine wf_scriptview (string as_script)
public subroutine wf_output (string as_mess, boolean ab_clear)
public subroutine wf_scriptexe (integer ai_item, boolean ab_execute)
public function integer wf_createresultset ()
public function integer wf_savetempresult (long al_row)
end prototypes

event ue_event_1();wf_output('Information:   Call Window Event w_evt304W01_l1_callevent.ue_event_1()', False)

end event

event ue_event_2();wf_output('Information:   Call Window Event w_evt304W01_l1_callevent.ue_event_2()', False)

end event

event ue_event_3(ref integer ai_data1, integer ai_data2);wf_output('Information:   Call Window Event w_evt304W01_l1_callevent.ue_event_3(ref integer ai_data1 = ' + String(ai_data1) + &
			 ', integer ai_data2 = ' + String(ai_data2) + ')', False)
ai_data1 ++
ai_data2 ++


end event

event ue_event_4();wf_output('Information:   Call Window Event w_evt304W01_l1_callevent.ue_event_4()', False)

end event

event ue_event_5(integer ai_data);String	ls_data
If IsNull(ai_data) Then
	ls_data = 'Null'
Else
	ls_data = String(ai_data)
End If
wf_output('Information:   Call Window Event w_evt304W01_l1_callevent.ue_event_5(Integer ai_data = ' + ls_data + ')', False)

end event

event ue_runall ( );//start:event ue_runall ( )
integer i

for i = 1 to lb_items.TotalItems()
	 wf_ScriptExe(i, false)
	 wf_ScriptExe(i, true)	
next
//end:event ue_runall ( )
end event

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


end subroutine

public subroutine wf_scriptview (string as_script);//////////////////////////////////////////////////////////////////////
//Function: wf_scriptview  View a line Script
//Argument: String  as_mess a line Script
//Output:   none
//Designer:
//Date:
/////////////////////////////////////////////////////////////////////

mle_view.Text += as_script + "~r~n"

Return
end subroutine

public subroutine wf_output (string as_mess, boolean ab_clear);////////////////////////////////////////////////////////////////
//Function : Wf_OutPut
//Argument : String   as_mess;   The Message you will output 
//				 Boolean  ab_clear;  Clear Flag
//Output   : None
//Designer : 
//Date     :
////////////////////////////////////////////////////////////////

If ab_clear Then
	mle_output.Text = ""
	ii_index = 0
End IF	

ii_index = ii_index + 1
mle_output.Text += String(ii_index,'00')+". "+as_mess+"~r~n"
end subroutine

public subroutine wf_scriptexe (integer ai_item, boolean ab_execute);//////////////////////////////////////////////////////////////////////
//Function: wf_Script  View and Execute Script
//Argument: Int ai_item: SelectedItem;
//          Boolean ab_execute: Execute or View Flag
//Output:   none
//Designer:
//Date:
/////////////////////////////////////////////////////////////////////




end subroutine

public function integer wf_createresultset ();//start:public function integer wf_createresultset ()
string ls_Syntax
string ls_ErrorMesg
string ls_SQLSelect
string ls_WinName

// Not connected TQMS DB
if not gb_COTDBConnected then Return -1

// Refresh data
if IsValid(ids_TestPoint) then
	ids_TestPoint.Retrieve()
	ids_ResultDetailTemp.Retrieve()
	Return 1
end if

// Get WindowID
if il_WindowID=-1 then
	ls_WinName = Lower(this.ClassName())
	SELECT WindowId INTO :il_WindowID FROM TestWindow WHERE SwName = :ls_WinName using gtr_COTDB;
	if gtr_COTDB.SQLCode<>0 or gtr_COTDB.SQLNRows<>1 then Return -1
end if

// TestPoint
ls_WinName = Lower(this.ClassName())
ls_SQLSelect =	"SELECT TestPointId = TestPoint.TestPointId, TPNO = TestPoint.TPNO, ExpectValue = TestPoint.ExpectValue " + &
					"FROM   TestPoint, TestWindow " + &
					"WHERE  ( TestPoint.WindowId = TestWindow.WindowId ) AND ( TestPoint.is_valid = '1' ) AND " + &
				 			 "( Lower(TestWindow.SwName) = '" + ls_WinName + "')"
ls_Syntax = gtr_COTDB.SyntaxFromSQL(ls_SQLSelect, "", ls_ErrorMesg)
if Len(ls_ErrorMesg)>0 then Return -1
ids_TestPoint = Create DataStore
ids_TestPoint.Create(ls_Syntax)
ids_TestPoint.SetTransObject(gtr_COTDB)
ids_TestPoint.Retrieve()
ids_TestPoint.SetSort("TPNO A")
ids_TestPoint.Sort()

// ResultDetailTemp
ls_SQLSelect = "SELECT * FROM ResultDetailTemp WHERE " + &
					"version = " + String(gi_COTVersion) + " AND " + &
					"Envi = '" + gs_COTEnvironment + "' AND " + &
					"WindowID = " + String(il_WindowID)
ls_Syntax = gtr_COTDB.SyntaxFromSQL(ls_SQLSelect, "", ls_ErrorMesg)
if Len(ls_ErrorMesg)>0 then
	Destroy ids_TestPoint
	Return -1
end if
ids_ResultDetailTemp = Create DataStore
ids_ResultDetailTemp.Create(ls_Syntax)
ids_ResultDetailTemp.SetTransObject(gtr_COTDB)
ids_ResultDetailTemp.Retrieve()

Return 1
//end:public function integer wf_createresultset ()
end function

public function integer wf_savetempresult (long al_row);//start:public function integer wf_savetempresult (long al_row)
long   ll_FindRow
long   ll_InsertRow
long   ll_TestpointId
string ls_ExpectValue
string ls_TrueValue
string ls_WinName
DateTime ldt_SaveTime

// Not connected TQMS DB
if not gb_COTDBConnected then Return -1

// Check WindowID
if il_WindowID=-1 then Return -1

// Save temp result
SELECT GetDate() INTO :ldt_SaveTime FROM sysdual using gtr_COTDB;
ll_TestpointId = ids_TestPoint.GetItemNumber(al_Row, "TestpointId")
ls_ExpectValue = ids_TestPoint.GetItemString(al_Row, "ExpectValue")
if IsNull(ls_ExpectValue) then ls_ExpectValue = ""

ll_FindRow = ids_ResultDetailTemp.Find("TestpointId=" + String(ll_TestpointId),1,ids_ResultDetailTemp.RowCount())
if ll_FindRow<=0 then
	ll_InsertRow = ids_ResultDetailTemp.InsertRow(0)
	ids_ResultDetailTemp.SetItem(ll_InsertRow, "TestpointId", ll_TestpointId)
	ids_ResultDetailTemp.SetItem(ll_InsertRow, "Envi", gs_COTEnvironment)
	ids_ResultDetailTemp.SetItem(ll_InsertRow, "version", gi_COTVersion)
	ids_ResultDetailTemp.SetItem(ll_InsertRow, "WindowID", il_WindowID)	
	ll_FindRow = ll_InsertRow
end if

ls_TrueValue = mle_output.Text
ids_ResultDetailTemp.SetItem(ll_FindRow, "TrueValue", ls_TrueValue)
ids_ResultDetailTemp.SetItem(ll_FindRow, "ExpectValue", ls_ExpectValue)
ids_ResultDetailTemp.SetItem(ll_FindRow, "SaveTime", ldt_SaveTime)
if ls_TrueValue=ls_ExpectValue then	
	ids_ResultDetailTemp.SetItem(ll_FindRow, "status", "1")
else
	ids_ResultDetailTemp.SetItem(ll_FindRow, "status", "0")
end if

if ids_ResultDetailTemp.Update()=1 then
	Commit using gtr_COTDB;
	if not gb_COTAutoRun and IsValid(w_pbvsjs) then
		w_pbvsjs.wf_Retrieve(this.ClassName())
		w_pbvsjs.dw_result.ScrollToRow(al_Row)
		w_pbvsjs.dw_result.SelectRow(0, false)
		w_pbvsjs.dw_result.SelectRow(al_Row, true)
	end if	
	Return 1
else
	Rollback using gtr_COTDB;
	ids_ResultDetailTemp.ResetUpdate()
	Return -1
end if
//end:public function integer wf_savetempresult (long al_row)
end function

on w_evt304w01_l1_callevent.create
this.cb_2=create cb_2
this.cb_3=create cb_3
this.cb_clear=create cb_clear
this.cb_execute=create cb_execute
this.cb_close=create cb_close
this.mle_output=create mle_output
this.mle_view=create mle_view
this.lb_items=create lb_items
this.gb_3=create gb_3
this.gb_4=create gb_4
this.gb_5=create gb_5
this.mle_describe=create mle_describe
this.gb_2=create gb_2
this.Control[]={this.cb_2,&
this.cb_3,&
this.cb_clear,&
this.cb_execute,&
this.cb_close,&
this.mle_output,&
this.mle_view,&
this.lb_items,&
this.gb_3,&
this.gb_4,&
this.gb_5,&
this.mle_describe,&
this.gb_2}
end on

on w_evt304w01_l1_callevent.destroy
destroy(this.cb_2)
destroy(this.cb_3)
destroy(this.cb_clear)
destroy(this.cb_execute)
destroy(this.cb_close)
destroy(this.mle_output)
destroy(this.mle_view)
destroy(this.lb_items)
destroy(this.gb_3)
destroy(this.gb_4)
destroy(this.gb_5)
destroy(this.mle_describe)
destroy(this.gb_2)
end on

event close;
//start:event close
if IsValid(ids_TestPoint) then Destroy ids_TestPoint
if IsValid(ids_ResultDetailTemp) then Destroy ids_ResultDetailTemp
//end:event close
end event

event open;//Add Describe
Wf_Describe()
//Init ListBox to add Test Items
Wf_Init_Items()



//start:event open
wf_CreateResultSet()
//end:event open
end event

type cb_2 from commandbutton within w_evt304w01_l1_callevent
integer x = 32
integer y = 2092
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Auto Run"
end type

event clicked;Parent.TriggerEvent("ue_RunAll")
end event

type cb_3 from commandbutton within w_evt304w01_l1_callevent
integer x = 453
integer y = 2092
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "View Result"
end type

event clicked;if gb_COTDBConnected then
	gw_COTCurrentWin = Parent
	if not IsValid(w_pbvsjs) then Open(w_pbvsjs)
	w_pbvsjs.wf_Retrieve(Parent.ClassName())
else
	this.Enabled = false
end if
end event

type cb_clear from commandbutton within w_evt304w01_l1_callevent
integer x = 3145
integer y = 2080
integer width = 448
integer height = 128
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Clear"
end type

event clicked;ii_index = 0
mle_output.text=''
end event

type cb_execute from commandbutton within w_evt304w01_l1_callevent
integer x = 2674
integer y = 2080
integer width = 448
integer height = 128
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Execute"
end type

event clicked;
IF not lb_items.selectedindex() > 0 THEN
	MessageBox("Warning","Please select a test item")
	return 
END IF

wf_Scriptexe(lb_items.selectedindex(),True)
end event

type cb_close from commandbutton within w_evt304w01_l1_callevent
integer x = 3616
integer y = 2080
integer width = 448
integer height = 128
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Close"
end type

event clicked;close(parent)
end event

type mle_output from multilineedit within w_evt304w01_l1_callevent
integer x = 64
integer y = 1640
integer width = 3959
integer height = 352
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean autohscroll = true
boolean autovscroll = true
borderstyle borderstyle = stylelowered!
end type

type mle_view from multilineedit within w_evt304w01_l1_callevent
integer x = 1888
integer y = 740
integer width = 2139
integer height = 792
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean autohscroll = true
boolean autovscroll = true
borderstyle borderstyle = stylelowered!
end type

type lb_items from listbox within w_evt304w01_l1_callevent
integer x = 73
integer y = 740
integer width = 1696
integer height = 792
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean sorted = false
borderstyle borderstyle = stylelowered!
end type

event selectionchanged;//View Script
IF index > 0 THEN
	mle_view.text = ''
	wf_Scriptexe(lb_items.selectedindex(),False)
END IF
end event

event doubleclicked;//Execute Script
IF index > 0 THEN
	wf_Scriptexe(lb_items.selectedindex(),True)
END IF
end event

type gb_3 from groupbox within w_evt304w01_l1_callevent
integer x = 27
integer y = 668
integer width = 1778
integer height = 888
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Test Items"
end type

type gb_4 from groupbox within w_evt304w01_l1_callevent
integer x = 1847
integer y = 668
integer width = 2208
integer height = 888
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Script View"
end type

type gb_5 from groupbox within w_evt304w01_l1_callevent
integer x = 27
integer y = 1560
integer width = 4032
integer height = 464
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "OutPut"
end type

type mle_describe from multilineedit within w_evt304w01_l1_callevent
integer x = 73
integer y = 96
integer width = 3950
integer height = 524
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean autohscroll = true
boolean autovscroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_2 from groupbox within w_evt304w01_l1_callevent
integer x = 27
integer y = 20
integer width = 4032
integer height = 632
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Description"
end type

