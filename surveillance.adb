with PolyORB_HI.Output;
with PolyORB_HI_Generated.Subprograms;
with Ada.Numerics.discrete_Random;
with Ada.Text_IO;
with ADA.Calendar; use ADA.Calendar;
package body Surveillance is
  use PolyORB_HI.Output;
	use PolyORB_HI_Generated.Subprograms;

  Rfid_State : Integer_Type := 0;
  Det1 : Integer_Type := 0;
  Det2 : Integer_Type := 0;
  Det3 : Integer_Type := 0;
  Alarm_State : Integer_Type := 0;
  Last : Integer;
  S: String(1..1) := (others=>' ');

procedure Rfid(Status : in out PolyORB_HI_Generated.Subprograms.event_handlers_rfid_handler_Status)
is
  Next : Time := Clock;
begin
  Next := Next + 0.3;
  select
  delay until Next;
    Ada.Text_IO.get_line(S,Last);
    if S = "A" then
      Put_Line ("RFID authorized access");
      Rfid_State := 1;
      Put_Value(Status, (Data_Source,1));
    elsif S = "U" then
      Put_Line ("RFID unauthorized access");
      Rfid_State := 0;
      Put_Value(Status, (Data_Source,0));
    end if;
  then abort
    if S = "A" then
      Put_Line ("RFID authorized access");
      Rfid_State := 1;
      Put_Value(Status, (Data_Source,1));
    elsif S = "U" then
      Put_Line ("RFID unauthorized access");
      Rfid_State := 0;
      Put_Value(Status, (Data_Source,0));
    else
      Put_Value(Status, (Data_Source,Rfid_State));
    end if;

  end select;
end Rfid;

procedure Detector1(Status : in out PolyORB_HI_Generated.Subprograms.event_handlers_detection_handler_Status)
is
  Next : Time := Clock;
begin
  if S = "1" then
    Put_Line("Detector 1 working - nothing detected");
    Det1 := 0;
    Put_Value(Status, (Data_Source,0));
  elsif S = "2" then
    Put_Line("Detector 1 working - movement detected");
    Det1 := 1;
    Put_Value(Status, (Data_Source,1));
  else
    Put_Value(Status, (Data_Source,Det1));
  end if;
end Detector1;


procedure Detector2(Status : in out PolyORB_HI_Generated.Subprograms.event_handlers_detection_handler1_Status)
is
  Next : Time := Clock;
begin
  if S = "3" then
    Put_Line("Detector 2 working - nothing detected");
    Det2 := 0;
    Put_Value(Status, (Data_Source,0));
  elsif S = "4" then
    Put_Line("Detector 2 working - movement detected");
    Det2 := 1;
    Put_Value(Status, (Data_Source,1));
  else
    Put_Value(Status, (Data_Source,Det2));
  end if;
end Detector2;


procedure Detector3(Status : in out PolyORB_HI_Generated.Subprograms.event_handlers_detection_handler2_Status)
is
  Next : Time := Clock;
begin
  Ada.Text_IO.get_line(S,Last);
  if S = "5" then
    Put_Line("Detector 3 working - nothing detected");
    Det3 := 0;
    Put_Value(Status, (Data_Source,0));
  elsif S = "6" then
    Put_Line("Detector 3 working - movement detected");
    Det3 := 1;
    Put_Value(Status, (Data_Source,1));
  else
    Put_Value(Status, (Data_Source,Det3));
  end if;
end Detector3;

procedure Alarm(det1 : PolyORB_HI_Generated.Types.Integer_Type;
  det2 : PolyORB_HI_Generated.Types.Integer_Type;
  det3 : PolyORB_HI_Generated.Types.Integer_Type;
  rfid : PolyORB_HI_Generated.Types.Integer_Type;
  Status : in out PolyORB_HI_Generated.Subprograms.event_handlers_alarm_activator_Status)
is
begin
  Put_Line("Rfid_State" & rfid'Image);
  Put_Line("Det1_State" & det1'Image);
  Put_Line("Det2_State" & det2'Image);
  Put_Line("Det3_State" & det3'Image);
  if rfid = 0 and (det1 = 1 or det2 = 1 or det3 = 1) then
    Put_Line("Alarm raising - start record");
    Put_Value(Status, (Port => result));
  else
    Put_Line("Alarm not starting");
  end if;
end Alarm;

end Surveillance;
