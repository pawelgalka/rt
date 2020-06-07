pragma Ada_95;
pragma Warnings (Off);
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is

   E016 : Short_Integer; pragma Import (Ada, E016, "system__soft_links_E");
   E026 : Short_Integer; pragma Import (Ada, E026, "system__exception_table_E");
   E028 : Short_Integer; pragma Import (Ada, E028, "system__exceptions_E");
   E020 : Short_Integer; pragma Import (Ada, E020, "system__secondary_stack_E");
   E109 : Short_Integer; pragma Import (Ada, E109, "ada__io_exceptions_E");
   E181 : Short_Integer; pragma Import (Ada, E181, "ada__numerics_E");
   E061 : Short_Integer; pragma Import (Ada, E061, "interfaces__c_E");
   E076 : Short_Integer; pragma Import (Ada, E076, "system__task_info_E");
   E095 : Short_Integer; pragma Import (Ada, E095, "ada__tags_E");
   E108 : Short_Integer; pragma Import (Ada, E108, "ada__streams_E");
   E111 : Short_Integer; pragma Import (Ada, E111, "system__finalization_root_E");
   E106 : Short_Integer; pragma Import (Ada, E106, "ada__finalization_E");
   E141 : Short_Integer; pragma Import (Ada, E141, "system__storage_pools_E");
   E137 : Short_Integer; pragma Import (Ada, E137, "system__finalization_masters_E");
   E189 : Short_Integer; pragma Import (Ada, E189, "ada__calendar_E");
   E152 : Short_Integer; pragma Import (Ada, E152, "system__assertions_E");
   E054 : Short_Integer; pragma Import (Ada, E054, "ada__real_time_E");
   E187 : Short_Integer; pragma Import (Ada, E187, "system__random_seed_E");
   E117 : Short_Integer; pragma Import (Ada, E117, "system__tasking__initialization_E");
   E127 : Short_Integer; pragma Import (Ada, E127, "system__tasking__protected_objects_E");
   E131 : Short_Integer; pragma Import (Ada, E131, "system__tasking__protected_objects__entries_E");
   E125 : Short_Integer; pragma Import (Ada, E125, "system__tasking__queuing_E");
   E093 : Short_Integer; pragma Import (Ada, E093, "ada__synchronous_task_control_E");
   E205 : Short_Integer; pragma Import (Ada, E205, "system__tasking__stages_E");
   E167 : Short_Integer; pragma Import (Ada, E167, "polyorb_hi__marshallers_g_E");
   E157 : Short_Integer; pragma Import (Ada, E157, "polyorb_hi__output_low_level_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "polyorb_hi__port_kinds_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "polyorb_hi__suspenders_E");
   E155 : Short_Integer; pragma Import (Ada, E155, "polyorb_hi__output_E");
   E203 : Short_Integer; pragma Import (Ada, E203, "polyorb_hi__periodic_task_E");
   E173 : Short_Integer; pragma Import (Ada, E173, "polyorb_hi__unprotected_queue_E");
   E169 : Short_Integer; pragma Import (Ada, E169, "polyorb_hi__thread_interrogators_E");
   E178 : Short_Integer; pragma Import (Ada, E178, "polyorb_hi_generated__subprograms_E");
   E180 : Short_Integer; pragma Import (Ada, E180, "surveillance_E");
   E145 : Short_Integer; pragma Import (Ada, E145, "polyorb_hi_generated__activity_E");
   E195 : Short_Integer; pragma Import (Ada, E195, "polyorb_hi_generated__transport_E");
   E175 : Short_Integer; pragma Import (Ada, E175, "polyorb_hi_generated__marshallers_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      declare
         procedure F1;
         pragma Import (Ada, F1, "polyorb_hi__suspenders__finalize_body");
      begin
         E006 := E006 - 1;
         F1;
      end;
      E093 := E093 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "ada__synchronous_task_control__finalize_spec");
      begin
         F2;
      end;
      E131 := E131 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F3;
      end;
      E137 := E137 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "system__finalization_masters__finalize_spec");
      begin
         F4;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := 97;
      Time_Slice_Value := 0;
      WC_Encoding := 'b';
      Locking_Policy := 'C';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, False, False, False, True, False, False, False, 
           False, False, False, False, True, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, True, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, True, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, True, False, True, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, True, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False),
         Value => (0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (False, False, False, True, True, False, False, True, 
           False, False, True, True, True, True, False, False, 
           True, False, False, True, True, False, True, True, 
           False, True, True, False, True, False, False, False, 
           False, False, True, False, False, True, False, False, 
           False, True, True, False, False, False, True, False, 
           False, False, True, False, False, False, False, False, 
           False, False, True, False, True, True, True, True, 
           True, True, False, True, True, True, False, True, 
           True, False, True, True, True, True, False, False, 
           True, False, False, False, True, False, False, False, 
           False, True, False),
         Count => (0, 0, 0, 1, 0, 0, 0, 0, 3, 0),
         Unknown => (False, False, False, False, False, False, False, False, True, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E026 := E026 + 1;
      System.Exceptions'Elab_Spec;
      E028 := E028 + 1;
      System.Soft_Links'Elab_Body;
      E016 := E016 + 1;
      System.Secondary_Stack'Elab_Body;
      E020 := E020 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E109 := E109 + 1;
      Ada.Numerics'Elab_Spec;
      E181 := E181 + 1;
      Interfaces.C'Elab_Spec;
      E061 := E061 + 1;
      System.Task_Info'Elab_Spec;
      E076 := E076 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E095 := E095 + 1;
      Ada.Streams'Elab_Spec;
      E108 := E108 + 1;
      System.Finalization_Root'Elab_Spec;
      E111 := E111 + 1;
      Ada.Finalization'Elab_Spec;
      E106 := E106 + 1;
      System.Storage_Pools'Elab_Spec;
      E141 := E141 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E137 := E137 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E189 := E189 + 1;
      System.Assertions'Elab_Spec;
      E152 := E152 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E054 := E054 + 1;
      System.Random_Seed'Elab_Body;
      E187 := E187 + 1;
      System.Tasking.Initialization'Elab_Body;
      E117 := E117 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E127 := E127 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E131 := E131 + 1;
      System.Tasking.Queuing'Elab_Body;
      E125 := E125 + 1;
      Ada.Synchronous_Task_Control'Elab_Spec;
      E093 := E093 + 1;
      System.Tasking.Stages'Elab_Body;
      E205 := E205 + 1;
      E167 := E167 + 1;
      E157 := E157 + 1;
      E163 := E163 + 1;
      Polyorb_Hi.Suspenders'Elab_Body;
      E006 := E006 + 1;
      Polyorb_Hi.Output'Elab_Body;
      E155 := E155 + 1;
      E203 := E203 + 1;
      E173 := E173 + 1;
      E169 := E169 + 1;
      E178 := E178 + 1;
      Surveillance'Elab_Body;
      E180 := E180 + 1;
      Polyorb_Hi_Generated.Activity'Elab_Spec;
      E175 := E175 + 1;
      E195 := E195 + 1;
      Polyorb_Hi_Generated.Activity'Elab_Body;
      E145 := E145 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_main");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   /home/p/rt/surveillance_sys/main/polyorb_hi.o
   --   /home/p/rt/surveillance_sys/main/polyorb_hi-streams.o
   --   /home/p/rt/surveillance_sys/main/polyorb_hi_generated.o
   --   /home/p/rt/surveillance_sys/main/polyorb_hi_generated-deployment.o
   --   /home/p/rt/surveillance_sys/main/polyorb_hi-utils.o
   --   /home/p/rt/surveillance_sys/main/polyorb_hi-messages.o
   --   /home/p/rt/surveillance_sys/main/polyorb_hi-errors.o
   --   /home/p/rt/surveillance_sys/main/polyorb_hi-marshallers_g.o
   --   /home/p/rt/surveillance_sys/main/polyorb_hi-output_low_level_native.o
   --   /home/p/rt/surveillance_sys/main/polyorb_hi-port_kinds.o
   --   /home/p/rt/surveillance_sys/main/polyorb_hi-port_type_marshallers.o
   --   /home/p/rt/surveillance_sys/main/polyorb_hi-suspenders.o
   --   /home/p/rt/surveillance_sys/main/polyorb_hi-output.o
   --   /home/p/rt/surveillance_sys/main/polyorb_hi-periodic_task.o
   --   /home/p/rt/surveillance_sys/main/polyorb_hi-time_marshallers.o
   --   /home/p/rt/surveillance_sys/main/polyorb_hi-unprotected_queue.o
   --   /home/p/rt/surveillance_sys/main/polyorb_hi-thread_interrogators.o
   --   /home/p/rt/surveillance_sys/main/polyorb_hi_generated-types.o
   --   /home/p/rt/surveillance_sys/main/polyorb_hi_generated-subprograms.o
   --   /home/p/rt/surveillance_sys/main/surveillance.o
   --   /home/p/rt/surveillance_sys/main/polyorb_hi_generated-marshallers.o
   --   /home/p/rt/surveillance_sys/main/polyorb_hi_generated-transport.o
   --   /home/p/rt/surveillance_sys/main/polyorb_hi_generated-activity.o
   --   /home/p/rt/surveillance_sys/main/main.o
   --   -L/home/p/rt/surveillance_sys/main/
   --   -L/home/p/rt/surveillance_sys/main/
   --   -L/opt/ocarina-2017.1-suite-linux-x86_64-20170204/include/ocarina/runtime/polyorb-hi-ada/
   --   -L/usr/lib/gcc/x86_64-linux-gnu/7/adalib/
   --   -shared
   --   -lgnarl-7
   --   -lgnat-7
   --   -lpthread
   --   -lrt
--  END Object file/option list   

end ada_main;
