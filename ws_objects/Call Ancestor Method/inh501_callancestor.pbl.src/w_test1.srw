$PBExportHeader$w_test1.srw
forward
global type w_test1 from window
end type
type cb_1 from commandbutton within w_test1
end type
end forward

global type w_test1 from window
integer width = 3566
integer height = 1648
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_1 cb_1
end type
global w_test1 w_test1

on w_test1.create
this.cb_1=create cb_1
this.Control[]={this.cb_1}
end on

on w_test1.destroy
destroy(this.cb_1)
end on

type cb_1 from commandbutton within w_test1
integer x = 1179
integer y = 644
integer width = 457
integer height = 128
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "test1"
end type

