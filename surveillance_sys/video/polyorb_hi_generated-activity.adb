--------------------------------------------------------
--  This file was automatically generated by Ocarina  --
--  Do NOT hand-modify this file, as your             --
--  changes will be lost when you re-run Ocarina      --
--------------------------------------------------------
pragma Style_Checks
 ("NM32766");

with PolyORB_HI.Port_Kinds;
with System;
with PolyORB_HI_Generated.Marshallers;
with PolyORB_HI_Generated.Transport;
with PolyORB_HI.Thread_Interrogators;
pragma Elaborate_All (PolyORB_HI.Thread_Interrogators);
with PolyORB_HI_Generated.Subprograms;

package body PolyORB_HI_Generated.Activity is

  --  BEGIN: Data types used by all instances of component video_captor.impl

  type surveillance_system_video_captor_impl_Integer_Array is
   array (surveillance_system_video_captor_impl_Port_Type)
     of Standard.Integer;

  type surveillance_system_video_captor_impl_Port_Kind_Array is
   array (surveillance_system_video_captor_impl_Port_Type)
     of PolyORB_HI.Port_Kinds.Port_Kind;

  subtype UT_Activity_Video_1_Max_Port_Image_Size is
   Integer range 1 .. PolyORB_HI_Generated.Deployment.Max_Port_Image_Size;

  subtype UT_Activity_Video_surveillance_system_video_captor_impl_Port_Image_Array_Component is
   Standard.String
     (UT_Activity_Video_1_Max_Port_Image_Size);

  type surveillance_system_video_captor_impl_Port_Image_Array is
   array (surveillance_system_video_captor_impl_Port_Type)
     of UT_Activity_Video_surveillance_system_video_captor_impl_Port_Image_Array_Component;

  type surveillance_system_video_captor_impl_Address_Array is
   array (surveillance_system_video_captor_impl_Port_Type)
     of System.Address;

  type surveillance_system_video_captor_impl_Overflow_Protocol_Array is
   array (surveillance_system_video_captor_impl_Port_Type)
     of PolyORB_HI.Port_Kinds.Overflow_Handling_Protocol;

  --  END: Data types used by all instances of component video_captor.impl

  surveillance_system_video_captor_t_Port_Kinds : constant surveillance_system_video_captor_impl_Port_Kind_Array :=
   (camera1_capture =>
     PolyORB_HI.Port_Kinds.In_Data_Port,
    camera2_capture =>
     PolyORB_HI.Port_Kinds.In_Data_Port,
    camera3_capture =>
     PolyORB_HI.Port_Kinds.In_Data_Port,
    start =>
     PolyORB_HI.Port_Kinds.In_Event_Data_Port,
    output_converted =>
     PolyORB_HI.Port_Kinds.Out_Event_Data_Port);

  surveillance_system_video_captor_t_Port_Images : constant surveillance_system_video_captor_impl_Port_Image_Array :=
   (camera1_capture =>
     PolyORB_HI_Generated.Deployment.Port_Image
       (PolyORB_HI_Generated.Deployment.video_video_captor_t_camera1_capture_K),
    camera2_capture =>
     PolyORB_HI_Generated.Deployment.Port_Image
       (PolyORB_HI_Generated.Deployment.video_video_captor_t_camera2_capture_K),
    camera3_capture =>
     PolyORB_HI_Generated.Deployment.Port_Image
       (PolyORB_HI_Generated.Deployment.video_video_captor_t_camera3_capture_K),
    start =>
     PolyORB_HI_Generated.Deployment.Port_Image
       (PolyORB_HI_Generated.Deployment.video_video_captor_t_start_K),
    output_converted =>
     PolyORB_HI_Generated.Deployment.Port_Image
       (PolyORB_HI_Generated.Deployment.video_video_captor_t_output_converted_K));

  surveillance_system_video_captor_t_FIFO_Sizes : constant surveillance_system_video_captor_impl_Integer_Array :=
   (camera1_capture =>
     1,
    camera2_capture =>
     1,
    camera3_capture =>
     1,
    start =>
     16,
    output_converted =>
     -1);

  surveillance_system_video_captor_t_Offsets : constant surveillance_system_video_captor_impl_Integer_Array :=
   (camera1_capture =>
     1,
    camera2_capture =>
     2,
    camera3_capture =>
     3,
    start =>
     4,
    output_converted =>
     0);

  surveillance_system_video_captor_t_Overflow_Protocols : constant surveillance_system_video_captor_impl_Overflow_Protocol_Array :=
   (camera1_capture =>
     PolyORB_HI.Port_Kinds.Dropoldest,
    camera2_capture =>
     PolyORB_HI.Port_Kinds.Dropoldest,
    camera3_capture =>
     PolyORB_HI.Port_Kinds.Dropoldest,
    start =>
     PolyORB_HI.Port_Kinds.Dropoldest,
    output_converted =>
     PolyORB_HI.Port_Kinds.Dropoldest);

  surveillance_system_video_captor_t_Urgencies : constant surveillance_system_video_captor_impl_Integer_Array :=
   (camera1_capture =>
     0,
    camera2_capture =>
     0,
    camera3_capture =>
     0,
    start =>
     0,
    output_converted =>
     0);

  surveillance_system_video_captor_t_Total_FIFO_Size : constant Standard.Integer :=
   19;

  type UT_Activity_Video_video_captor_t_output_converted_Destinations_Array is
   array (Standard.Positive range <>)
     of PolyORB_HI_Generated.Deployment.Port_Type;

  video_captor_t_output_converted_Destinations : constant UT_Activity_Video_video_captor_t_output_converted_Destinations_Array :=
   UT_Activity_Video_video_captor_t_output_converted_Destinations_Array'
     (1 =>
       PolyORB_HI_Generated.Deployment.video_video_sender_t_message_K);

  surveillance_system_video_captor_t_N_Destinations : constant surveillance_system_video_captor_impl_Integer_Array :=
   (camera1_capture =>
     0,
    camera2_capture =>
     0,
    camera3_capture =>
     0,
    start =>
     0,
    output_converted =>
     1);

  video_captor_t_Destinations : constant surveillance_system_video_captor_impl_Address_Array :=
   (camera1_capture =>
     System.null_Address,
    camera2_capture =>
     System.null_Address,
    camera3_capture =>
     System.null_Address,
    start =>
     System.null_Address,
    output_converted =>
     video_captor_t_output_converted_Destinations'Address);

  package surveillance_system_video_captor_t_Interrogators is
   new PolyORB_HI.Thread_Interrogators
     (Port_Type => surveillance_system_video_captor_impl_Port_Type,
      Integer_Array => surveillance_system_video_captor_impl_Integer_Array,
      Port_Kind_Array => surveillance_system_video_captor_impl_Port_Kind_Array,
      Port_Image_Array => surveillance_system_video_captor_impl_Port_Image_Array,
      Address_Array => surveillance_system_video_captor_impl_Address_Array,
      Overflow_Protocol_Array => surveillance_system_video_captor_impl_Overflow_Protocol_Array,
      Thread_Interface_Type => surveillance_system_video_captor_impl_Interface,
      Current_Entity => PolyORB_HI_Generated.Deployment.video_video_captor_t_K,
      Thread_Port_Kinds => surveillance_system_video_captor_t_Port_Kinds,
      Has_Event_Ports => True,
      Thread_Port_Images => surveillance_system_video_captor_t_Port_Images,
      Thread_Fifo_Sizes => surveillance_system_video_captor_t_FIFO_Sizes,
      Thread_Fifo_Offsets => surveillance_system_video_captor_t_Offsets,
      Thread_Overflow_Protocols => surveillance_system_video_captor_t_Overflow_Protocols,
      Urgencies => surveillance_system_video_captor_t_Urgencies,
      Global_Data_Queue_Size => surveillance_system_video_captor_t_Total_FIFO_Size,
      N_Destinations => surveillance_system_video_captor_t_N_Destinations,
      Destinations => video_captor_t_Destinations,
      Marshall => PolyORB_HI_Generated.Marshallers.Marshall,
      Send => PolyORB_HI_Generated.Transport.Send,
      Next_Deadline => surveillance_system_video_captor_t_Task.Next_Deadline);

  --  Periodic task : video_captor_t

  --------------------------------------------
  -- surveillance_system_video_captor_t_Job -- 
  --------------------------------------------

  function surveillance_system_video_captor_t_Job return PolyORB_HI.Errors.Error_Kind is
    camera1_capture_V : PolyORB_HI_Generated.Types.camera_image;
    camera2_capture_V : PolyORB_HI_Generated.Types.camera_image;
    camera3_capture_V : PolyORB_HI_Generated.Types.camera_image;
    start_V : PolyORB_HI_Generated.Types.Integer_Type;
    handler_Status : PolyORB_HI_Generated.Subprograms.event_handlers_video_captor_handler_Status;
    Error_� : PolyORB_HI.Errors.Error_Kind;
    use type PolyORB_HI.Errors.Error_Kind;
  begin
    --  Get the IN port values
    if (surveillance_system_video_captor_t_Interrogators.Get_Count
     (camera1_capture)
      /= -1)
    then
      camera1_capture_V :=
       surveillance_system_video_captor_t_Interrogators.Get_Value
         (camera1_capture).camera1_capture_DATA;
    else
      camera1_capture_V :=
       PolyORB_HI_Generated.Types.camera_image_Default_Value;
    end if;
    if (surveillance_system_video_captor_t_Interrogators.Get_Count
     (camera2_capture)
      /= -1)
    then
      camera2_capture_V :=
       surveillance_system_video_captor_t_Interrogators.Get_Value
         (camera2_capture).camera2_capture_DATA;
    else
      camera2_capture_V :=
       PolyORB_HI_Generated.Types.camera_image_Default_Value;
    end if;
    if (surveillance_system_video_captor_t_Interrogators.Get_Count
     (camera3_capture)
      /= -1)
    then
      camera3_capture_V :=
       surveillance_system_video_captor_t_Interrogators.Get_Value
         (camera3_capture).camera3_capture_DATA;
    else
      camera3_capture_V :=
       PolyORB_HI_Generated.Types.camera_image_Default_Value;
    end if;
    if (surveillance_system_video_captor_t_Interrogators.Get_Count
     (start)
      /= -1)
    then
      start_V :=
       surveillance_system_video_captor_t_Interrogators.Get_Value
         (start).start_DATA;
    else
      start_V :=
       PolyORB_HI_Generated.Types.Integer_Type_Default_Value;
    end if;
    --  Dequeue the IN port values
    surveillance_system_video_captor_t_Interrogators.Next_Value
     (surveillance_system_video_captor_impl_Port_Type'
       (start));
    --  Call implementation
    PolyORB_HI_Generated.Subprograms.event_handlers_video_captor_handler
     (det1 => camera1_capture_V,
      det2 => camera2_capture_V,
      det3 => camera3_capture_V,
      data_sink => start_V,
      Status => handler_Status);
    if (PolyORB_HI_Generated.Subprograms.Get_Count
     (handler_Status,
      PolyORB_HI_Generated.Subprograms.event_handlers_video_captor_handler_Port_Type'
       (PolyORB_HI_Generated.Subprograms.result))
      >= 1)
    then
      PolyORB_HI_Generated.Activity.Put_Value
       (PolyORB_HI_Generated.Deployment.video_video_captor_t_K,
        PolyORB_HI_Generated.Activity.surveillance_system_video_captor_impl_Interface'
         (Port => output_converted,
          output_converted_DATA => PolyORB_HI_Generated.Subprograms.Get_Value
           (handler_Status,
            PolyORB_HI_Generated.Subprograms.event_handlers_video_captor_handler_Port_Type'
             (PolyORB_HI_Generated.Subprograms.result)).result_DATA));
    end if;
    --  Send the call sequence OUT port values
    Error_� :=
     surveillance_system_video_captor_t_Interrogators.Send_Output
       (output_converted);
    if (Error_�
      /= PolyORB_HI.Errors.Error_None)
    then
      return Error_�;
    end if;
    --  Return error code
    return Error_�;
  end surveillance_system_video_captor_t_Job;

  --  BEGIN: Data types used by all instances of component video_sender.impl

  type surveillance_system_video_sender_impl_Integer_Array is
   array (surveillance_system_video_sender_impl_Port_Type)
     of Standard.Integer;

  type surveillance_system_video_sender_impl_Port_Kind_Array is
   array (surveillance_system_video_sender_impl_Port_Type)
     of PolyORB_HI.Port_Kinds.Port_Kind;

  subtype UT_Activity_Video_surveillance_system_video_sender_impl_Port_Image_Array_Component is
   Standard.String
     (UT_Activity_Video_1_Max_Port_Image_Size);

  type surveillance_system_video_sender_impl_Port_Image_Array is
   array (surveillance_system_video_sender_impl_Port_Type)
     of UT_Activity_Video_surveillance_system_video_sender_impl_Port_Image_Array_Component;

  type surveillance_system_video_sender_impl_Address_Array is
   array (surveillance_system_video_sender_impl_Port_Type)
     of System.Address;

  type surveillance_system_video_sender_impl_Overflow_Protocol_Array is
   array (surveillance_system_video_sender_impl_Port_Type)
     of PolyORB_HI.Port_Kinds.Overflow_Handling_Protocol;

  --  END: Data types used by all instances of component video_sender.impl

  surveillance_system_video_sender_t_Port_Kinds : constant surveillance_system_video_sender_impl_Port_Kind_Array :=
   (message =>
     PolyORB_HI.Port_Kinds.In_Event_Data_Port);

  surveillance_system_video_sender_t_Port_Images : constant surveillance_system_video_sender_impl_Port_Image_Array :=
   (message =>
     PolyORB_HI_Generated.Deployment.Port_Image
       (PolyORB_HI_Generated.Deployment.video_video_sender_t_message_K));

  surveillance_system_video_sender_t_FIFO_Sizes : constant surveillance_system_video_sender_impl_Integer_Array :=
   (message =>
     16);

  surveillance_system_video_sender_t_Offsets : constant surveillance_system_video_sender_impl_Integer_Array :=
   (message =>
     1);

  surveillance_system_video_sender_t_Overflow_Protocols : constant surveillance_system_video_sender_impl_Overflow_Protocol_Array :=
   (message =>
     PolyORB_HI.Port_Kinds.Dropoldest);

  surveillance_system_video_sender_t_Urgencies : constant surveillance_system_video_sender_impl_Integer_Array :=
   (message =>
     0);

  surveillance_system_video_sender_t_Total_FIFO_Size : constant Standard.Integer :=
   16;

  surveillance_system_video_sender_t_N_Destinations : constant surveillance_system_video_sender_impl_Integer_Array :=
   (message =>
     0);

  video_sender_t_Destinations : constant surveillance_system_video_sender_impl_Address_Array :=
   (message =>
     System.null_Address);

  package surveillance_system_video_sender_t_Interrogators is
   new PolyORB_HI.Thread_Interrogators
     (Port_Type => surveillance_system_video_sender_impl_Port_Type,
      Integer_Array => surveillance_system_video_sender_impl_Integer_Array,
      Port_Kind_Array => surveillance_system_video_sender_impl_Port_Kind_Array,
      Port_Image_Array => surveillance_system_video_sender_impl_Port_Image_Array,
      Address_Array => surveillance_system_video_sender_impl_Address_Array,
      Overflow_Protocol_Array => surveillance_system_video_sender_impl_Overflow_Protocol_Array,
      Thread_Interface_Type => surveillance_system_video_sender_impl_Interface,
      Current_Entity => PolyORB_HI_Generated.Deployment.video_video_sender_t_K,
      Thread_Port_Kinds => surveillance_system_video_sender_t_Port_Kinds,
      Has_Event_Ports => True,
      Thread_Port_Images => surveillance_system_video_sender_t_Port_Images,
      Thread_Fifo_Sizes => surveillance_system_video_sender_t_FIFO_Sizes,
      Thread_Fifo_Offsets => surveillance_system_video_sender_t_Offsets,
      Thread_Overflow_Protocols => surveillance_system_video_sender_t_Overflow_Protocols,
      Urgencies => surveillance_system_video_sender_t_Urgencies,
      Global_Data_Queue_Size => surveillance_system_video_sender_t_Total_FIFO_Size,
      N_Destinations => surveillance_system_video_sender_t_N_Destinations,
      Destinations => video_sender_t_Destinations,
      Marshall => PolyORB_HI_Generated.Marshallers.Marshall,
      Send => PolyORB_HI_Generated.Transport.Send,
      Next_Deadline => surveillance_system_video_sender_t_Task.Next_Deadline);

  --  Periodic task : video_sender_t

  --------------------------------------------
  -- surveillance_system_video_sender_t_Job -- 
  --------------------------------------------

  function surveillance_system_video_sender_t_Job return PolyORB_HI.Errors.Error_Kind is
    message_V : PolyORB_HI_Generated.Types.captor_data;
    Error_� : constant PolyORB_HI.Errors.Error_Kind :=
     PolyORB_HI.Errors.Error_None;
    use type PolyORB_HI.Errors.Error_Kind;
  begin
    --  Get the IN port values
    if (surveillance_system_video_sender_t_Interrogators.Get_Count
     (message)
      /= -1)
    then
      message_V :=
       surveillance_system_video_sender_t_Interrogators.Get_Value
         (message).message_DATA;
    else
      message_V :=
       PolyORB_HI_Generated.Types.captor_data_Default_Value;
    end if;
    --  Dequeue the IN port values
    surveillance_system_video_sender_t_Interrogators.Next_Value
     (surveillance_system_video_sender_impl_Port_Type'
       (message));
    --  Call implementation
    PolyORB_HI_Generated.Subprograms.event_handlers_video_sender_handler;
    --  Return error code
    return Error_�;
  end surveillance_system_video_sender_t_Job;

  -----------------
  -- Send_Output -- 
  -----------------

  function Send_Output
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : surveillance_system_video_captor_impl_Port_Type)
   return PolyORB_HI.Errors.Error_Kind
  is
    use PolyORB_HI_Generated.Deployment;
    pragma Unreferenced
     (Entity);
  begin
    return surveillance_system_video_captor_t_Interrogators.Send_Output
     (Port);
  end Send_Output;

  ---------------
  -- Put_Value -- 
  ---------------

  procedure Put_Value
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Thread_Interface : surveillance_system_video_captor_impl_Interface)
  is
    use PolyORB_HI_Generated.Deployment;
    pragma Unreferenced
     (Entity);
  begin
    surveillance_system_video_captor_t_Interrogators.Put_Value
     (Thread_Interface);
  end Put_Value;

  -------------------
  -- Receive_Input -- 
  -------------------

  procedure Receive_Input
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : surveillance_system_video_captor_impl_Port_Type)
  is
    use PolyORB_HI_Generated.Deployment;
    pragma Unreferenced
     (Entity);
  begin
    surveillance_system_video_captor_t_Interrogators.Receive_Input
     (Port);
  end Receive_Input;

  ---------------
  -- Get_Value -- 
  ---------------

  function Get_Value
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : surveillance_system_video_captor_impl_Port_Type)
   return surveillance_system_video_captor_impl_Interface
  is
    use PolyORB_HI_Generated.Deployment;
    pragma Unreferenced
     (Entity);
  begin
    pragma Warnings
     (Off,
      "*return*");
    return surveillance_system_video_captor_t_Interrogators.Get_Value
     (Port);
    pragma Warnings
     (On,
      "*return*");
  end Get_Value;

  ----------------
  -- Get_Sender -- 
  ----------------

  function Get_Sender
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : surveillance_system_video_captor_impl_Port_Type)
   return PolyORB_HI_Generated.Deployment.Entity_Type
  is
    use PolyORB_HI_Generated.Deployment;
    pragma Unreferenced
     (Entity);
  begin
    pragma Warnings
     (Off,
      "*return*");
    return surveillance_system_video_captor_t_Interrogators.Get_Sender
     (Port);
    pragma Warnings
     (On,
      "*return*");
  end Get_Sender;

  ---------------
  -- Get_Count -- 
  ---------------

  function Get_Count
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : surveillance_system_video_captor_impl_Port_Type)
   return Standard.Integer
  is
    use PolyORB_HI_Generated.Deployment;
    pragma Unreferenced
     (Entity);
  begin
    pragma Warnings
     (Off,
      "*return*");
    return surveillance_system_video_captor_t_Interrogators.Get_Count
     (Port);
    pragma Warnings
     (On,
      "*return*");
  end Get_Count;

  --------------------
  -- Get_Time_Stamp -- 
  --------------------

  function Get_Time_Stamp
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : surveillance_system_video_captor_impl_Port_Type)
   return Ada.Real_Time.Time
  is
    use PolyORB_HI_Generated.Deployment;
    pragma Unreferenced
     (Entity);
  begin
    pragma Warnings
     (Off,
      "*return*");
    return surveillance_system_video_captor_t_Interrogators.Get_Time_Stamp
     (Port);
    pragma Warnings
     (On,
      "*return*");
  end Get_Time_Stamp;

  ----------------
  -- Next_Value -- 
  ----------------

  procedure Next_Value
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : surveillance_system_video_captor_impl_Port_Type)
  is
    use PolyORB_HI_Generated.Deployment;
    pragma Unreferenced
     (Entity);
  begin
    surveillance_system_video_captor_t_Interrogators.Next_Value
     (Port);
  end Next_Value;

  ----------------------------
  -- Store_Received_Message -- 
  ----------------------------

  procedure Store_Received_Message
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Thread_Interface : surveillance_system_video_captor_impl_Interface;
    From : PolyORB_HI_Generated.Deployment.Entity_Type;
    Time_Stamp : Ada.Real_Time.Time :=
      Ada.Real_Time.Clock)
  is
    use PolyORB_HI_Generated.Deployment;
    pragma Unreferenced
     (Entity);
  begin
    surveillance_system_video_captor_t_Interrogators.Store_Received_Message
     (Thread_Interface,
      From,
      Time_Stamp);
  end Store_Received_Message;

  ------------------------------
  -- Wait_For_Incoming_Events -- 
  ------------------------------

  procedure Wait_For_Incoming_Events
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : out surveillance_system_video_captor_impl_Port_Type)
  is
    use PolyORB_HI_Generated.Deployment;
    pragma Unreferenced
     (Entity);
  begin
    surveillance_system_video_captor_t_Interrogators.Wait_For_Incoming_Events
     (Port);
  end Wait_For_Incoming_Events;

  -----------------
  -- Send_Output -- 
  -----------------

  function Send_Output
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : surveillance_system_video_sender_impl_Port_Type)
   return PolyORB_HI.Errors.Error_Kind
  is
    use PolyORB_HI_Generated.Deployment;
    pragma Unreferenced
     (Entity);
  begin
    return surveillance_system_video_sender_t_Interrogators.Send_Output
     (Port);
  end Send_Output;

  ---------------
  -- Put_Value -- 
  ---------------

  procedure Put_Value
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Thread_Interface : surveillance_system_video_sender_impl_Interface)
  is
    use PolyORB_HI_Generated.Deployment;
    pragma Unreferenced
     (Entity);
  begin
    surveillance_system_video_sender_t_Interrogators.Put_Value
     (Thread_Interface);
  end Put_Value;

  -------------------
  -- Receive_Input -- 
  -------------------

  procedure Receive_Input
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : surveillance_system_video_sender_impl_Port_Type)
  is
    use PolyORB_HI_Generated.Deployment;
    pragma Unreferenced
     (Entity);
  begin
    surveillance_system_video_sender_t_Interrogators.Receive_Input
     (Port);
  end Receive_Input;

  ---------------
  -- Get_Value -- 
  ---------------

  function Get_Value
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : surveillance_system_video_sender_impl_Port_Type)
   return surveillance_system_video_sender_impl_Interface
  is
    use PolyORB_HI_Generated.Deployment;
    pragma Unreferenced
     (Entity);
  begin
    pragma Warnings
     (Off,
      "*return*");
    return surveillance_system_video_sender_t_Interrogators.Get_Value
     (Port);
    pragma Warnings
     (On,
      "*return*");
  end Get_Value;

  ----------------
  -- Get_Sender -- 
  ----------------

  function Get_Sender
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : surveillance_system_video_sender_impl_Port_Type)
   return PolyORB_HI_Generated.Deployment.Entity_Type
  is
    use PolyORB_HI_Generated.Deployment;
    pragma Unreferenced
     (Entity);
  begin
    pragma Warnings
     (Off,
      "*return*");
    return surveillance_system_video_sender_t_Interrogators.Get_Sender
     (Port);
    pragma Warnings
     (On,
      "*return*");
  end Get_Sender;

  ---------------
  -- Get_Count -- 
  ---------------

  function Get_Count
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : surveillance_system_video_sender_impl_Port_Type)
   return Standard.Integer
  is
    use PolyORB_HI_Generated.Deployment;
    pragma Unreferenced
     (Entity);
  begin
    pragma Warnings
     (Off,
      "*return*");
    return surveillance_system_video_sender_t_Interrogators.Get_Count
     (Port);
    pragma Warnings
     (On,
      "*return*");
  end Get_Count;

  --------------------
  -- Get_Time_Stamp -- 
  --------------------

  function Get_Time_Stamp
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : surveillance_system_video_sender_impl_Port_Type)
   return Ada.Real_Time.Time
  is
    use PolyORB_HI_Generated.Deployment;
    pragma Unreferenced
     (Entity);
  begin
    pragma Warnings
     (Off,
      "*return*");
    return surveillance_system_video_sender_t_Interrogators.Get_Time_Stamp
     (Port);
    pragma Warnings
     (On,
      "*return*");
  end Get_Time_Stamp;

  ----------------
  -- Next_Value -- 
  ----------------

  procedure Next_Value
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : surveillance_system_video_sender_impl_Port_Type)
  is
    use PolyORB_HI_Generated.Deployment;
    pragma Unreferenced
     (Entity);
  begin
    surveillance_system_video_sender_t_Interrogators.Next_Value
     (Port);
  end Next_Value;

  ----------------------------
  -- Store_Received_Message -- 
  ----------------------------

  procedure Store_Received_Message
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Thread_Interface : surveillance_system_video_sender_impl_Interface;
    From : PolyORB_HI_Generated.Deployment.Entity_Type;
    Time_Stamp : Ada.Real_Time.Time :=
      Ada.Real_Time.Clock)
  is
    use PolyORB_HI_Generated.Deployment;
    pragma Unreferenced
     (Entity);
  begin
    surveillance_system_video_sender_t_Interrogators.Store_Received_Message
     (Thread_Interface,
      From,
      Time_Stamp);
  end Store_Received_Message;

  ------------------------------
  -- Wait_For_Incoming_Events -- 
  ------------------------------

  procedure Wait_For_Incoming_Events
   (Entity : PolyORB_HI_Generated.Deployment.Entity_Type;
    Port : out surveillance_system_video_sender_impl_Port_Type)
  is
    use PolyORB_HI_Generated.Deployment;
    pragma Unreferenced
     (Entity);
  begin
    surveillance_system_video_sender_t_Interrogators.Wait_For_Incoming_Events
     (Port);
  end Wait_For_Incoming_Events;

end PolyORB_HI_Generated.Activity;
