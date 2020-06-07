with PolyORB_HI_Generated.Deployment;
with PolyORB_HI_Generated.Types;
with PolyORB_HI_Generated.Subprograms;
package Surveillance is

   use PolyORB_HI_Generated.Deployment;
   use PolyORB_HI_Generated.Types;

	procedure Rfid(Status : in out PolyORB_HI_Generated.Subprograms.event_handlers_rfid_handler_Status);

	procedure Detector1(Status : in out PolyORB_HI_Generated.Subprograms.event_handlers_detection_handler_Status);

	procedure Detector2(Status : in out PolyORB_HI_Generated.Subprograms.event_handlers_detection_handler1_Status);

	procedure Detector3(Status : in out PolyORB_HI_Generated.Subprograms.event_handlers_detection_handler2_Status);

  procedure Alarm(det1 : PolyORB_HI_Generated.Types.Integer_Type;
    det2 : PolyORB_HI_Generated.Types.Integer_Type;
    det3 : PolyORB_HI_Generated.Types.Integer_Type;
    rfid : PolyORB_HI_Generated.Types.Integer_Type;
    Status : in out PolyORB_HI_Generated.Subprograms.event_handlers_alarm_activator_Status);

end Surveillance;
