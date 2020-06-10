with PolyORB_HI_Generated.Deployment;
with PolyORB_HI_Generated.Types;
with PolyORB_HI_Generated.Subprograms;
package Capture is

     use PolyORB_HI_Generated.Deployment;
     use PolyORB_HI_Generated.Types;

    procedure Captor(det1 : PolyORB_HI_Generated.Types.camera_image;
     det2 : PolyORB_HI_Generated.Types.camera_image;
     det3 : PolyORB_HI_Generated.Types.camera_image;
     data_sink : PolyORB_HI_Generated.Types.Integer_Type;
     Status : in out PolyORB_HI_Generated.Subprograms.event_handlers_video_captor_handler_Status);
end Capture;
