$---------------------------------------------------------------------MDI_HEADER
[MDI_HEADER]
 FILE_TYPE     =  'tpl'
 FILE_VERSION  =  2016.0
 FILE_FORMAT   =  'ASCII'
 HEADER_SIZE   =  9
(COMMENTS)
{comment_string}
'Adams Car suspension template'
$----------------------------------------------------------------TEMPLATE_HEADER
[TEMPLATE_HEADER]
 TEMPLATE_NAME  =  '_Rear_suspension_Three_wheeler'
 MAJOR_ROLE     =  'suspension'
 TIMESTAMP      =  '2018/06/01,16:58:47'
 HEADER_SIZE    =  6
$------------------------------------------------------------------------PLUGINS
[PLUGINS]
 PLUGIN_LIST  =  'acar'
 HEADER_SIZE  =  4
!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = mm  &
   angle = deg  &
   force = newton  &
   mass = kg  &
   time = sec
!
defaults units  &
   coordinate_system_type = cartesian  &
   orientation_type = body313
!
!------------------------ Default Attributes for Model ------------------------!
!
!
defaults attributes  &
   inheritance = bottom_up  &
   icon_visibility = off  &
   grid_visibility = off  &
   size_of_icons = 50.0  &
   spacing_for_grid = 1000.0
!
!------------------------------ Adams View Model ------------------------------!
!
!
model create  &
   model_name = _Rear_suspension_Three_wheeler  &
   title = "Adams Car template"
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = ._Rear_suspension_Three_wheeler._cv_solver_variable  &
   comments = "Dummy for communicators"  &
   initial_condition = 0.0  &
   function = ""
!
data_element attributes  &
   data_element_name = ._Rear_suspension_Three_wheeler._cv_solver_variable  &
   visibility = off
!
data_element create array ic_array  &
   array_name = ._Rear_suspension_Three_wheeler._cv_array  &
   comments = "Dummy for communicators"  &
   size = 1  &
   numbers = 0.0
!
data_element attributes  &
   data_element_name = ._Rear_suspension_Three_wheeler._cv_array  &
   visibility = off
!
data_element create spline  &
   spline_name = ._Rear_suspension_Three_wheeler._cv_spline  &
   comments = "Dummy for communicators"  &
   x = 1.0, 2.0, 3.0, 4.0  &
   y = 1.0, 2.0, 3.0, 4.0, 1.0, 2.0, 3.0, 4.0  &
   z = 1.0, 2.0  &
   linear_extrapolate = no
!
data_element attributes  &
   data_element_name = ._Rear_suspension_Three_wheeler._cv_spline  &
   visibility = off
!
data_element create string  &
   string_name = ._Rear_suspension_Three_wheeler.minor_role_string  &
   comments = "Memory for Adams Car minor role"  &
   string = "unassigned"
!
data_element attributes  &
   data_element_name = ._Rear_suspension_Three_wheeler.minor_role_string  &
   visibility = off
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = ._Rear_suspension_Three_wheeler.steel  &
   density = 7.801E-006  &
   youngs_modulus = 2.07E+005  &
   poissons_ratio = 0.29
!
!-------------------------------- Rigid Parts ---------------------------------!
!
! Create parts and their dependent markers and graphics
!
!----------------------------------- ground -----------------------------------!
!
!
! ****** Ground Part ******
!
part modify rigid_body name_and_position  &
   part_name = ground
!
defaults model  &
   part_name = ground
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_Wheel_Center  &
   location = 1900.0, -538.5, 247.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_Wheel_Center  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_Wheel_Center  &
   location = 1900.0, 538.5, 247.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_Wheel_Center  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_SA_Pivot_point  &
   location = 1530.0, -450.5, 238.5  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_SA_Pivot_point  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_SA_Pivot_point  &
   location = 1530.0, 450.5, 238.5  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_SA_Pivot_point  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.origo  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground._cv_marker  &
   comments = "Dummy for communicators"  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground._cv_marker  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_Lower_Shock  &
   location = 2006.0, -420.0, 304.0  &
   orientation = 270.0d, 9.0257274148d, 90.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_Lower_Shock  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_Lower_Shock  &
   location = 2006.0, 420.0, 304.0  &
   orientation = 270.0d, 9.0257274148d, 90.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_Lower_Shock  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_Upper_Shock  &
   location = 1962.0, -420.0, 581.0  &
   orientation = 270.0d, 9.0257274148d, 90.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_Upper_Shock  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_Upper_Shock  &
   location = 1962.0, 420.0, 581.0  &
   orientation = 270.0d, 9.0257274148d, 90.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_Upper_Shock  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.mtl_mount_j_1  &
   location = 1962.0, -420.0, 581.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.mtl_mount_j_1  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.mtr_mount_j_1  &
   location = 1962.0, 420.0, 581.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.mtr_mount_j_1  &
   visibility = off  &
   name_visibility = off
!
! ****** Points for current part ******
!
point create  &
   point_name = ._Rear_suspension_Three_wheeler.ground.hpl_SA_Pivot_point  &
   location = 1530.0, -450.5, 238.5
!
point attributes  &
   point_name = ._Rear_suspension_Three_wheeler.ground.hpl_SA_Pivot_point  &
   visibility = on  &
   name_visibility = on
!
point create  &
   point_name = ._Rear_suspension_Three_wheeler.ground.hpr_SA_Pivot_point  &
   location = 1530.0, 450.5, 238.5
!
point attributes  &
   point_name = ._Rear_suspension_Three_wheeler.ground.hpr_SA_Pivot_point  &
   visibility = on
!
point create  &
   point_name = ._Rear_suspension_Three_wheeler.ground.hpl_SA_wheel_center  &
   location = 1890.0, -440.5, 247.0
!
point create  &
   point_name = ._Rear_suspension_Three_wheeler.ground.hpr_SA_wheel_center  &
   location = 1890.0, 440.5, 247.0
!
point create  &
   point_name = ._Rear_suspension_Three_wheeler.ground.hpl_Wheel_Center  &
   location = 1900.0, -538.5, 247.0
!
point create  &
   point_name = ._Rear_suspension_Three_wheeler.ground.hpr_Wheel_Center  &
   location = 1900.0, 538.5, 247.0
!
point create  &
   point_name = ._Rear_suspension_Three_wheeler.ground.hpl_Lower_Shock  &
   location = 2006.0, -420.0, 304.0
!
point create  &
   point_name = ._Rear_suspension_Three_wheeler.ground.hpr_Lower_Shock  &
   location = 2006.0, 420.0, 304.0
!
point create  &
   point_name = ._Rear_suspension_Three_wheeler.ground.hpl_Upper_Shock  &
   location = 1962.0, -420.0, 581.0
!
point create  &
   point_name = ._Rear_suspension_Three_wheeler.ground.hpr_Upper_Shock  &
   location = 1962.0, 420.0, 581.0
!
point create  &
   point_name = ._Rear_suspension_Three_wheeler.ground.hpl_SA_Lenght  &
   location = 2025.0, -440.5, 250.0
!
point create  &
   point_name = ._Rear_suspension_Three_wheeler.ground.hpr_SA_Lenght  &
   location = 2025.0, 440.5, 250.0
!
! ****** Graphics for current part ******
!
geometry create shape ellipsoid  &
   ellipsoid_name = ._Rear_suspension_Three_wheeler.ground._cv_csolid  &
   center_marker = ._Rear_suspension_Three_wheeler.ground._cv_marker  &
   x_scale_factor = 100.0  &
   y_scale_factor = 100.0  &
   z_scale_factor = 100.0
!
geometry attributes  &
   geometry_name = ._Rear_suspension_Three_wheeler.ground._cv_csolid  &
   visibility = off
!
!------------------------------- gel_Swing_Arm --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part create rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm  &
   location = 1777.5, -445.5, 244.25  &
   orientation = 91.1573330681d, 88.6693967372d, 269.9731215442d
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.gel_Swing_Arm
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.cm  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.inertia_frame  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.gralin_1  &
   location = 0.0, 0.0, -247.6172701974  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.gralin_1  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm  &
   mass = 10.6066509689  &
   center_of_mass_marker = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.cm  &
   inertia_marker =   &
                    ._Rear_suspension_Three_wheeler.gel_Swing_Arm.inertia_frame  &
   ixx = 2.1909755934E+005  &
   iyy = 2.1909755934E+005  &
   izz = 4635.4439626915  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.gralin_Swing_Arm  &
   center_marker = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.gralin_1  &
   angle_extent = 360.0  &
   length = 495.2345403948  &
   radius = 30.0  &
   side_count_for_body = 15  &
   segment_count_for_ends = 15
!
geometry attributes  &
   geometry_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.gralin_Swing_Arm  &
   color = RED
!
part attributes  &
   part_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm  &
   visibility = on  &
   name_visibility = on
!
!------------------------------- ger_Swing_Arm --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part create rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm  &
   location = 1777.5, 445.5, 244.25  &
   orientation = 88.8426669319d, 88.6693967372d, 270.0268784558d
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ger_Swing_Arm
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.cm  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.inertia_frame  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.gralin_2  &
   location = 0.0, 0.0, -247.6172701974  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.gralin_2  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm  &
   mass = 10.6066509689  &
   center_of_mass_marker = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.cm  &
   inertia_marker =   &
                    ._Rear_suspension_Three_wheeler.ger_Swing_Arm.inertia_frame  &
   ixx = 2.1909755934E+005  &
   iyy = 2.1909755934E+005  &
   izz = 4635.4439626915  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.gralin_Swing_Arm  &
   center_marker = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.gralin_2  &
   angle_extent = 360.0  &
   length = 495.2345403948  &
   radius = 30.0  &
   side_count_for_body = 15  &
   segment_count_for_ends = 15
!
geometry attributes  &
   geometry_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.gralin_Swing_Arm  &
   color = RED
!
part attributes  &
   part_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm  &
   visibility = on  &
   name_visibility = on
!
!---------------------------------- _cv_part ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part create rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler._cv_part  &
   comments = "Dummy for communicators"  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler._cv_part
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler._cv_part.marker  &
   comments = "Dummy for communicators"  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler._cv_part.marker  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = ._Rear_suspension_Three_wheeler._cv_part  &
   mass = 0.0  &
   center_of_mass_marker = ._Rear_suspension_Three_wheeler._cv_part.marker  &
   ixx = 0.0  &
   iyy = 0.0  &
   izz = 0.0  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
part attributes  &
   part_name = ._Rear_suspension_Three_wheeler._cv_part  &
   visibility = off  &
   name_visibility = off
!
!-------------------------------- gel_Spindle ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part create rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.gel_Spindle  &
   location = 1900.0, -538.5, 247.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.gel_Spindle
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Spindle.cm  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Spindle.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Spindle.inertia_frame  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Spindle.gracyl_1  &
   location = 0.0, 0.0, -200.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Spindle.gracyl_1  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = ._Rear_suspension_Three_wheeler.gel_Spindle  &
   mass = 2.0  &
   center_of_mass_marker = ._Rear_suspension_Three_wheeler.gel_Spindle.cm  &
   inertia_marker =   &
                    ._Rear_suspension_Three_wheeler.gel_Spindle.inertia_frame  &
   ixx = 1000.0  &
   iyy = 1000.0  &
   izz = 1000.0  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = ._Rear_suspension_Three_wheeler.gel_Spindle.gracyl_Spindle  &
   center_marker = ._Rear_suspension_Three_wheeler.gel_Spindle.gracyl_1  &
   angle_extent = 360.0  &
   length = 270.0  &
   radius = 10.0  &
   side_count_for_body = 15  &
   segment_count_for_ends = 15
!
geometry attributes  &
   geometry_name = ._Rear_suspension_Three_wheeler.gel_Spindle.gracyl_Spindle  &
   color = MAIZE
!
part attributes  &
   part_name = ._Rear_suspension_Three_wheeler.gel_Spindle  &
   visibility = on  &
   name_visibility = on
!
!-------------------------------- ger_Spindle ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part create rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.ger_Spindle  &
   location = 1900.0, 538.5, 247.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ger_Spindle
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Spindle.cm  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Spindle.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Spindle.inertia_frame  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Spindle.gracyl_2  &
   location = 0.0, 0.0, -200.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Spindle.gracyl_2  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = ._Rear_suspension_Three_wheeler.ger_Spindle  &
   mass = 2.0  &
   center_of_mass_marker = ._Rear_suspension_Three_wheeler.ger_Spindle.cm  &
   inertia_marker =   &
                    ._Rear_suspension_Three_wheeler.ger_Spindle.inertia_frame  &
   ixx = 1000.0  &
   iyy = 1000.0  &
   izz = 1000.0  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = ._Rear_suspension_Three_wheeler.ger_Spindle.gracyl_Spindle  &
   center_marker = ._Rear_suspension_Three_wheeler.ger_Spindle.gracyl_2  &
   angle_extent = 360.0  &
   length = 270.0  &
   radius = 10.0  &
   side_count_for_body = 15  &
   segment_count_for_ends = 15
!
geometry attributes  &
   geometry_name = ._Rear_suspension_Three_wheeler.ger_Spindle.gracyl_Spindle  &
   color = MAIZE
!
part attributes  &
   part_name = ._Rear_suspension_Three_wheeler.ger_Spindle  &
   visibility = on  &
   name_visibility = on
!
!-------------------------- mtl_Upper_Strut_To_Body ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part create rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body  &
   location = 1962.0, -420.0, 581.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body.mount_i  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body.mount_i  &
   visibility = off  &
   name_visibility = off
!
part attributes  &
   part_name = ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body  &
   visibility = on  &
   name_visibility = on
!
!-------------------------- mtr_Upper_Strut_To_Body ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part create rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body  &
   location = 1962.0, 420.0, 581.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.mount_i  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.mount_i  &
   visibility = off  &
   name_visibility = off
!
part attributes  &
   part_name = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body  &
   visibility = on  &
   name_visibility = on
!
!--------------------------------- Equations ----------------------------------!
!
!
part create equation differential_equation  &
   differential_equation_name = ._Rear_suspension_Three_wheeler._cv_diff  &
   comments = "Dummy for communicators"  &
   initial_condition = 0.0  &
   function = ""  &
   implicit = off  &
   static_hold = off
!
part attributes  &
   equation_name = ._Rear_suspension_Three_wheeler._cv_diff  &
   visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint cylindrical  &
   joint_name = ._Rear_suspension_Three_wheeler._cv_joint_for_motion  &
   comments = "Dummy for communicators"  &
   i_marker_name = ._Rear_suspension_Three_wheeler._cv_part.marker  &
   j_marker_name = ._Rear_suspension_Three_wheeler.ground._cv_marker
!
constraint attributes  &
   constraint_name = ._Rear_suspension_Three_wheeler._cv_joint_for_motion  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = ._Rear_suspension_Three_wheeler.mtl_fixed_1  &
   i_marker_name =   &
                   ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body.mount_i  &
   j_marker_name = ._Rear_suspension_Three_wheeler.ground.mtl_mount_j_1
!
constraint attributes  &
   constraint_name = ._Rear_suspension_Three_wheeler.mtl_fixed_1  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = ._Rear_suspension_Three_wheeler.mtr_fixed_1  &
   i_marker_name =   &
                   ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.mount_i  &
   j_marker_name = ._Rear_suspension_Three_wheeler.ground.mtr_mount_j_1
!
constraint attributes  &
   constraint_name = ._Rear_suspension_Three_wheeler.mtr_fixed_1  &
   visibility = off  &
   name_visibility = off
!
!------------------------------ Joint Primitives ------------------------------!
!
!
constraint create primitive_joint inplane  &
   jprim_name = ._Rear_suspension_Three_wheeler._cv_joint  &
   comments = "Dummy for communicators"  &
   i_marker_name = ._Rear_suspension_Three_wheeler._cv_part.marker  &
   j_marker_name = ._Rear_suspension_Three_wheeler.ground._cv_marker
!
constraint attributes  &
   constraint_name = ._Rear_suspension_Three_wheeler._cv_joint  &
   visibility = off  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create element_like field  &
   field_name = ._Rear_suspension_Three_wheeler._cv_bushing  &
   comments = "Dummy for communicators"  &
   i_marker_name = ._Rear_suspension_Three_wheeler._cv_part.marker  &
   j_marker_name = ._Rear_suspension_Three_wheeler.ground._cv_marker  &
   stiffness_matrix =  &
      0.0, 0.0, 0.0, 0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0, 0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0, 0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0, 0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0, 0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0, 0.0, 0.0, 0.0
!
force attributes  &
   force_name = ._Rear_suspension_Three_wheeler._cv_bushing  &
   visibility = off  &
   name_visibility = off
!
!---------------------------------- Motions -----------------------------------!
!
!
constraint create motion_generator  &
   motion_name = ._Rear_suspension_Three_wheeler._cv_motion  &
   comments = "Dummy for communicators"  &
   type_of_freedom = rotational  &
   joint_name = ._Rear_suspension_Three_wheeler._cv_joint_for_motion  &
   function = ""
!
constraint attributes  &
   constraint_name = ._Rear_suspension_Three_wheeler._cv_motion  &
   visibility = off  &
   name_visibility = off
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = gravity  &
   x_component_gravity = 0.0  &
   y_component_gravity = 0.0  &
   z_component_gravity = -9806.65
!
!----------------------------- Analysis settings ------------------------------!
!
!
!---------------------------- Adams View Variables ----------------------------!
!
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.speed  &
   units = "velocity"  &
   real_value = 0.0
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.model_class  &
   string_value = "template"  &
   comments = "Memory for Adams Car model class"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.template_creation_date  &
   string_value = "2018/05/31,21:16:17"  &
   comments = "do not remove"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.role  &
   string_value = "suspension"  &
   comments = "Memory for Adams Car major role"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.minor_role  &
   string_value = "unassigned"  &
   comments = "Memory for Adams Car minor role"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.phs_kinematic_flag  &
   integer_value = 0  &
   comments =   &
              "Flag that determines if kinematic joints or bushings are active"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.pvl_Toe_Angle  &
   units = "angle"  &
   real_value = 0.0
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.pvr_Toe_Angle  &
   units = "angle"  &
   real_value = 0.0
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.pvl_Camber_Angle  &
   units = "angle"  &
   real_value = 0.0
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.pvr_Camber_Angle  &
   units = "angle"  &
   real_value = 0.0
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.pvs_SA_Lenght  &
   units = "length"  &
   real_value = 300.0
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.sml_sprung_mass_percent  &
   range = 0.0, 100.0  &
   delta_type = relative  &
   real_value = 100.0
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.smr_sprung_mass_percent  &
   range = 0.0, 100.0  &
   delta_type = relative  &
   real_value = 100.0
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.gel_Spindle.sml_sprung_mass_percent  &
   range = 0.0, 100.0  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.ger_Spindle.smr_sprung_mass_percent  &
   range = 0.0, 100.0  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body.minor_role  &
   string_value = "any"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body.dependents  &
   object_value = (NONE)
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cil_Upper_Strut_To_Body  &
   object_value = (NONE)  &
   comments = "Autocreated for mount part: mtl_Upper_Strut_To_Body"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cil_Upper_Strut_To_Body.matching_name  &
   string_value = "Upper_Strut_To_Body"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cil_Upper_Strut_To_Body.entity  &
   string_value = "mount"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cil_Upper_Strut_To_Body.minor_role  &
   string_value = "any"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.minor_role  &
   string_value = "any"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.dependents  &
   object_value = (NONE)
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cir_Upper_Strut_To_Body  &
   object_value = (NONE)  &
   comments = "Autocreated for mount part: mtr_Upper_Strut_To_Body"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cir_Upper_Strut_To_Body.matching_name  &
   string_value = "Upper_Strut_To_Body"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cir_Upper_Strut_To_Body.entity  &
   string_value = "mount"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cir_Upper_Strut_To_Body.minor_role  &
   string_value = "any"
!
!---------------------------- Adams View Functions ----------------------------!
!
!
function create  &
   function_name = .SYMMETRY  &
   text_of_expression = "LOC_MIRROR(location, .__ACAR.ground.origo, .ACAR.variables.symmetry_plane)"  &
   argument_names = "location"  &
   type = location_orientation  &
   comments =   &
              "Compute mirrored location over the symmetry plane given 3x1 location vector"
!
!------------------------- Groups Owned By This Model -------------------------!
!
!
group create  &
   group_name = ._Rear_suspension_Three_wheeler.kinematic_mode_active  &
   expr_active = 1
!
group create  &
   group_name = ._Rear_suspension_Three_wheeler.kinematic_mode_inactive  &
   expr_active = 1
!
!---------------------- Set Adams View Object Variables -----------------------!
!
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body.dependents  &
   object_value = ._Rear_suspension_Three_wheeler.mtl_fixed_1,  &
                  ._Rear_suspension_Three_wheeler.cil_Upper_Strut_To_Body
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cil_Upper_Strut_To_Body  &
   object_value = ._Rear_suspension_Three_wheeler.ground.mtl_mount_j_1,  &
                  ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body,  &
                  ._Rear_suspension_Three_wheeler.mtl_fixed_1
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.dependents  &
   object_value = ._Rear_suspension_Three_wheeler.mtr_fixed_1,  &
                  ._Rear_suspension_Three_wheeler.cir_Upper_Strut_To_Body
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cir_Upper_Strut_To_Body  &
   object_value = ._Rear_suspension_Three_wheeler.ground.mtr_mount_j_1,  &
                  ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body,  &
                  ._Rear_suspension_Three_wheeler.mtr_fixed_1
!
!--------------------------- Add Objects To Groups ----------------------------!
!
!
group modify  &
   group_name = ._Rear_suspension_Three_wheeler.kinematic_mode_active
!
group modify  &
   group_name = ._Rear_suspension_Three_wheeler.kinematic_mode_inactive
!
!---------------------------- Function definitions ----------------------------!
!
!
constraint modify motion_generator  &
   motion_name = ._Rear_suspension_Three_wheeler._cv_motion  &
   function = "0"
!
data_element modify variable  &
   variable_name = ._Rear_suspension_Three_wheeler._cv_solver_variable  &
   function = "0"
!
part modify equation differential_equation  &
   differential_equation_name = ._Rear_suspension_Three_wheeler._cv_diff  &
   function = "0"
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_Wheel_Center  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.hpl_Wheel_Center))  &
   orientation =   &
      (ORI_RELATIVE_TO({180d - ._Rear_suspension_Three_wheeler.pvl_Toe_Angle, -90d - ._Rear_suspension_Three_wheeler.pvl_Camber_Angle, 180d}, ._Rear_suspension_Three_wheeler.ground.origo))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_Wheel_Center  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.hpr_Wheel_Center))  &
   orientation =   &
      (ORI_RELATIVE_TO({180d + ._Rear_suspension_Three_wheeler.pvr_Toe_Angle, 90d + ._Rear_suspension_Three_wheeler.pvr_Camber_Angle, 180d}, ._Rear_suspension_Three_wheeler.ground.origo))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_SA_Pivot_point  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.hpl_SA_Pivot_point))  &
   orientation =   &
      (ORI_ALONG_AXIS(._Rear_suspension_Three_wheeler.ground.cfl_SA_Pivot_point, ._Rear_suspension_Three_wheeler.ground.hpr_SA_Pivot_point, "Z"))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_SA_Pivot_point  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.hpr_SA_Pivot_point))  &
   orientation =   &
      (ORI_ALONG_AXIS(._Rear_suspension_Three_wheeler.ground.cfr_SA_Pivot_point, ._Rear_suspension_Three_wheeler.ground.hpl_SA_Pivot_point, "Z"))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_Lower_Shock  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.hpl_Lower_Shock))  &
   orientation =   &
      (ORI_ALONG_AXIS(._Rear_suspension_Three_wheeler.ground.cfl_Lower_Shock, ._Rear_suspension_Three_wheeler.ground.hpl_Upper_Shock, "Z"))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_Lower_Shock  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.hpr_Lower_Shock))  &
   orientation =   &
      (ORI_ALONG_AXIS(._Rear_suspension_Three_wheeler.ground.cfr_Lower_Shock, ._Rear_suspension_Three_wheeler.ground.hpr_Upper_Shock, "Z"))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_Upper_Shock  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.hpl_Upper_Shock))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfl_Lower_Shock))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_Upper_Shock  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.hpr_Upper_Shock))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfr_Lower_Shock))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.mtl_mount_j_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.mtr_mount_j_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body))
!
data_element modify string  &
   string_name = ._Rear_suspension_Three_wheeler.minor_role_string  &
   string = (._Rear_suspension_Three_wheeler.minor_role)
!
group modify  &
   group_name = ._Rear_suspension_Three_wheeler.kinematic_mode_active  &
   expr_active = (._Rear_suspension_Three_wheeler.phs_kinematic_flag || ._Rear_suspension_Three_wheeler.model_class == "template" ? 1 : 0)
!
group modify  &
   group_name = ._Rear_suspension_Three_wheeler.kinematic_mode_inactive  &
   expr_active = ( ! ._Rear_suspension_Three_wheeler.phs_kinematic_flag || ._Rear_suspension_Three_wheeler.model_class == "template" ? 1 : 0)
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.inertia_frame  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.gel_Swing_Arm.cm))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.gel_Swing_Arm))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_Swing_Arm
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.gralin_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.hpl_SA_Pivot_point))  &
   orientation =   &
      (ORI_ALONG_AXIS(._Rear_suspension_Three_wheeler.ground.hpl_SA_Pivot_point, ._Rear_suspension_Three_wheeler.ground.hpl_SA_Lenght, "Z"))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_Swing_Arm
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
geometry modify shape cylinder  &
   cylinder_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.gralin_Swing_Arm  &
   length = (DM(._Rear_suspension_Three_wheeler.ground.hpl_SA_Pivot_point, ._Rear_suspension_Three_wheeler.ground.hpl_SA_Lenght))
!
part modify rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm  &
   location =   &
      (LOC_CENTERED({._Rear_suspension_Three_wheeler.ground.hpl_SA_Pivot_point.loc, ._Rear_suspension_Three_wheeler.ground.hpl_SA_Lenght.loc}, 2))  &
   orientation =   &
      (ORI_ALONG_AXIS(._Rear_suspension_Three_wheeler.ground.hpl_SA_Pivot_point, ._Rear_suspension_Three_wheeler.ground.hpl_SA_Lenght, "Z"))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.inertia_frame  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ger_Swing_Arm.cm))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ger_Swing_Arm))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_Swing_Arm
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.gralin_2  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.hpr_SA_Pivot_point))  &
   orientation =   &
      (ORI_ALONG_AXIS(._Rear_suspension_Three_wheeler.ground.hpr_SA_Pivot_point, ._Rear_suspension_Three_wheeler.ground.hpr_SA_Lenght, "Z"))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_Swing_Arm
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
geometry modify shape cylinder  &
   cylinder_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.gralin_Swing_Arm  &
   length = (DM(._Rear_suspension_Three_wheeler.ground.hpr_SA_Pivot_point, ._Rear_suspension_Three_wheeler.ground.hpr_SA_Lenght))
!
part modify rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm  &
   location =   &
      (LOC_CENTERED({._Rear_suspension_Three_wheeler.ground.hpr_SA_Pivot_point.loc, ._Rear_suspension_Three_wheeler.ground.hpr_SA_Lenght.loc}, 2))  &
   orientation =   &
      (ORI_ALONG_AXIS(._Rear_suspension_Three_wheeler.ground.hpr_SA_Pivot_point, ._Rear_suspension_Three_wheeler.ground.hpr_SA_Lenght, "Z"))
!
material modify  &
   material_name = ._Rear_suspension_Three_wheeler.steel  &
   density = (7801.0(kg/meter**3))  &
   youngs_modulus = (2.07E+011(Newton/meter**2))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Spindle.inertia_frame  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.gel_Spindle.cm))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.gel_Spindle))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_Spindle
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part modify rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.gel_Spindle  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfl_Wheel_Center))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfl_Wheel_Center))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Spindle.gracyl_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, -200.0}mm, ._Rear_suspension_Three_wheeler.ground.cfl_Wheel_Center))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfl_Wheel_Center))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_Spindle
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Spindle.inertia_frame  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ger_Spindle.cm))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ger_Spindle))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_Spindle
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part modify rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.ger_Spindle  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfr_Wheel_Center))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfr_Wheel_Center))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Spindle.gracyl_2  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, -200.0}mm, ._Rear_suspension_Three_wheeler.ground.cfr_Wheel_Center))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfr_Wheel_Center))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_Spindle
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part modify rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfl_Upper_Shock))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.origo))
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cil_Upper_Strut_To_Body  &
   comments = ("Autocreated for mount part: " // ._Rear_suspension_Three_wheeler.cil_Upper_Strut_To_Body[2].name)
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cil_Upper_Strut_To_Body.minor_role  &
   string_value = (._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body.minor_role)
!
part modify rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfr_Upper_Shock))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.origo))
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cir_Upper_Strut_To_Body  &
   comments = ("Autocreated for mount part: " // ._Rear_suspension_Three_wheeler.cir_Upper_Strut_To_Body[2].name)
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cir_Upper_Strut_To_Body.minor_role  &
   string_value = (._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.minor_role)
!
model display  &
   model_name = _Rear_suspension_Three_wheeler
