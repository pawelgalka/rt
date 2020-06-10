--------------------------------------------------------
--  This file was automatically generated by Ocarina  --
--  Do NOT hand-modify this file, as your             --
--  changes will be lost when you re-run Ocarina      --
--------------------------------------------------------
pragma Style_Checks
 ("NM32766");


package PolyORB_HI_Generated.Deployment is

  pragma Preelaborate;

  --  For each node in the distributed application add an enumerator

  type Node_Type is
   (main_K,
    video_K);

  --  Representation clause to have consistent positions for enumerators

  for Node_Type use
   (main_K =>
     1,
    video_K =>
     2);

  --  Size of Node_Type fixed to 8 bits

  for Node_Type'Size use 8;

  Max_Node_Image_Size : constant Standard.Integer :=
   7;

  --  Maximal Node_Image size for this node

  --  Node Image

  subtype UT_Deployment_Main_Node_Type_Range is
   Node_Type range Node_Type'First .. Node_Type'Last;

  subtype UT_Deployment_Main_1_Max_Node_Image_Size is
   Integer range 1 .. Max_Node_Image_Size;

  subtype UT_Deployment_Main_Node_Image_Component is
   Standard.String
     (UT_Deployment_Main_1_Max_Node_Image_Size);

  type UT_Deployment_Main_Node_Image_Array is
   array (UT_Deployment_Main_Node_Type_Range)
     of UT_Deployment_Main_Node_Image_Component;

  Node_Image : constant UT_Deployment_Main_Node_Image_Array :=
   UT_Deployment_Main_Node_Image_Array'
     (main_K =>
       "main_K ",
      video_K =>
       "video_K");

  My_Node : constant Node_Type :=
   main_K;

  --  For each thread in the distributed application nodes, add an enumerator

  type Entity_Type is
   (main_alarm_K,
    main_detector1_K,
    main_detector2_K,
    main_detector3_K,
    main_rfid_reader_K,
    video_video_captor_t_K,
    video_video_sender_t_K);

  --  Representation clause to have consistent positions for enumerators

  for Entity_Type use
   (main_alarm_K =>
     1,
    main_detector1_K =>
     2,
    main_detector2_K =>
     3,
    main_detector3_K =>
     4,
    main_rfid_reader_K =>
     5,
    video_video_captor_t_K =>
     6,
    video_video_sender_t_K =>
     7);

  --  Size of Entity_Type fixed to 8 bits

  for Entity_Type'Size use 8;

  --  Entity Table

  subtype UT_Deployment_Main_Entity_Type_Range is
   Entity_Type range Entity_Type'First .. Entity_Type'Last;

  type UT_Deployment_Main_Entity_Table_Array is
   array (UT_Deployment_Main_Entity_Type_Range)
     of Node_Type;

  Entity_Table : constant UT_Deployment_Main_Entity_Table_Array :=
   UT_Deployment_Main_Entity_Table_Array'
     (main_alarm_K =>
       main_K,
      main_detector1_K =>
       main_K,
      main_detector2_K =>
       main_K,
      main_detector3_K =>
       main_K,
      main_rfid_reader_K =>
       main_K,
      video_video_captor_t_K =>
       video_K,
      video_video_sender_t_K =>
       video_K);

  Max_Entity_Image_Size : constant Standard.Integer :=
   22;

  --  Maximal Entity_Image size for this node

  --  Entity Image

  subtype UT_Deployment_Main_1_Max_Entity_Image_Size is
   Integer range 1 .. Max_Entity_Image_Size;

  subtype UT_Deployment_Main_Entity_Image_Component is
   Standard.String
     (UT_Deployment_Main_1_Max_Entity_Image_Size);

  type UT_Deployment_Main_Entity_Image_Array is
   array (UT_Deployment_Main_Entity_Type_Range)
     of UT_Deployment_Main_Entity_Image_Component;

  Entity_Image : constant UT_Deployment_Main_Entity_Image_Array :=
   UT_Deployment_Main_Entity_Image_Array'
     (main_alarm_K =>
       "main_alarm_K          ",
      main_detector1_K =>
       "main_detector1_K      ",
      main_detector2_K =>
       "main_detector2_K      ",
      main_detector3_K =>
       "main_detector3_K      ",
      main_rfid_reader_K =>
       "main_rfid_reader_K    ",
      video_video_captor_t_K =>
       "video_video_captor_t_K",
      video_video_sender_t_K =>
       "video_video_sender_t_K");

  --  For each thread port in the distributed application nodes, add an 
  --  enumerator

  type Port_Type is
   (main_alarm_detected_K,
    main_alarm_decision_K,
    main_alarm_decision1_K,
    main_alarm_decision2_K,
    main_alarm_decision3_K,
    main_detector1_motion_K,
    main_detector1_door_K,
    main_detector1_decision_K,
    main_detector2_motion_K,
    main_detector2_door_K,
    main_detector2_decision_K,
    main_detector3_motion_K,
    main_detector3_door_K,
    main_detector3_decision_K,
    main_rfid_reader_rfid_read_K,
    main_rfid_reader_door_K,
    main_rfid_reader_motion_K,
    main_rfid_reader_decision_K,
    video_video_captor_t_camera1_capture_K,
    video_video_captor_t_camera2_capture_K,
    video_video_captor_t_camera3_capture_K,
    video_video_captor_t_start_K,
    video_video_captor_t_output_converted_K,
    video_video_sender_t_message_K);

  --  Representation clause to have consistent positions for enumerators

  for Port_Type use
   (main_alarm_detected_K =>
     1,
    main_alarm_decision_K =>
     2,
    main_alarm_decision1_K =>
     3,
    main_alarm_decision2_K =>
     4,
    main_alarm_decision3_K =>
     5,
    main_detector1_motion_K =>
     6,
    main_detector1_door_K =>
     7,
    main_detector1_decision_K =>
     8,
    main_detector2_motion_K =>
     9,
    main_detector2_door_K =>
     10,
    main_detector2_decision_K =>
     11,
    main_detector3_motion_K =>
     12,
    main_detector3_door_K =>
     13,
    main_detector3_decision_K =>
     14,
    main_rfid_reader_rfid_read_K =>
     15,
    main_rfid_reader_door_K =>
     16,
    main_rfid_reader_motion_K =>
     17,
    main_rfid_reader_decision_K =>
     18,
    video_video_captor_t_camera1_capture_K =>
     19,
    video_video_captor_t_camera2_capture_K =>
     20,
    video_video_captor_t_camera3_capture_K =>
     21,
    video_video_captor_t_start_K =>
     22,
    video_video_captor_t_output_converted_K =>
     23,
    video_video_sender_t_message_K =>
     24);

  --  Size of Port_Type fixed to 16 bits

  for Port_Type'Size use 16;

  --  Port Table

  subtype UT_Deployment_Main_Port_Type_Range is
   Port_Type range Port_Type'First .. Port_Type'Last;

  type UT_Deployment_Main_Port_Table_Array is
   array (UT_Deployment_Main_Port_Type_Range)
     of Entity_Type;

  Port_Table : constant UT_Deployment_Main_Port_Table_Array :=
   UT_Deployment_Main_Port_Table_Array'
     (main_alarm_detected_K =>
       main_alarm_K,
      main_alarm_decision_K =>
       main_alarm_K,
      main_alarm_decision1_K =>
       main_alarm_K,
      main_alarm_decision2_K =>
       main_alarm_K,
      main_alarm_decision3_K =>
       main_alarm_K,
      main_detector1_motion_K =>
       main_detector1_K,
      main_detector1_door_K =>
       main_detector1_K,
      main_detector1_decision_K =>
       main_detector1_K,
      main_detector2_motion_K =>
       main_detector2_K,
      main_detector2_door_K =>
       main_detector2_K,
      main_detector2_decision_K =>
       main_detector2_K,
      main_detector3_motion_K =>
       main_detector3_K,
      main_detector3_door_K =>
       main_detector3_K,
      main_detector3_decision_K =>
       main_detector3_K,
      main_rfid_reader_rfid_read_K =>
       main_rfid_reader_K,
      main_rfid_reader_door_K =>
       main_rfid_reader_K,
      main_rfid_reader_motion_K =>
       main_rfid_reader_K,
      main_rfid_reader_decision_K =>
       main_rfid_reader_K,
      video_video_captor_t_camera1_capture_K =>
       video_video_captor_t_K,
      video_video_captor_t_camera2_capture_K =>
       video_video_captor_t_K,
      video_video_captor_t_camera3_capture_K =>
       video_video_captor_t_K,
      video_video_captor_t_start_K =>
       video_video_captor_t_K,
      video_video_captor_t_output_converted_K =>
       video_video_captor_t_K,
      video_video_sender_t_message_K =>
       video_video_sender_t_K);

  Max_Port_Image_Size : constant Standard.Integer :=
   39;

  --  Maximal Port_Image size for this node

  subtype Port_Sized_String is
   Standard.String
     (1 .. PolyORB_HI_Generated.Deployment.Max_Port_Image_Size);

  --  Port Image

  type UT_Deployment_Main_Port_Image_Array is
   array (UT_Deployment_Main_Port_Type_Range)
     of Port_Sized_String;

  Port_Image : constant UT_Deployment_Main_Port_Image_Array :=
   UT_Deployment_Main_Port_Image_Array'
     (main_alarm_detected_K =>
       "main_alarm_detected_K                  ",
      main_alarm_decision_K =>
       "main_alarm_decision_K                  ",
      main_alarm_decision1_K =>
       "main_alarm_decision1_K                 ",
      main_alarm_decision2_K =>
       "main_alarm_decision2_K                 ",
      main_alarm_decision3_K =>
       "main_alarm_decision3_K                 ",
      main_detector1_motion_K =>
       "main_detector1_motion_K                ",
      main_detector1_door_K =>
       "main_detector1_door_K                  ",
      main_detector1_decision_K =>
       "main_detector1_decision_K              ",
      main_detector2_motion_K =>
       "main_detector2_motion_K                ",
      main_detector2_door_K =>
       "main_detector2_door_K                  ",
      main_detector2_decision_K =>
       "main_detector2_decision_K              ",
      main_detector3_motion_K =>
       "main_detector3_motion_K                ",
      main_detector3_door_K =>
       "main_detector3_door_K                  ",
      main_detector3_decision_K =>
       "main_detector3_decision_K              ",
      main_rfid_reader_rfid_read_K =>
       "main_rfid_reader_rfid_read_K           ",
      main_rfid_reader_door_K =>
       "main_rfid_reader_door_K                ",
      main_rfid_reader_motion_K =>
       "main_rfid_reader_motion_K              ",
      main_rfid_reader_decision_K =>
       "main_rfid_reader_decision_K            ",
      video_video_captor_t_camera1_capture_K =>
       "video_video_captor_t_camera1_capture_K ",
      video_video_captor_t_camera2_capture_K =>
       "video_video_captor_t_camera2_capture_K ",
      video_video_captor_t_camera3_capture_K =>
       "video_video_captor_t_camera3_capture_K ",
      video_video_captor_t_start_K =>
       "video_video_captor_t_start_K           ",
      video_video_captor_t_output_converted_K =>
       "video_video_captor_t_output_converted_K",
      video_video_sender_t_message_K =>
       "video_video_sender_t_message_K         ");

  --  Maximal message payload size for this node (in bits)

  Max_Payload_Size : constant Standard.Integer :=
   112;

  --  Biggest type: integer_type

end PolyORB_HI_Generated.Deployment;
