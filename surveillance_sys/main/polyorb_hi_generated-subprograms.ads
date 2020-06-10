--------------------------------------------------------
--  This file was automatically generated by Ocarina  --
--  Do NOT hand-modify this file, as your             --
--  changes will be lost when you re-run Ocarina      --
--------------------------------------------------------
pragma Style_Checks
 ("NM32766");

with PolyORB_HI_Generated.Types;

package PolyORB_HI_Generated.Subprograms is

  procedure event_handlers_alarm_activator
   (result : out PolyORB_HI_Generated.Types.Integer_Type;
    det1 : PolyORB_HI_Generated.Types.Integer_Type;
    det2 : PolyORB_HI_Generated.Types.Integer_Type;
    det3 : PolyORB_HI_Generated.Types.Integer_Type;
    rfid : PolyORB_HI_Generated.Types.Integer_Type);

  type event_handlers_detection_handler_Port_Type is
   (Data_Source);

  type event_handlers_detection_handler_Interface 
   (Port : event_handlers_detection_handler_Port_Type := event_handlers_detection_handler_Port_Type'First)
  is
    record
      case Port is
        when Data_Source =>
          Data_Source_DATA : PolyORB_HI_Generated.Types.Integer_Type;
        pragma Warnings (Off);
        when others =>
          null;
        pragma Warnings (On);
      end case;
    end record;

  type event_handlers_detection_handler_Status is
   private;

  procedure Put_Value
   (Status : in out event_handlers_detection_handler_Status;
    Spg_Interface : event_handlers_detection_handler_Interface);

  function Get_Value
   (Status : event_handlers_detection_handler_Status;
    Port : event_handlers_detection_handler_Port_Type)
   return event_handlers_detection_handler_Interface;

  procedure Next_Value
   (Status : in out event_handlers_detection_handler_Status;
    Port : event_handlers_detection_handler_Port_Type);

  function Get_Count
   (Status : event_handlers_detection_handler_Status;
    Port : event_handlers_detection_handler_Port_Type)
   return Standard.Integer;

  procedure event_handlers_detection_handler
   (Status : in out PolyORB_HI_Generated.Subprograms.event_handlers_detection_handler_Status);

  type event_handlers_detection_handler1_Port_Type is
   (Data_Source);

  type event_handlers_detection_handler1_Interface 
   (Port : event_handlers_detection_handler1_Port_Type := event_handlers_detection_handler1_Port_Type'First)
  is
    record
      case Port is
        when Data_Source =>
          Data_Source_DATA : PolyORB_HI_Generated.Types.Integer_Type;
        pragma Warnings (Off);
        when others =>
          null;
        pragma Warnings (On);
      end case;
    end record;

  type event_handlers_detection_handler1_Status is
   private;

  procedure Put_Value
   (Status : in out event_handlers_detection_handler1_Status;
    Spg_Interface : event_handlers_detection_handler1_Interface);

  function Get_Value
   (Status : event_handlers_detection_handler1_Status;
    Port : event_handlers_detection_handler1_Port_Type)
   return event_handlers_detection_handler1_Interface;

  procedure Next_Value
   (Status : in out event_handlers_detection_handler1_Status;
    Port : event_handlers_detection_handler1_Port_Type);

  function Get_Count
   (Status : event_handlers_detection_handler1_Status;
    Port : event_handlers_detection_handler1_Port_Type)
   return Standard.Integer;

  procedure event_handlers_detection_handler1
   (Status : in out PolyORB_HI_Generated.Subprograms.event_handlers_detection_handler1_Status);

  type event_handlers_detection_handler2_Port_Type is
   (Data_Source);

  type event_handlers_detection_handler2_Interface 
   (Port : event_handlers_detection_handler2_Port_Type := event_handlers_detection_handler2_Port_Type'First)
  is
    record
      case Port is
        when Data_Source =>
          Data_Source_DATA : PolyORB_HI_Generated.Types.Integer_Type;
        pragma Warnings (Off);
        when others =>
          null;
        pragma Warnings (On);
      end case;
    end record;

  type event_handlers_detection_handler2_Status is
   private;

  procedure Put_Value
   (Status : in out event_handlers_detection_handler2_Status;
    Spg_Interface : event_handlers_detection_handler2_Interface);

  function Get_Value
   (Status : event_handlers_detection_handler2_Status;
    Port : event_handlers_detection_handler2_Port_Type)
   return event_handlers_detection_handler2_Interface;

  procedure Next_Value
   (Status : in out event_handlers_detection_handler2_Status;
    Port : event_handlers_detection_handler2_Port_Type);

  function Get_Count
   (Status : event_handlers_detection_handler2_Status;
    Port : event_handlers_detection_handler2_Port_Type)
   return Standard.Integer;

  procedure event_handlers_detection_handler2
   (Status : in out PolyORB_HI_Generated.Subprograms.event_handlers_detection_handler2_Status);

  type event_handlers_rfid_handler_Port_Type is
   (Data_Source);

  type event_handlers_rfid_handler_Interface 
   (Port : event_handlers_rfid_handler_Port_Type := event_handlers_rfid_handler_Port_Type'First)
  is
    record
      case Port is
        when Data_Source =>
          Data_Source_DATA : PolyORB_HI_Generated.Types.Integer_Type;
        pragma Warnings (Off);
        when others =>
          null;
        pragma Warnings (On);
      end case;
    end record;

  type event_handlers_rfid_handler_Status is
   private;

  procedure Put_Value
   (Status : in out event_handlers_rfid_handler_Status;
    Spg_Interface : event_handlers_rfid_handler_Interface);

  function Get_Value
   (Status : event_handlers_rfid_handler_Status;
    Port : event_handlers_rfid_handler_Port_Type)
   return event_handlers_rfid_handler_Interface;

  procedure Next_Value
   (Status : in out event_handlers_rfid_handler_Status;
    Port : event_handlers_rfid_handler_Port_Type);

  function Get_Count
   (Status : event_handlers_rfid_handler_Status;
    Port : event_handlers_rfid_handler_Port_Type)
   return Standard.Integer;

  procedure event_handlers_rfid_handler
   (Status : in out PolyORB_HI_Generated.Subprograms.event_handlers_rfid_handler_Status);

private
  type event_handlers_detection_handler_Status is
    record
      Data_Source : Standard.Boolean := False;
      Data_Source_DATA : PolyORB_HI_Generated.Types.Integer_Type;
    end record;

  type event_handlers_detection_handler1_Status is
    record
      Data_Source : Standard.Boolean := False;
      Data_Source_DATA : PolyORB_HI_Generated.Types.Integer_Type;
    end record;

  type event_handlers_detection_handler2_Status is
    record
      Data_Source : Standard.Boolean := False;
      Data_Source_DATA : PolyORB_HI_Generated.Types.Integer_Type;
    end record;

  type event_handlers_rfid_handler_Status is
    record
      Data_Source : Standard.Boolean := False;
      Data_Source_DATA : PolyORB_HI_Generated.Types.Integer_Type;
    end record;

end PolyORB_HI_Generated.Subprograms;
