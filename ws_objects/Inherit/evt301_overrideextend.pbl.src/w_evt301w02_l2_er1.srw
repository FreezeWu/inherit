﻿$PBExportHeader$w_evt301w02_l2_er1.srw
forward
global type w_evt301w02_l2_er1 from w_evt301w01_l1_er1
end type
end forward

global type w_evt301w02_l2_er1 from w_evt301w01_l1_er1
end type
global w_evt301w02_l2_er1 w_evt301w02_l2_er1

on w_evt301w02_l2_er1.create
call super::create
end on

on w_evt301w02_l2_er1.destroy
call super::destroy
end on

event ue_event_e1r23;wf_output('Information:   Call Window Event w_evt301W02_l2_er1.ue_event_e1r23()', False)

end event

event ue_event_e1r2;wf_output('Information:   Call Window Event w_evt301W02_l2_er1.ue_event_e1r2()', False)

end event

event ue_event_e13r2;wf_output('Information:   Call Window Event w_evt301W02_l2_er1.ue_event_e13r2()', False)

end event

event ue_event_e12r3;call super::ue_event_e12r3;wf_output('Information:   Call Window Event w_evt301W02_l2_er1.ue_event_e12r3()', False)
end event

event ue_event_e12;call super::ue_event_e12;wf_output('Information:   Call Window Event w_evt301W02_l2_er1.ue_event_e12()', False)

end event

event ue_event_e123;call super::ue_event_e123;wf_output('Information:   Call Window Event w_evt301W02_l2_er1.ue_event_e123()', False)

end event

type cb_clear from w_evt301w01_l1_er1`cb_clear within w_evt301w02_l2_er1
end type

type cb_execute from w_evt301w01_l1_er1`cb_execute within w_evt301w02_l2_er1
end type

type cb_close from w_evt301w01_l1_er1`cb_close within w_evt301w02_l2_er1
end type

type mle_output from w_evt301w01_l1_er1`mle_output within w_evt301w02_l2_er1
end type

type mle_view from w_evt301w01_l1_er1`mle_view within w_evt301w02_l2_er1
end type

type lb_items from w_evt301w01_l1_er1`lb_items within w_evt301w02_l2_er1
end type

type gb_3 from w_evt301w01_l1_er1`gb_3 within w_evt301w02_l2_er1
end type

type gb_4 from w_evt301w01_l1_er1`gb_4 within w_evt301w02_l2_er1
end type

type gb_5 from w_evt301w01_l1_er1`gb_5 within w_evt301w02_l2_er1
end type

type mle_describe from w_evt301w01_l1_er1`mle_describe within w_evt301w02_l2_er1
end type

type gb_2 from w_evt301w01_l1_er1`gb_2 within w_evt301w02_l2_er1
end type

