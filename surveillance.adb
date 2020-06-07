with PolyORB_HI.Output;
with PolyORB_HI_Generated.Subprograms;
with Ada.Numerics.discrete_Random;
package body Surveillance is
  type randRange is range 1..20;
  use PolyORB_HI.Output;
	use PolyORB_HI_Generated.Subprograms;
  Seed : Integer_Type := 0;
  Door : Integer_Type := 0;
  Motion : Integer_Type := 0;

  package Rand_Int is new ada.numerics.discrete_random(randRange);
  use Rand_Int;
  Gen : Generator;
  num : randRange;
   procedure Rfid(Status : in out PolyORB_HI_Generated.Subprograms.event_handlers_rfid_handler_Status)
   is
   begin
     reset(Gen);
     num := random(Gen);
      Seed := Seed +  Integer_Type'Value(randRange'Image(num));

      if Seed mod 3 = 0 then
         Put_Line ("RFID authorized access");
         Put_Value(Status, (Data_Source,1));
      else
         Put_Line ("RFID unauthorized access");
         Put_Value(Status, (Data_Source,0));
      end if;

end Rfid;

	procedure Detector1(Status : in out PolyORB_HI_Generated.Subprograms.event_handlers_detection_handler_Status)
  is
  begin
    reset(Gen);
    num := random(Gen);
    Door := Integer_Type'Value(randRange'Image(num));
    Motion := Integer_Type'Value(randRange'Image(num));
    if Motion > 10 and Door > 10 then
      Put_Line("Detector 1 working - nothing detected");
	    Put_Value(Status, (Data_Source,0));
    else
      Put_Line("Detector 1 working - movement detected");
      Put_Value(Status, (Data_Source,1));
    end if;
end Detector1;


	procedure Detector2(Status : in out PolyORB_HI_Generated.Subprograms.event_handlers_detection_handler1_Status)
  is
  begin
    reset(Gen);
    num := random(Gen);
    Door := Integer_Type'Value(randRange'Image(num));
    Motion := Integer_Type'Value(randRange'Image(num));
    if Motion > 10 and Door > 10 then
      Put_Line("Detector 2 working - nothing detected");
	    Put_Value(Status, (Data_Source,0));
    else
      Put_Line("Detector 2 working - movement detected");
      Put_Value(Status, (Data_Source,1));
    end if;
  end Detector2;



	procedure Detector3(Status : in out PolyORB_HI_Generated.Subprograms.event_handlers_detection_handler2_Status)
  is
  begin
    reset(Gen);
    num := random(Gen);
    Door := Integer_Type'Value(randRange'Image(num));
    Motion := Integer_Type'Value(randRange'Image(num));
    if Motion > 10 and Door > 10 then
      Put_Line("Detector 3 working - nothing detected");
	    Put_Value(Status, (Data_Source,0));
    else
      Put_Line("Detector 3 working - movement detected");
      Put_Value(Status, (Data_Source,1));
    end if;
  end Detector3;

  procedure Alarm(det1 : PolyORB_HI_Generated.Types.Integer_Type;
    det2 : PolyORB_HI_Generated.Types.Integer_Type;
    det3 : PolyORB_HI_Generated.Types.Integer_Type;
    rfid : PolyORB_HI_Generated.Types.Integer_Type;
    Status : in out PolyORB_HI_Generated.Subprograms.event_handlers_alarm_activator_Status)
  is
  begin
    if rfid = 0 and (det1 = 1 or det2 = 1 or det3 = 1) then
        Put_Line("Alarm raising - start record");
        Put_Value(Status, (Port => result));
    else
        Put_Line("Alarm not starting");
    end if;
  end;

end Surveillance;
