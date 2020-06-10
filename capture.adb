with PolyORB_HI.Output;
with PolyORB_HI_Generated.Subprograms;
package body Capture is
  use PolyORB_HI.Output;
	use PolyORB_HI_Generated.Subprograms;


procedure Captor(det1 : PolyORB_HI_Generated.Types.camera_image;
 det2 : PolyORB_HI_Generated.Types.camera_image;
 det3 : PolyORB_HI_Generated.Types.camera_image;
 data_sink : PolyORB_HI_Generated.Types.Integer_Type;
 Status : in out PolyORB_HI_Generated.Subprograms.event_handlers_video_captor_handler_Status)
is
begin
  if data_sink = 1 then
    Put_Line("Got alarm signal, recording");
  end if;
end Captor;
end Capture;
