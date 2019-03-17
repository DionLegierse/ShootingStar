
################################################################
# This is a generated script based on design: BOARD_DESIGN
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source BOARD_DESIGN_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# COMMAND_PROCESSOR, OAM, Renderer, SOAM, SYNTHESIZER_TOP, ScanlineOAM, circular_buffer, dataToSprite, sprite_rom_wrapper

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
   set_property BOARD_PART digilentinc.com:basys3:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name BOARD_DESIGN

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./vhdl_code

  # Use origin directory path location variable, if specified in the tcl shell
  if { [info exists ::origin_dir_loc] } {
     set origin_dir $::origin_dir_loc
  }

  set str_bd_folder [file normalize ${origin_dir}]
  set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

  # Check if remote design exists on disk
  if { [file exists $str_bd_filepath ] == 1 } {
     catch {common::send_msg_id "BD_TCL-110" "ERROR" "The remote BD file path <$str_bd_filepath> already exists!"}
     common::send_msg_id "BD_TCL-008" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0>."
     common::send_msg_id "BD_TCL-009" "INFO" "Also make sure there is no design <$design_name> existing in your current project."

     return 1
  }

  # Check if design exists in memory
  set list_existing_designs [get_bd_designs -quiet $design_name]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-111" "ERROR" "The design <$design_name> already exists in this project! Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-010" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Check if design exists on disk within project
  set list_existing_designs [get_files -quiet */${design_name}.bd]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-112" "ERROR" "The design <$design_name> already exists in this project at location:
    $list_existing_designs"}
     catch {common::send_msg_id "BD_TCL-113" "ERROR" "Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-011" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Now can create the remote BD
  # NOTE - usage of <-dir> will create <$str_bd_folder/$design_name/$design_name.bd>
  create_bd_design -dir $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design $design_name} errmsg] } {
     common::send_msg_id "BD_TCL-012" "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set Dout_0 [ create_bd_port -dir O -from 7 -to 0 Dout_0 ]
  set Err_0 [ create_bd_port -dir O Err_0 ]
  set Ren_0 [ create_bd_port -dir I Ren_0 ]
  set clk [ create_bd_port -dir I -type clk clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
 ] $clk
  set mc_clk [ create_bd_port -dir I -type clk mc_clk ]
  set mc_data [ create_bd_port -dir I -from 7 -to 0 mc_data ]
  set mc_register_select [ create_bd_port -dir I mc_register_select ]
  set sound_out [ create_bd_port -dir O sound_out ]

  # Create instance: COMMAND_PROCESSOR_0, and set properties
  set block_name COMMAND_PROCESSOR
  set block_cell_name COMMAND_PROCESSOR_0
  if { [catch {set COMMAND_PROCESSOR_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $COMMAND_PROCESSOR_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: OAM_0, and set properties
  set block_name OAM
  set block_cell_name OAM_0
  if { [catch {set OAM_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $OAM_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Renderer_0, and set properties
  set block_name Renderer
  set block_cell_name Renderer_0
  if { [catch {set Renderer_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Renderer_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: SOAM_0, and set properties
  set block_name SOAM
  set block_cell_name SOAM_0
  if { [catch {set SOAM_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $SOAM_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: SYNTHESIZER_TOP_0, and set properties
  set block_name SYNTHESIZER_TOP
  set block_cell_name SYNTHESIZER_TOP_0
  if { [catch {set SYNTHESIZER_TOP_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $SYNTHESIZER_TOP_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ScanlineOAM_0, and set properties
  set block_name ScanlineOAM
  set block_cell_name ScanlineOAM_0
  if { [catch {set ScanlineOAM_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ScanlineOAM_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: circular_buffer_0, and set properties
  set block_name circular_buffer
  set block_cell_name circular_buffer_0
  if { [catch {set circular_buffer_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $circular_buffer_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.data_depth {15} \
 ] $circular_buffer_0

  # Create instance: dataToSprite_0, and set properties
  set block_name dataToSprite
  set block_cell_name dataToSprite_0
  if { [catch {set dataToSprite_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $dataToSprite_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: sprite_rom_wrapper_0, and set properties
  set block_name sprite_rom_wrapper
  set block_cell_name sprite_rom_wrapper_0
  if { [catch {set sprite_rom_wrapper_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sprite_rom_wrapper_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net COMMAND_PROCESSOR_0_OAMEnable [get_bd_pins COMMAND_PROCESSOR_0/OAMEnable] [get_bd_pins OAM_0/OAMwen]
  connect_bd_net -net COMMAND_PROCESSOR_0_reset_APU [get_bd_pins COMMAND_PROCESSOR_0/reset_APU] [get_bd_pins OAM_0/OAMreset] [get_bd_pins SYNTHESIZER_TOP_0/reset] [get_bd_pins circular_buffer_0/reset]
  connect_bd_net -net COMMAND_PROCESSOR_0_sprite_attribute [get_bd_pins COMMAND_PROCESSOR_0/sprite_attribute] [get_bd_pins dataToSprite_0/sprite_atttribute]
  connect_bd_net -net COMMAND_PROCESSOR_0_sprite_memory_loc [get_bd_pins COMMAND_PROCESSOR_0/sprite_memory_loc] [get_bd_pins dataToSprite_0/sprite_memory_loc]
  connect_bd_net -net COMMAND_PROCESSOR_0_sprite_register_loc [get_bd_pins COMMAND_PROCESSOR_0/sprite_register_loc] [get_bd_pins OAM_0/OAMwadd]
  connect_bd_net -net COMMAND_PROCESSOR_0_start_addres_APU [get_bd_pins COMMAND_PROCESSOR_0/start_addres_APU] [get_bd_pins SYNTHESIZER_TOP_0/startAddress]
  connect_bd_net -net COMMAND_PROCESSOR_0_start_music [get_bd_pins COMMAND_PROCESSOR_0/start_music] [get_bd_pins SYNTHESIZER_TOP_0/start_music]
  connect_bd_net -net COMMAND_PROCESSOR_0_x_loc_sprite [get_bd_pins COMMAND_PROCESSOR_0/x_loc_sprite] [get_bd_pins dataToSprite_0/x_loc_sprite]
  connect_bd_net -net COMMAND_PROCESSOR_0_y_loc_sprite [get_bd_pins COMMAND_PROCESSOR_0/y_loc_sprite] [get_bd_pins dataToSprite_0/y_loc_sprite]
  connect_bd_net -net OAM_0_OAMout [get_bd_pins OAM_0/OAMout] [get_bd_pins ScanlineOAM_0/OAMin]
  connect_bd_net -net Ren_0_1 [get_bd_ports Ren_0] [get_bd_pins circular_buffer_0/Ren]
  connect_bd_net -net Renderer_0_BufferData [get_bd_pins Renderer_0/BufferData] [get_bd_pins circular_buffer_0/Din]
  connect_bd_net -net Renderer_0_BufferEnableWrite [get_bd_pins Renderer_0/BufferEnableWrite] [get_bd_pins circular_buffer_0/Wen]
  connect_bd_net -net Renderer_0_NextScanline [get_bd_pins Renderer_0/NextScanline] [get_bd_pins ScanlineOAM_0/scanline]
  connect_bd_net -net Renderer_0_SOAMAddress [get_bd_pins Renderer_0/SOAMAddress] [get_bd_pins SOAM_0/SOAMadd]
  connect_bd_net -net Renderer_0_SOAMReadEnable [get_bd_pins Renderer_0/SOAMReadEnable] [get_bd_pins SOAM_0/SOAMren]
  connect_bd_net -net Renderer_0_SpriteROMAddr [get_bd_pins Renderer_0/SpriteROMAddr] [get_bd_pins sprite_rom_wrapper_0/addra]
  connect_bd_net -net Renderer_0_isEndLine [get_bd_pins Renderer_0/isEndLine] [get_bd_pins ScanlineOAM_0/ENDscanline]
  connect_bd_net -net SOAM_0_SOAMout [get_bd_pins Renderer_0/SOAMData] [get_bd_pins SOAM_0/SOAMout]
  connect_bd_net -net SYNTHESIZER_TOP_0_sound_out [get_bd_ports sound_out] [get_bd_pins SYNTHESIZER_TOP_0/sound_out]
  connect_bd_net -net ScanlineOAM_0_OAMadd [get_bd_pins OAM_0/OAMradd] [get_bd_pins ScanlineOAM_0/OAMadd]
  connect_bd_net -net ScanlineOAM_0_SOAMclear [get_bd_pins SOAM_0/SOAMclear] [get_bd_pins ScanlineOAM_0/SOAMclear]
  connect_bd_net -net ScanlineOAM_0_SOAMout [get_bd_pins SOAM_0/SOAMin] [get_bd_pins ScanlineOAM_0/SOAMout]
  connect_bd_net -net ScanlineOAM_0_SOAMpush [get_bd_pins SOAM_0/SOAMpush] [get_bd_pins ScanlineOAM_0/SOAMpush]
  connect_bd_net -net circular_buffer_0_Dout [get_bd_ports Dout_0] [get_bd_pins circular_buffer_0/Dout]
  connect_bd_net -net circular_buffer_0_Empty [get_bd_pins Renderer_0/bufferClear] [get_bd_pins circular_buffer_0/Empty]
  connect_bd_net -net circular_buffer_0_Err [get_bd_ports Err_0] [get_bd_pins circular_buffer_0/Err]
  connect_bd_net -net circular_buffer_0_Full [get_bd_pins Renderer_0/bufferFull] [get_bd_pins circular_buffer_0/Full]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins COMMAND_PROCESSOR_0/clk] [get_bd_pins OAM_0/clk] [get_bd_pins Renderer_0/clk] [get_bd_pins SOAM_0/clk] [get_bd_pins SYNTHESIZER_TOP_0/clk] [get_bd_pins ScanlineOAM_0/clk] [get_bd_pins circular_buffer_0/clk] [get_bd_pins sprite_rom_wrapper_0/clk]
  connect_bd_net -net dataToSprite_0_sprite_data [get_bd_pins OAM_0/OAMin] [get_bd_pins dataToSprite_0/sprite_data]
  connect_bd_net -net mc_clk_1 [get_bd_ports mc_clk] [get_bd_pins COMMAND_PROCESSOR_0/mc_clk]
  connect_bd_net -net mc_data_1 [get_bd_ports mc_data] [get_bd_pins COMMAND_PROCESSOR_0/mc_data]
  connect_bd_net -net mc_register_select_1 [get_bd_ports mc_register_select] [get_bd_pins COMMAND_PROCESSOR_0/mc_register_select]
  connect_bd_net -net sprite_rom_wrapper_0_douta [get_bd_pins Renderer_0/SpriteROMDatout] [get_bd_pins sprite_rom_wrapper_0/douta]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


