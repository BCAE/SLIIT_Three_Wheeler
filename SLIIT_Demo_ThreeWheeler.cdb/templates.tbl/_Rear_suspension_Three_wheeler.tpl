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
 TIMESTAMP      =  '2018/07/02,16:03:48'
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
!--------------------------- Plugins used by Model ----------------------------!
!
!
plugin load  &
   plugin_name = .MDI.plugins.acar
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
data_element create array ic_array  &
   array_name = ._Rear_suspension_Three_wheeler.suspension_parameters_ARRAY  &
   size = 1  &
   numbers = 0.0
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
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_Driveshaft_Inner  &
   location = 1900.0, -200.0, 300.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_Driveshaft_Inner  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_Driveshaft_Inner  &
   location = 1900.0, 0.0, 300.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_Driveshaft_Inner  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_driveshaft_Outer  &
   location = 1900.0, -340.5, 247.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_driveshaft_Outer  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_driveshaft_Outer  &
   location = 1900.0, 340.5, 247.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_driveshaft_Outer  &
   color = MAIZE
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
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_SA_wheel_center  &
   location = 1900.0, -440.5, 247.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_SA_wheel_center  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_SA_wheel_center  &
   location = 1900.0, 440.5, 247.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_SA_wheel_center  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_lower_shock_ext  &
   location = 2007.5687794907, -420.0, 294.1238200244  &
   orientation = 270.0d, 9.0257274148d, 90.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_lower_shock_ext  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_lower_shock_ext  &
   location = 2007.5687794907, 420.0, 294.1238200244  &
   orientation = 270.0d, 9.0257274148d, 90.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_lower_shock_ext  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_upper_shock_ext  &
   location = 1960.4312205093, -420.0, 590.8761799756  &
   orientation = 270.0d, 9.0257274148d, 90.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_upper_shock_ext  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_upper_shock_ext  &
   location = 1960.4312205093, 420.0, 590.8761799756  &
   orientation = 270.0d, 9.0257274148d, 90.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_upper_shock_ext  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfs_subframe_ref  &
   location = 1900.0, 0.0, 247.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfs_subframe_ref  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.mts_mount_j_1  &
   location = 1900.0, 0.0, 247.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.mts_mount_j_1  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_lower_spring_seat  &
   location = 2001.2936615279, -420.0, 333.6285399267  &
   orientation = 270.0d, 9.0257274148d, 90.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_lower_spring_seat  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_lower_spring_seat  &
   location = 2001.2936615279, 420.0, 333.6285399267  &
   orientation = 270.0d, 9.0257274148d, 90.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_lower_spring_seat  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_Hooke_joint_outer_iaxis  &
   location = 1900.0, 340.5, 247.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_Hooke_joint_outer_iaxis  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_Hooke_joint_outer_iaxis  &
   location = 1900.0, -340.5, 247.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_Hooke_joint_outer_iaxis  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_hooke_joint_outer_jaxis  &
   location = 1900.0, -340.5, 247.0  &
   orientation = 180.0d, 69.3323107683d, 180.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_hooke_joint_outer_jaxis  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_hooke_joint_outer_jaxis  &
   location = 1900.0, 340.5, 247.0  &
   orientation = 0.0d, 81.1527090535d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_hooke_joint_outer_jaxis  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_hooke_joint_inner_iaxis  &
   location = 1900.0, -200.0, 300.0  &
   orientation = 0.0d, 110.6676892317d, 180.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_hooke_joint_inner_iaxis  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_hooke_joint_inner_iaxis  &
   location = 1900.0, 0.0, 300.0  &
   orientation = 180.0d, 98.8472909465d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_hooke_joint_inner_iaxis  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_hooke_joint_inner_jaxis  &
   location = 1900.0, -200.0, 300.0  &
   orientation = 180.0d, 90.0d, 90.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_hooke_joint_inner_jaxis  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_hooke_joint_inner_jaxis  &
   location = 1900.0, 0.0, 300.0  &
   orientation = 0.0d, 90.0d, 270.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_hooke_joint_inner_jaxis  &
   color = MAIZE
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.mtl_mount_j_2  &
   location = 1900.0, -200.0, 300.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.mtl_mount_j_2  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.mtr_mount_j_2  &
   location = 1900.0, 0.0, 300.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.mtr_mount_j_2  &
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
point create  &
   point_name = ._Rear_suspension_Three_wheeler.ground.hps_Diff_Position  &
   location = 1900.0, -100.0, 300.0
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
!------------------------------- gel_driveshaft -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part create rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.gel_driveshaft  &
   location = 1900.0, -270.25, 273.5  &
   orientation = 0.0d, 110.6676892317d, 180.0d
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.gel_driveshaft
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_driveshaft.cm  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_driveshaft.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_driveshaft.inertia_frame  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_driveshaft.gralin_3  &
   location = 0.0, 0.0, -75.0820384646  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_driveshaft.gralin_3  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_driveshaft.jxl_joint_j_6  &
   location = 0.0, 0.0, 75.0820384646  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_driveshaft.jxl_joint_j_6  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_driveshaft.jxl_joint_i_7  &
   location = 0.0, 0.0, -75.0820384646  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_driveshaft.jxl_joint_i_7  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = ._Rear_suspension_Three_wheeler.gel_driveshaft  &
   mass = 0.3573476184  &
   center_of_mass_marker = ._Rear_suspension_Three_wheeler.gel_driveshaft.cm  &
   inertia_marker =   &
                    ._Rear_suspension_Three_wheeler.gel_driveshaft.inertia_frame  &
   ixx = 680.1696364464  &
   iyy = 680.1696364464  &
   izz = 17.3524755067  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = ._Rear_suspension_Three_wheeler.gel_driveshaft.gralin_driveshaft  &
   center_marker = ._Rear_suspension_Three_wheeler.gel_driveshaft.gralin_3  &
   angle_extent = 360.0  &
   length = 150.1640769292  &
   radius = 10.0  &
   side_count_for_body = 15  &
   segment_count_for_ends = 15
!
geometry attributes  &
   geometry_name = ._Rear_suspension_Three_wheeler.gel_driveshaft.gralin_driveshaft  &
   color = MAGENTA
!
part attributes  &
   part_name = ._Rear_suspension_Three_wheeler.gel_driveshaft  &
   visibility = on  &
   name_visibility = on
!
!------------------------------- ger_driveshaft -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part create rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.ger_driveshaft  &
   location = 1900.0, 170.25, 273.5  &
   orientation = 180.0d, 98.8472909465d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ger_driveshaft
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_driveshaft.cm  &
   location = 0.0, 0.0, 0.0  &
   orientation = 90.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_driveshaft.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_driveshaft.inertia_frame  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_driveshaft.gralin_4  &
   location = 0.0, 0.0, -172.3000652931  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_driveshaft.gralin_4  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_driveshaft.jxr_joint_j_6  &
   location = 0.0, 0.0, 172.3000652931  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_driveshaft.jxr_joint_j_6  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_driveshaft.jxr_joint_i_7  &
   location = 0.0, 0.0, -172.3000652931  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_driveshaft.jxr_joint_i_7  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = ._Rear_suspension_Three_wheeler.ger_driveshaft  &
   mass = 0.820049898  &
   center_of_mass_marker = ._Rear_suspension_Three_wheeler.ger_driveshaft.cm  &
   inertia_marker =   &
                    ._Rear_suspension_Three_wheeler.ger_driveshaft.inertia_frame  &
   ixx = 8134.9363011633  &
   iyy = 8134.9363011633  &
   izz = 39.8208775886  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = ._Rear_suspension_Three_wheeler.ger_driveshaft.gralin_driveshaft  &
   center_marker = ._Rear_suspension_Three_wheeler.ger_driveshaft.gralin_4  &
   angle_extent = 360.0  &
   length = 344.6001305862  &
   radius = 10.0  &
   side_count_for_body = 15  &
   segment_count_for_ends = 15
!
geometry attributes  &
   geometry_name = ._Rear_suspension_Three_wheeler.ger_driveshaft.gralin_driveshaft  &
   color = MAGENTA
!
part attributes  &
   part_name = ._Rear_suspension_Three_wheeler.ger_driveshaft  &
   visibility = on  &
   name_visibility = on
!
!------------------------------ gel_lower_strut -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part create rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.gel_lower_strut  &
   location = 1991.48, -420.0, 395.41  &
   orientation = 270.0d, 9.0257274148d, 90.0d
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.gel_lower_strut
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.bul_bumpstop_j_1  &
   location = 0.0, 0.0, -92.556028977  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.bul_bumpstop_j_1  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.cm  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.inertia_frame  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.gracyl_3  &
   location = 0.0, 0.0, -92.556028977  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.gracyl_3  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.jxl_joint_i_3  &
   location = 0.0, 0.0, -92.556028977  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.jxl_joint_i_3  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.jxl_joint_i_5  &
   location = 0.0, 0.0, 47.6803785639  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.jxl_joint_i_5  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.dal_damper_j_1  &
   location = 0.0, 0.0, -92.556028977  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.dal_damper_j_1  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.nsl_spring_j_1  &
   location = 0.0, 0.0, -62.556028977  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.nsl_spring_j_1  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = ._Rear_suspension_Three_wheeler.gel_lower_strut  &
   mass = 2.0  &
   center_of_mass_marker =   &
                           ._Rear_suspension_Three_wheeler.gel_lower_strut.cm  &
   inertia_marker =   &
                    ._Rear_suspension_Three_wheeler.gel_lower_strut.inertia_frame  &
   ixx = 1.0  &
   iyy = 1.0  &
   izz = 1.0  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.gracyl_lower_strut  &
   center_marker = ._Rear_suspension_Three_wheeler.gel_lower_strut.gracyl_3  &
   angle_extent = 360.0  &
   length = 150.0  &
   radius = 15.0  &
   side_count_for_body = 15  &
   segment_count_for_ends = 15
!
geometry attributes  &
   geometry_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.gracyl_lower_strut  &
   color = YELLOW
!
part attributes  &
   part_name = ._Rear_suspension_Three_wheeler.gel_lower_strut  &
   visibility = on  &
   name_visibility = on
!
!------------------------------ ger_lower_strut -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part create rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.ger_lower_strut  &
   location = 1991.48, 420.0, 395.41  &
   orientation = 270.0d, 9.0257274148d, 90.0d
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ger_lower_strut
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.bur_bumpstop_j_1  &
   location = 0.0, 0.0, -92.556028977  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.bur_bumpstop_j_1  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.cm  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.inertia_frame  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.gracyl_4  &
   location = 0.0, 0.0, -92.556028977  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.gracyl_4  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.jxr_joint_i_3  &
   location = 0.0, 0.0, -92.556028977  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.jxr_joint_i_3  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.jxr_joint_i_5  &
   location = 0.0, 0.0, 47.6803785639  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.jxr_joint_i_5  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.dar_damper_j_1  &
   location = 0.0, 0.0, -92.556028977  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.dar_damper_j_1  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.nsr_spring_j_1  &
   location = 0.0, 0.0, -62.556028977  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.nsr_spring_j_1  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = ._Rear_suspension_Three_wheeler.ger_lower_strut  &
   mass = 2.0  &
   center_of_mass_marker =   &
                           ._Rear_suspension_Three_wheeler.ger_lower_strut.cm  &
   inertia_marker =   &
                    ._Rear_suspension_Three_wheeler.ger_lower_strut.inertia_frame  &
   ixx = 1.0  &
   iyy = 1.0  &
   izz = 1.0  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.gracyl_lower_strut  &
   center_marker = ._Rear_suspension_Three_wheeler.ger_lower_strut.gracyl_4  &
   angle_extent = 360.0  &
   length = 150.0  &
   radius = 15.0  &
   side_count_for_body = 15  &
   segment_count_for_ends = 15
!
geometry attributes  &
   geometry_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.gracyl_lower_strut  &
   color = YELLOW
!
part attributes  &
   part_name = ._Rear_suspension_Three_wheeler.ger_lower_strut  &
   visibility = on  &
   name_visibility = on
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
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.jxl_joint_i_1  &
   location = 0.0, 0.0, -247.6172701974  &
   orientation = 180.0d, 88.8429790506d, 91.3308746615d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.jxl_joint_i_1  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.jxl_joint_j_2  &
   location = 9.5933709781E-002, 2.5247826599, 122.6068055584  &
   orientation = 0.0d, 91.1570209494d, 88.6691253385d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.jxl_joint_j_2  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.jxl_joint_j_3  &
   location = -54.4267279588, 20.8540478771, 230.294165082  &
   orientation = 269.8436814841d, 97.6932743643d, 88.8324685725d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.jxl_joint_j_3  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.coomarker_1  &
   location = -54.4267279588, 20.8540478771, 230.294165082  &
   orientation = 269.8436814841d, 97.6932743643d, 88.8324685725d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.coomarker_1  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.mas_kp1_1  &
   location = 9.5933709781E-002, -95.4552362812, 120.6279452002  &
   orientation = 270.0268784558d, 88.6693967372d, 88.8426669319d
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.mal_kp1_2  &
   location = -54.4267279588, 20.8540478771, 230.294165082  &
   orientation = 270.0268784558d, 88.6693967372d, 88.8426669319d
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
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.jxr_joint_i_1  &
   location = 0.0, 0.0, -247.6172701974  &
   orientation = 0.0d, 88.8429790506d, 88.6691253385d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.jxr_joint_i_1  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.jxr_joint_j_2  &
   location = 9.5933709781E-002, -2.5247826599, 122.6068055584  &
   orientation = 180.0d, 91.1570209494d, 91.3308746615d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.jxr_joint_j_2  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.jxr_joint_j_3  &
   location = -54.4267279588, -20.8540478771, 230.294165082  &
   orientation = 270.1563185159d, 97.6932743643d, 91.1675314275d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.jxr_joint_j_3  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.coomarker_2  &
   location = -54.4267279588, -20.8540478771, 230.294165082  &
   orientation = 270.1563185159d, 97.6932743643d, 91.1675314275d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.coomarker_2  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.mar_kp1_2  &
   location = -54.4267279588, -20.8540478771, 230.294165082  &
   orientation = 269.9731215442d, 88.6693967372d, 91.1573330681d
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
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Spindle.jxl_joint_i_2  &
   location = 0.0, 0.0, -98.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Spindle.jxl_joint_i_2  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Spindle.jxl_joint_i_6  &
   location = 0.0, 0.0, -198.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Spindle.jxl_joint_i_6  &
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
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Spindle.jxr_joint_i_2  &
   location = 0.0, 0.0, -98.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Spindle.jxr_joint_i_2  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Spindle.jxr_joint_i_6  &
   location = 0.0, 0.0, -198.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Spindle.jxr_joint_i_6  &
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
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body.jxl_joint_j_4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 90.0d, 170.9742725852d, 90.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body.jxl_joint_j_4  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body.nsl_spring_i_1  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body.nsl_spring_i_1  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body.mas_kp2_1  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
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
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.jxr_joint_j_4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 90.0d, 170.9742725852d, 90.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.jxr_joint_j_4  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.nsr_spring_i_1  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.nsr_spring_i_1  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.mas_kp2_2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part attributes  &
   part_name = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body  &
   visibility = on  &
   name_visibility = on
!
!------------------------------ gel_upper_strut -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part create rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.gel_upper_strut  &
   location = 1976.52, -420.0, 489.59  &
   orientation = 270.0d, 9.0257274148d, 90.0d
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.gel_upper_strut
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.bul_bumpstop_i_1  &
   location = 0.0, 0.0, 92.556028977  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.bul_bumpstop_i_1  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.cm  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.inertia_frame  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.gracyl_5  &
   location = 0.0, 0.0, -57.443971023  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.gracyl_5  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.jxl_joint_i_4  &
   location = 0.0, 0.0, 92.556028977  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.jxl_joint_i_4  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.jxl_joint_j_5  &
   location = 0.0, 0.0, -47.6803785639  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.jxl_joint_j_5  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.dal_damper_i_1  &
   location = 0.0, 0.0, 92.556028977  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.dal_damper_i_1  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = ._Rear_suspension_Three_wheeler.gel_upper_strut  &
   mass = 2.0  &
   center_of_mass_marker =   &
                           ._Rear_suspension_Three_wheeler.gel_upper_strut.cm  &
   inertia_marker =   &
                    ._Rear_suspension_Three_wheeler.gel_upper_strut.inertia_frame  &
   ixx = 1.0  &
   iyy = 1.0  &
   izz = 1.0  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.gracyl_upper_strut  &
   center_marker = ._Rear_suspension_Three_wheeler.gel_upper_strut.gracyl_5  &
   angle_extent = 360.0  &
   length = 150.0  &
   radius = 20.0  &
   side_count_for_body = 15  &
   segment_count_for_ends = 15
!
geometry attributes  &
   geometry_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.gracyl_upper_strut  &
   color = YELLOW
!
part attributes  &
   part_name = ._Rear_suspension_Three_wheeler.gel_upper_strut  &
   visibility = on  &
   name_visibility = on
!
!------------------------------ ger_upper_strut -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part create rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.ger_upper_strut  &
   location = 1976.52, 420.0, 489.59  &
   orientation = 270.0d, 9.0257274148d, 90.0d
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ger_upper_strut
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.bur_bumpstop_i_1  &
   location = 0.0, 0.0, 92.556028977  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.bur_bumpstop_i_1  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.cm  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.inertia_frame  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.gracyl_6  &
   location = 0.0, 0.0, -57.443971023  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.gracyl_6  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.jxr_joint_i_4  &
   location = 0.0, 0.0, 92.556028977  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.jxr_joint_i_4  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.jxr_joint_j_5  &
   location = 0.0, 0.0, -47.6803785639  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.jxr_joint_j_5  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.dar_damper_i_1  &
   location = 0.0, 0.0, 92.556028977  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.dar_damper_i_1  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = ._Rear_suspension_Three_wheeler.ger_upper_strut  &
   mass = 2.0  &
   center_of_mass_marker =   &
                           ._Rear_suspension_Three_wheeler.ger_upper_strut.cm  &
   inertia_marker =   &
                    ._Rear_suspension_Three_wheeler.ger_upper_strut.inertia_frame  &
   ixx = 1.0  &
   iyy = 1.0  &
   izz = 1.0  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.gracyl_upper_strut  &
   center_marker = ._Rear_suspension_Three_wheeler.ger_upper_strut.gracyl_6  &
   angle_extent = 360.0  &
   length = 150.0  &
   radius = 20.0  &
   side_count_for_body = 15  &
   segment_count_for_ends = 15
!
geometry attributes  &
   geometry_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.gracyl_upper_strut  &
   color = YELLOW
!
part attributes  &
   part_name = ._Rear_suspension_Three_wheeler.ger_upper_strut  &
   visibility = on  &
   name_visibility = on
!
!-------------------------------- ges_subframe --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part create rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.ges_subframe  &
   location = 1900.0, 0.0, 247.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ges_subframe
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ges_subframe.cm  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ges_subframe.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ges_subframe.inertia_frame  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ges_subframe.jxl_joint_j_1  &
   location = -370.0, -450.5, -8.5  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ges_subframe.jxl_joint_j_1  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ges_subframe.jxr_joint_j_1  &
   location = -370.0, 450.5, -8.5  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ges_subframe.jxr_joint_j_1  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ges_subframe.jxs_joint_i_1  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ges_subframe.jxs_joint_i_1  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = ._Rear_suspension_Three_wheeler.ges_subframe  &
   mass = 10.0  &
   center_of_mass_marker = ._Rear_suspension_Three_wheeler.ges_subframe.cm  &
   inertia_marker =   &
                    ._Rear_suspension_Three_wheeler.ges_subframe.inertia_frame  &
   ixx = 1.0  &
   iyy = 1.0  &
   izz = 1.0  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
part attributes  &
   part_name = ._Rear_suspension_Three_wheeler.ges_subframe  &
   visibility = on  &
   name_visibility = on
!
!---------------------------- mts_subframe_to_body ----------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part create rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.mts_subframe_to_body  &
   location = 1900.0, 0.0, 247.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.mts_subframe_to_body
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.mts_subframe_to_body.mount_i  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.mts_subframe_to_body.mount_i  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.mts_subframe_to_body.jxs_joint_j_1  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.mts_subframe_to_body.jxs_joint_j_1  &
   visibility = off  &
   name_visibility = off
!
part attributes  &
   part_name = ._Rear_suspension_Three_wheeler.mts_subframe_to_body  &
   visibility = on  &
   name_visibility = on
!
!--------------------------------- gel_tripot ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part create rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.gel_tripot  &
   location = 1900.0, -190.0, 300.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.gel_tripot
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_tripot.cm  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_tripot.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_tripot.inertia_frame  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_tripot.gracyl_7  &
   location = 0.0, 0.0, -10.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_tripot.gracyl_7  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_tripot.jxl_joint_j_7  &
   location = 0.0, 0.0, -10.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_tripot.jxl_joint_j_7  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_tripot.jxl_joint_i_8  &
   location = 0.0, 0.0, -10.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_tripot.jxl_joint_i_8  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = ._Rear_suspension_Three_wheeler.gel_tripot  &
   mass = 0.1  &
   center_of_mass_marker = ._Rear_suspension_Three_wheeler.gel_tripot.cm  &
   inertia_marker = ._Rear_suspension_Three_wheeler.gel_tripot.inertia_frame  &
   ixx = 1.0  &
   iyy = 1.0  &
   izz = 1.0  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = ._Rear_suspension_Three_wheeler.gel_tripot.gracyl_tripot  &
   center_marker = ._Rear_suspension_Three_wheeler.gel_tripot.gracyl_7  &
   angle_extent = 360.0  &
   length = 30.0  &
   radius = 15.0  &
   side_count_for_body = 15  &
   segment_count_for_ends = 15
!
geometry attributes  &
   geometry_name = ._Rear_suspension_Three_wheeler.gel_tripot.gracyl_tripot  &
   color = DARK_GRAY
!
part attributes  &
   part_name = ._Rear_suspension_Three_wheeler.gel_tripot  &
   visibility = on  &
   name_visibility = on
!
!--------------------------------- ger_tripot ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part create rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.ger_tripot  &
   location = 1900.0, -10.0, 300.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ger_tripot
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_tripot.cm  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_tripot.cm  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_tripot.inertia_frame  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_tripot.gracyl_8  &
   location = 0.0, 0.0, -10.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_tripot.gracyl_8  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_tripot.jxr_joint_j_7  &
   location = 0.0, 0.0, -10.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_tripot.jxr_joint_j_7  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_tripot.jxr_joint_i_8  &
   location = 0.0, 0.0, -10.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_tripot.jxr_joint_i_8  &
   visibility = off  &
   name_visibility = off
!
part create rigid_body mass_properties  &
   part_name = ._Rear_suspension_Three_wheeler.ger_tripot  &
   mass = 0.1  &
   center_of_mass_marker = ._Rear_suspension_Three_wheeler.ger_tripot.cm  &
   inertia_marker = ._Rear_suspension_Three_wheeler.ger_tripot.inertia_frame  &
   ixx = 1.0  &
   iyy = 1.0  &
   izz = 1.0  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = ._Rear_suspension_Three_wheeler.ger_tripot.gracyl_tripot  &
   center_marker = ._Rear_suspension_Three_wheeler.ger_tripot.gracyl_8  &
   angle_extent = 360.0  &
   length = 30.0  &
   radius = 15.0  &
   side_count_for_body = 15  &
   segment_count_for_ends = 15
!
geometry attributes  &
   geometry_name = ._Rear_suspension_Three_wheeler.ger_tripot.gracyl_tripot  &
   color = DARK_GRAY
!
part attributes  &
   part_name = ._Rear_suspension_Three_wheeler.ger_tripot  &
   visibility = on  &
   name_visibility = on
!
!------------------------- mtl_tripot_to_differential -------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part create rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.mtl_tripot_to_differential  &
   location = 1900.0, -200.0, 300.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.mtl_tripot_to_differential
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.mtl_tripot_to_differential.mount_i  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.mtl_tripot_to_differential.mount_i  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.mtl_tripot_to_differential.jxl_joint_j_8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.mtl_tripot_to_differential.jxl_joint_j_8  &
   visibility = off  &
   name_visibility = off
!
part attributes  &
   part_name = ._Rear_suspension_Three_wheeler.mtl_tripot_to_differential  &
   visibility = on  &
   name_visibility = on
!
!------------------------- mtr_tripot_to_differential -------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part create rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.mtr_tripot_to_differential  &
   location = 1900.0, 0.0, 300.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.mtr_tripot_to_differential
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.mtr_tripot_to_differential.mount_i  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.mtr_tripot_to_differential.mount_i  &
   visibility = off  &
   name_visibility = off
!
marker create  &
   marker_name = ._Rear_suspension_Three_wheeler.mtr_tripot_to_differential.jxr_joint_j_8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = ._Rear_suspension_Three_wheeler.mtr_tripot_to_differential.jxr_joint_j_8  &
   visibility = off  &
   name_visibility = off
!
part attributes  &
   part_name = ._Rear_suspension_Three_wheeler.mtr_tripot_to_differential  &
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
constraint create joint revolute  &
   joint_name = ._Rear_suspension_Three_wheeler.jolrev_swing_arm_pivot  &
   i_marker_name =   &
                   ._Rear_suspension_Three_wheeler.gel_Swing_Arm.jxl_joint_i_1  &
   j_marker_name =   &
                   ._Rear_suspension_Three_wheeler.ges_subframe.jxl_joint_j_1
!
constraint create joint revolute  &
   joint_name = ._Rear_suspension_Three_wheeler.jorrev_swing_arm_pivot  &
   i_marker_name =   &
                   ._Rear_suspension_Three_wheeler.ger_Swing_Arm.jxr_joint_i_1  &
   j_marker_name =   &
                   ._Rear_suspension_Three_wheeler.ges_subframe.jxr_joint_j_1
!
constraint create joint revolute  &
   joint_name = ._Rear_suspension_Three_wheeler.jolrev_spindle_swing_arm  &
   i_marker_name = ._Rear_suspension_Three_wheeler.gel_Spindle.jxl_joint_i_2  &
   j_marker_name =   &
                   ._Rear_suspension_Three_wheeler.gel_Swing_Arm.jxl_joint_j_2
!
constraint create joint revolute  &
   joint_name = ._Rear_suspension_Three_wheeler.jorrev_spindle_swing_arm  &
   i_marker_name = ._Rear_suspension_Three_wheeler.ger_Spindle.jxr_joint_i_2  &
   j_marker_name =   &
                   ._Rear_suspension_Three_wheeler.ger_Swing_Arm.jxr_joint_j_2
!
constraint create joint hooke  &
   joint_name = ._Rear_suspension_Three_wheeler.jolhoo_lower_kinematic  &
   i_marker_name =   &
                   ._Rear_suspension_Three_wheeler.gel_lower_strut.jxl_joint_i_3  &
   j_marker_name =   &
                   ._Rear_suspension_Three_wheeler.gel_Swing_Arm.jxl_joint_j_3
!
constraint attributes  &
   constraint_name = ._Rear_suspension_Three_wheeler.jolhoo_lower_kinematic  &
   size_of_icons = 20.0
!
constraint create joint hooke  &
   joint_name = ._Rear_suspension_Three_wheeler.jorhoo_lower_kinematic  &
   i_marker_name =   &
                   ._Rear_suspension_Three_wheeler.ger_lower_strut.jxr_joint_i_3  &
   j_marker_name =   &
                   ._Rear_suspension_Three_wheeler.ger_Swing_Arm.jxr_joint_j_3
!
constraint attributes  &
   constraint_name = ._Rear_suspension_Three_wheeler.jorhoo_lower_kinematic  &
   size_of_icons = 20.0
!
constraint create joint hooke  &
   joint_name = ._Rear_suspension_Three_wheeler.jolhoo_upper_kinematic  &
   i_marker_name =   &
                   ._Rear_suspension_Three_wheeler.gel_upper_strut.jxl_joint_i_4  &
   j_marker_name =   &
                   ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body.jxl_joint_j_4
!
constraint attributes  &
   constraint_name = ._Rear_suspension_Three_wheeler.jolhoo_upper_kinematic  &
   size_of_icons = 20.0
!
constraint create joint hooke  &
   joint_name = ._Rear_suspension_Three_wheeler.jorhoo_upper_kinematic  &
   i_marker_name =   &
                   ._Rear_suspension_Three_wheeler.ger_upper_strut.jxr_joint_i_4  &
   j_marker_name =   &
                   ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.jxr_joint_j_4
!
constraint attributes  &
   constraint_name = ._Rear_suspension_Three_wheeler.jorhoo_upper_kinematic  &
   size_of_icons = 20.0
!
constraint create joint cylindrical  &
   joint_name = ._Rear_suspension_Three_wheeler.jolcyl_lower_upper_strut  &
   i_marker_name =   &
                   ._Rear_suspension_Three_wheeler.gel_lower_strut.jxl_joint_i_5  &
   j_marker_name =   &
                   ._Rear_suspension_Three_wheeler.gel_upper_strut.jxl_joint_j_5
!
constraint create joint cylindrical  &
   joint_name = ._Rear_suspension_Three_wheeler.jorcyl_lower_upper_strut  &
   i_marker_name =   &
                   ._Rear_suspension_Three_wheeler.ger_lower_strut.jxr_joint_i_5  &
   j_marker_name =   &
                   ._Rear_suspension_Three_wheeler.ger_upper_strut.jxr_joint_j_5
!
constraint create joint fixed  &
   joint_name = ._Rear_suspension_Three_wheeler.mts_fixed_1  &
   i_marker_name =   &
                   ._Rear_suspension_Three_wheeler.mts_subframe_to_body.mount_i  &
   j_marker_name = ._Rear_suspension_Three_wheeler.ground.mts_mount_j_1
!
constraint attributes  &
   constraint_name = ._Rear_suspension_Three_wheeler.mts_fixed_1  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = ._Rear_suspension_Three_wheeler.josfix_subframe_to_body  &
   i_marker_name =   &
                   ._Rear_suspension_Three_wheeler.ges_subframe.jxs_joint_i_1  &
   j_marker_name =   &
                   ._Rear_suspension_Three_wheeler.mts_subframe_to_body.jxs_joint_j_1
!
constraint create joint hooke  &
   joint_name = ._Rear_suspension_Three_wheeler.jolhoo_Driveshaft_Outer  &
   i_marker_name = ._Rear_suspension_Three_wheeler.gel_Spindle.jxl_joint_i_6  &
   j_marker_name =   &
                   ._Rear_suspension_Three_wheeler.gel_driveshaft.jxl_joint_j_6
!
constraint create joint hooke  &
   joint_name = ._Rear_suspension_Three_wheeler.jorhoo_Driveshaft_Outer  &
   i_marker_name = ._Rear_suspension_Three_wheeler.ger_Spindle.jxr_joint_i_6  &
   j_marker_name =   &
                   ._Rear_suspension_Three_wheeler.ger_driveshaft.jxr_joint_j_6
!
constraint create joint convel  &
   joint_name = ._Rear_suspension_Three_wheeler.jolcon_driveshaft_Inner  &
   i_marker_name =   &
                   ._Rear_suspension_Three_wheeler.gel_driveshaft.jxl_joint_i_7  &
   j_marker_name = ._Rear_suspension_Three_wheeler.gel_tripot.jxl_joint_j_7
!
constraint attributes  &
   constraint_name = ._Rear_suspension_Three_wheeler.jolcon_driveshaft_Inner  &
   size_of_icons = 10.0
!
constraint create joint convel  &
   joint_name = ._Rear_suspension_Three_wheeler.jorcon_driveshaft_Inner  &
   i_marker_name =   &
                   ._Rear_suspension_Three_wheeler.ger_driveshaft.jxr_joint_i_7  &
   j_marker_name = ._Rear_suspension_Three_wheeler.ger_tripot.jxr_joint_j_7
!
constraint attributes  &
   constraint_name = ._Rear_suspension_Three_wheeler.jorcon_driveshaft_Inner  &
   size_of_icons = 10.0
!
constraint create joint fixed  &
   joint_name = ._Rear_suspension_Three_wheeler.mtl_fixed_2  &
   i_marker_name =   &
                   ._Rear_suspension_Three_wheeler.mtl_tripot_to_differential.mount_i  &
   j_marker_name = ._Rear_suspension_Three_wheeler.ground.mtl_mount_j_2
!
constraint attributes  &
   constraint_name = ._Rear_suspension_Three_wheeler.mtl_fixed_2  &
   visibility = off  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = ._Rear_suspension_Three_wheeler.mtr_fixed_2  &
   i_marker_name =   &
                   ._Rear_suspension_Three_wheeler.mtr_tripot_to_differential.mount_i  &
   j_marker_name = ._Rear_suspension_Three_wheeler.ground.mtr_mount_j_2
!
constraint attributes  &
   constraint_name = ._Rear_suspension_Three_wheeler.mtr_fixed_2  &
   visibility = off  &
   name_visibility = off
!
constraint create joint translational  &
   joint_name = ._Rear_suspension_Three_wheeler.joltra_tripot_to_differential  &
   i_marker_name = ._Rear_suspension_Three_wheeler.gel_tripot.jxl_joint_i_8  &
   j_marker_name =   &
                   ._Rear_suspension_Three_wheeler.mtl_tripot_to_differential.jxl_joint_j_8
!
constraint attributes  &
   constraint_name = ._Rear_suspension_Three_wheeler.joltra_tripot_to_differential  &
   size_of_icons = 10.0
!
constraint create joint translational  &
   joint_name = ._Rear_suspension_Three_wheeler.jortra_tripot_to_differential  &
   i_marker_name = ._Rear_suspension_Three_wheeler.ger_tripot.jxr_joint_i_8  &
   j_marker_name =   &
                   ._Rear_suspension_Three_wheeler.mtr_tripot_to_differential.jxr_joint_j_8
!
constraint attributes  &
   constraint_name = ._Rear_suspension_Three_wheeler.jortra_tripot_to_differential  &
   size_of_icons = 10.0
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
   translation_at_preload = 0.0, 0.0, 0.0  &
   rotation_at_preload = 0.0d, 0.0d, 0.0d  &
   formulation = linear  &
   length_tolerance = 1.0E-005  &
   damping_ratio = 0.0  &
   stiffness_matrix =  &
      0.0, 0.0, 0.0, 0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0, 0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0, 0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0, 0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0, 0.0, 0.0, 0.0,  &
      0.0, 0.0, 0.0, 0.0, 0.0, 0.0  &
   force_preload = 0.0, 0.0, 0.0  &
   torque_preload = 0.0, 0.0, 0.0
!
force attributes  &
   force_name = ._Rear_suspension_Three_wheeler._cv_bushing  &
   visibility = off  &
   name_visibility = off
!
!-------------------------- Adams View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = ._Rear_suspension_Three_wheeler.dal_ride_damper  &
   definition_name = .ACAR.forces.ac_damper  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = ._Rear_suspension_Three_wheeler.dal_ride_damper  &
   color = YELLOW
!
ude create instance  &
   instance_name = ._Rear_suspension_Three_wheeler.dar_ride_damper  &
   definition_name = .ACAR.forces.ac_damper  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = ._Rear_suspension_Three_wheeler.dar_ride_damper  &
   color = YELLOW
!
ude create instance  &
   instance_name = ._Rear_suspension_Three_wheeler.nsl_ride_spring  &
   definition_name = .ACAR.forces.ac_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = ._Rear_suspension_Three_wheeler.nsl_ride_spring  &
   color = SILVER
!
ude create instance  &
   instance_name = ._Rear_suspension_Three_wheeler.nsr_ride_spring  &
   definition_name = .ACAR.forces.ac_spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = ._Rear_suspension_Three_wheeler.nsr_ride_spring  &
   color = SILVER
!
ude create instance  &
   instance_name = ._Rear_suspension_Three_wheeler.bul_rear_Bumpstop  &
   definition_name = .ACAR.forces.ac_bumpstop  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = ._Rear_suspension_Three_wheeler.bul_rear_Bumpstop  &
   color = MIDNIGHT_BLUE
!
ude create instance  &
   instance_name = ._Rear_suspension_Three_wheeler.bur_rear_Bumpstop  &
   definition_name = .ACAR.forces.ac_bumpstop  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = ._Rear_suspension_Three_wheeler.bur_rear_Bumpstop  &
   color = MIDNIGHT_BLUE
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.dal_ride_damper.property_file  &
   string_value = "mdids://acar_shared/dampers.tbl/mdi_0001.dpr"
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.dal_ride_damper.scale_factor_compression  &
   real_value = 1.0
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.dal_ride_damper.scale_factor_rebound  &
   real_value = 1.0
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.dal_ride_damper.method  &
   integer_value = 0
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.dal_ride_damper.gas_preload_method  &
   integer_value = 0
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.dal_ride_damper.geoScale  &
   real_value = 0.15
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.dal_ride_damper.i_marker  &
   object_value = ._Rear_suspension_Three_wheeler.gel_upper_strut.dal_damper_i_1
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.dal_ride_damper.j_marker  &
   object_value = ._Rear_suspension_Three_wheeler.gel_lower_strut.dal_damper_j_1
!
ude modify instance  &
   instance_name = ._Rear_suspension_Three_wheeler.dal_ride_damper
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.dar_ride_damper.property_file  &
   string_value = "mdids://acar_shared/dampers.tbl/mdi_0001.dpr"
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.dar_ride_damper.scale_factor_compression  &
   real_value = 1.0
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.dar_ride_damper.scale_factor_rebound  &
   real_value = 1.0
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.dar_ride_damper.method  &
   integer_value = 0
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.dar_ride_damper.gas_preload_method  &
   integer_value = 0
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.dar_ride_damper.geoScale  &
   real_value = 0.15
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.dar_ride_damper.i_marker  &
   object_value = ._Rear_suspension_Three_wheeler.ger_upper_strut.dar_damper_i_1
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.dar_ride_damper.j_marker  &
   object_value = ._Rear_suspension_Three_wheeler.ger_lower_strut.dar_damper_j_1
!
ude modify instance  &
   instance_name = ._Rear_suspension_Three_wheeler.dar_ride_damper
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.nsl_ride_spring.property_file  &
   string_value = "mdids://SLIIT_Demo_ThreeWheeler/springs.tbl/mdi_0001.spr"
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.nsl_ride_spring.user_value  &
   real_value = 220.0
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.nsl_ride_spring.value_type  &
   string_value = "installed_length"
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.nsl_ride_spring.scale_factor  &
   real_value = 1.0
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.nsl_ride_spring.diameter  &
   real_value = (._Rear_suspension_Three_wheeler.nsl_ride_spring.dmCalc * ._Rear_suspension_Three_wheeler.nsl_ride_spring.geoScale)
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.nsl_ride_spring.geoScale  &
   real_value = 0.3
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.nsl_ride_spring.numCoils  &
   integer_value = 9
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.nsl_ride_spring.method  &
   integer_value = 0
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.nsl_ride_spring.independentAxis  &
   integer_value = 1
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.nsl_ride_spring.i_marker  &
   object_value = ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body.nsl_spring_i_1
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.nsl_ride_spring.j_marker  &
   object_value = ._Rear_suspension_Three_wheeler.gel_lower_strut.nsl_spring_j_1
!
ude modify instance  &
   instance_name = ._Rear_suspension_Three_wheeler.nsl_ride_spring
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.nsr_ride_spring.property_file  &
   string_value = "mdids://SLIIT_Demo_ThreeWheeler/springs.tbl/mdi_0001.spr"
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.nsr_ride_spring.user_value  &
   real_value = 220.0
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.nsr_ride_spring.value_type  &
   string_value = "installed_length"
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.nsr_ride_spring.scale_factor  &
   real_value = 1.0
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.nsr_ride_spring.diameter  &
   real_value = (._Rear_suspension_Three_wheeler.nsr_ride_spring.dmCalc * ._Rear_suspension_Three_wheeler.nsr_ride_spring.geoScale)
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.nsr_ride_spring.geoScale  &
   real_value = 0.3
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.nsr_ride_spring.numCoils  &
   integer_value = 9
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.nsr_ride_spring.method  &
   integer_value = 0
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.nsr_ride_spring.independentAxis  &
   integer_value = 1
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.nsr_ride_spring.i_marker  &
   object_value = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.nsr_spring_i_1
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.nsr_ride_spring.j_marker  &
   object_value = ._Rear_suspension_Three_wheeler.ger_lower_strut.nsr_spring_j_1
!
ude modify instance  &
   instance_name = ._Rear_suspension_Three_wheeler.nsr_ride_spring
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.bul_rear_Bumpstop.property_file  &
   string_value = "mdids://acar_shared/bumpstops.tbl/mdi_0001.bum"
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.bul_rear_Bumpstop.user_distance  &
   real_value = 200.0
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.bul_rear_Bumpstop.distance_type  &
   string_value = "clearance"
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.bul_rear_Bumpstop.scale_factor  &
   real_value = 1.0
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.bul_rear_Bumpstop.diameter  &
   real_value = 150.0
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.bul_rear_Bumpstop.method  &
   integer_value = -1
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.bul_rear_Bumpstop.dampingMethod  &
   integer_value = -1
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.bul_rear_Bumpstop.geoScale  &
   real_value = 0.2
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.bul_rear_Bumpstop.i_marker  &
   object_value = ._Rear_suspension_Three_wheeler.gel_upper_strut.bul_bumpstop_i_1
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.bul_rear_Bumpstop.j_marker  &
   object_value = ._Rear_suspension_Three_wheeler.gel_lower_strut.bul_bumpstop_j_1
!
ude modify instance  &
   instance_name = ._Rear_suspension_Three_wheeler.bul_rear_Bumpstop
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.bur_rear_Bumpstop.property_file  &
   string_value = "mdids://acar_shared/bumpstops.tbl/mdi_0001.bum"
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.bur_rear_Bumpstop.user_distance  &
   real_value = 200.0
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.bur_rear_Bumpstop.distance_type  &
   string_value = "clearance"
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.bur_rear_Bumpstop.scale_factor  &
   real_value = 1.0
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.bur_rear_Bumpstop.diameter  &
   real_value = 150.0
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.bur_rear_Bumpstop.method  &
   integer_value = -1
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.bur_rear_Bumpstop.dampingMethod  &
   integer_value = -1
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.bur_rear_Bumpstop.geoScale  &
   real_value = 0.2
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.bur_rear_Bumpstop.i_marker  &
   object_value = ._Rear_suspension_Three_wheeler.ger_upper_strut.bur_bumpstop_i_1
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.bur_rear_Bumpstop.j_marker  &
   object_value = ._Rear_suspension_Three_wheeler.ger_lower_strut.bur_bumpstop_j_1
!
ude modify instance  &
   instance_name = ._Rear_suspension_Three_wheeler.bur_rear_Bumpstop
!
undo end_block
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
   variable_name = ._Rear_suspension_Three_wheeler.gel_driveshaft.sml_sprung_mass_percent  &
   range = 0.0, 100.0  &
   delta_type = relative  &
   real_value = 100.0
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.ger_driveshaft.smr_sprung_mass_percent  &
   range = 0.0, 100.0  &
   delta_type = relative  &
   real_value = 100.0
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.sml_sprung_mass_percent  &
   range = 0.0, 100.0  &
   delta_type = relative  &
   real_value = 100.0
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.smr_sprung_mass_percent  &
   range = 0.0, 100.0  &
   delta_type = relative  &
   real_value = 100.0
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
   variable_name = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.minor_role  &
   string_value = "any"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.dependents  &
   object_value = (NONE)
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.sml_sprung_mass_percent  &
   range = 0.0, 100.0  &
   delta_type = relative  &
   real_value = 100.0
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.display_graphics  &
   string_value = "yes"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.smr_sprung_mass_percent  &
   range = 0.0, 100.0  &
   delta_type = relative  &
   real_value = 100.0
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.display_graphics  &
   string_value = "yes"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.ges_subframe.sms_sprung_mass_percent  &
   range = 0.0, 100.0  &
   delta_type = relative  &
   real_value = 100.0
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.mts_subframe_to_body.minor_role  &
   string_value = "inherit"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.mts_subframe_to_body.dependents  &
   object_value = (NONE)
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.gel_tripot.sml_sprung_mass_percent  &
   range = 0.0, 100.0  &
   delta_type = relative  &
   real_value = 100.0
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.ger_tripot.smr_sprung_mass_percent  &
   range = 0.0, 100.0  &
   delta_type = relative  &
   real_value = 100.0
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.mtl_tripot_to_differential.minor_role  &
   string_value = "any"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.mtl_tripot_to_differential.dependents  &
   object_value = (NONE)
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.mtr_tripot_to_differential.minor_role  &
   string_value = "any"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.mtr_tripot_to_differential.dependents  &
   object_value = (NONE)
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
   variable_name = ._Rear_suspension_Three_wheeler.cil_Upper_Strut_To_Body  &
   object_value = (NONE)  &
   comments = "Autocreated for mount part: mtl_Upper_Strut_To_Body"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cil_Upper_Strut_To_Body.matching_name  &
   string_value = "strut_to_body"
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
   variable_name = ._Rear_suspension_Three_wheeler.cir_Upper_Strut_To_Body  &
   object_value = (NONE)  &
   comments = "Autocreated for mount part: mtr_Upper_Strut_To_Body"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cir_Upper_Strut_To_Body.matching_name  &
   string_value = "strut_to_body"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cir_Upper_Strut_To_Body.entity  &
   string_value = "mount"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cir_Upper_Strut_To_Body.minor_role  &
   string_value = "any"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cis_subframe_to_body  &
   object_value = (NONE)  &
   comments = "Autocreated for mount part: mts_subframe_to_body"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cis_subframe_to_body.matching_name  &
   string_value = "subframe_to_body"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cis_subframe_to_body.entity  &
   string_value = "mount"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cis_subframe_to_body.minor_role  &
   string_value = "inherit"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cil_tripot_to_differential  &
   object_value = (NONE)  &
   comments = "Autocreated for mount part: mtl_tripot_to_differential"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cil_tripot_to_differential.matching_name  &
   string_value = "tripot_to_differential"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cil_tripot_to_differential.entity  &
   string_value = "mount"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cil_tripot_to_differential.minor_role  &
   string_value = "any"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cir_tripot_to_differential  &
   object_value = (NONE)  &
   comments = "Autocreated for mount part: mtr_tripot_to_differential"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cir_tripot_to_differential.matching_name  &
   string_value = "tripot_to_differential"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cir_tripot_to_differential.entity  &
   string_value = "mount"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cir_tripot_to_differential.minor_role  &
   string_value = "any"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cis_chassis_path_reference  &
   object_value = (NONE)
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cis_chassis_path_reference.matching_name  &
   string_value = "chassis_path_reference"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cis_chassis_path_reference.entity  &
   string_value = "marker"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cis_chassis_path_reference.minor_role  &
   string_value = "inherit"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cis_chassis_path_reference_adams_id  &
   integer_value = 0  &
   comments =   &
              "Passes the adams_id of the marker (used in function expressions)"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cis_chassis_path_reference_adams_id.matching_name  &
   string_value = "chassis_path_reference_adams_id"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cis_chassis_path_reference_adams_id.entity  &
   string_value = "marker"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cis_chassis_path_reference_adams_id.minor_role  &
   string_value = "inherit"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.col_wheel_center  &
   units = "length"  &
   real_value = 1900.0, -538.5, 247.0
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.col_wheel_center.matching_name  &
   string_value = "wheel_center"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.col_wheel_center.minor_role  &
   string_value = "rear"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.col_wheel_center.entity  &
   string_value = "location"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_wheel_center  &
   units = "length"  &
   real_value = 1900.0, 538.5, 247.0
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_wheel_center.matching_name  &
   string_value = "wheel_center"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_wheel_center.minor_role  &
   string_value = "rear"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_wheel_center.entity  &
   string_value = "location"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.col_suspension_upright  &
   object_value = (NONE)
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.col_suspension_upright.matching_name  &
   string_value = "suspension_upright"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.col_suspension_upright.minor_role  &
   string_value = "rear"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.col_suspension_upright.entity  &
   string_value = "mount"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_suspension_upright  &
   object_value = (NONE)
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_suspension_upright.matching_name  &
   string_value = "suspension_upright"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_suspension_upright.minor_role  &
   string_value = "rear"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_suspension_upright.entity  &
   string_value = "mount"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.col_tripot_to_differential  &
   units = "length"  &
   real_value = 1900.0, -200.0, 300.0
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.col_tripot_to_differential.matching_name  &
   string_value = "tripot_to_differential"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.col_tripot_to_differential.minor_role  &
   string_value = "rear"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.col_tripot_to_differential.entity  &
   string_value = "location"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_tripot_to_differential  &
   units = "length"  &
   real_value = 1900.0, 0.0, 300.0
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_tripot_to_differential.matching_name  &
   string_value = "tripot_to_differential"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_tripot_to_differential.minor_role  &
   string_value = "rear"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_tripot_to_differential.entity  &
   string_value = "location"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.col_suspension_mount  &
   object_value = (NONE)
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.col_suspension_mount.matching_name  &
   string_value = "suspension_mount"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.col_suspension_mount.minor_role  &
   string_value = "rear"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.col_suspension_mount.entity  &
   string_value = "mount"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_suspension_mount  &
   object_value = (NONE)
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_suspension_mount.matching_name  &
   string_value = "suspension_mount"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_suspension_mount.minor_role  &
   string_value = "rear"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_suspension_mount.entity  &
   string_value = "mount"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.col_ride_height_ref  &
   object_value = (NONE)
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.col_ride_height_ref.matching_name  &
   string_value = "svs_ride_height"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.col_ride_height_ref.minor_role  &
   string_value = "rear"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.col_ride_height_ref.entity  &
   string_value = "marker"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_ride_height_ref  &
   object_value = (NONE)
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_ride_height_ref.matching_name  &
   string_value = "svs_ride_height"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_ride_height_ref.minor_role  &
   string_value = "rear"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_ride_height_ref.entity  &
   string_value = "marker"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cos_suspension_parameters_ARRAY  &
   object_value = (NONE)
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cos_suspension_parameters_ARRAY.matching_name  &
   string_value = "suspension_parameters_ARRAY"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cos_suspension_parameters_ARRAY.minor_role  &
   string_value = "inherit"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cos_suspension_parameters_ARRAY.entity  &
   string_value = "array"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.phs_driveline_active  &
   integer_value = 1
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cos_driveline_active  &
   object_value = (NONE)
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cos_driveline_active.matching_name  &
   string_value = "driveline_active"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cos_driveline_active.minor_role  &
   string_value = "any"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cos_driveline_active.entity  &
   string_value = "parameter_integer"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cos_engine_to_subframe  &
   object_value = (NONE)
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cos_engine_to_subframe.matching_name  &
   string_value = "engine_to_subframe"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cos_engine_to_subframe.minor_role  &
   string_value = "rear"
!
variable create  &
   variable_name = ._Rear_suspension_Three_wheeler.cos_engine_to_subframe.entity  &
   string_value = "mount"
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
   variable_name = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.dependents  &
   object_value = ._Rear_suspension_Three_wheeler.mtr_fixed_1,  &
                  ._Rear_suspension_Three_wheeler.cir_Upper_Strut_To_Body
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.mts_subframe_to_body.dependents  &
   object_value = ._Rear_suspension_Three_wheeler.mts_fixed_1,  &
                  ._Rear_suspension_Three_wheeler.cis_subframe_to_body
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.mtl_tripot_to_differential.dependents  &
   object_value = ._Rear_suspension_Three_wheeler.mtl_fixed_2,  &
                  ._Rear_suspension_Three_wheeler.cil_tripot_to_differential
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.mtr_tripot_to_differential.dependents  &
   object_value = ._Rear_suspension_Three_wheeler.mtr_fixed_2,  &
                  ._Rear_suspension_Three_wheeler.cir_tripot_to_differential
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cil_Upper_Strut_To_Body  &
   object_value = ._Rear_suspension_Three_wheeler.ground.mtl_mount_j_1,  &
                  ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body,  &
                  ._Rear_suspension_Three_wheeler.mtl_fixed_1
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cir_Upper_Strut_To_Body  &
   object_value = ._Rear_suspension_Three_wheeler.ground.mtr_mount_j_1,  &
                  ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body,  &
                  ._Rear_suspension_Three_wheeler.mtr_fixed_1
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cis_subframe_to_body  &
   object_value = ._Rear_suspension_Three_wheeler.ground.mts_mount_j_1,  &
                  ._Rear_suspension_Three_wheeler.mts_subframe_to_body,  &
                  ._Rear_suspension_Three_wheeler.mts_fixed_1
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cil_tripot_to_differential  &
   object_value = ._Rear_suspension_Three_wheeler.ground.mtl_mount_j_2,  &
                  ._Rear_suspension_Three_wheeler.mtl_tripot_to_differential,  &
                  ._Rear_suspension_Three_wheeler.mtl_fixed_2
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cir_tripot_to_differential  &
   object_value = ._Rear_suspension_Three_wheeler.ground.mtr_mount_j_2,  &
                  ._Rear_suspension_Three_wheeler.mtr_tripot_to_differential,  &
                  ._Rear_suspension_Three_wheeler.mtr_fixed_2
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cis_chassis_path_reference  &
   object_value = ._Rear_suspension_Three_wheeler.ground._cv_marker
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.col_suspension_upright  &
   object_value = ._Rear_suspension_Three_wheeler.gel_Swing_Arm
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_suspension_upright  &
   object_value = ._Rear_suspension_Three_wheeler.ger_Swing_Arm
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.col_suspension_mount  &
   object_value = ._Rear_suspension_Three_wheeler.gel_Spindle
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_suspension_mount  &
   object_value = ._Rear_suspension_Three_wheeler.ger_Spindle
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.col_ride_height_ref  &
   object_value = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.coomarker_1
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_ride_height_ref  &
   object_value = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.coomarker_2
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cos_suspension_parameters_ARRAY  &
   object_value =   &
                  ._Rear_suspension_Three_wheeler.suspension_parameters_ARRAY
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cos_driveline_active  &
   object_value = ._Rear_suspension_Three_wheeler.phs_driveline_active
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cos_engine_to_subframe  &
   object_value = ._Rear_suspension_Three_wheeler.ges_subframe
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
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = ._Rear_suspension_Three_wheeler.dal_ride_damper
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = ._Rear_suspension_Three_wheeler.dar_ride_damper
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = ._Rear_suspension_Three_wheeler.nsl_ride_spring
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = ._Rear_suspension_Three_wheeler.nsr_ride_spring
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = ._Rear_suspension_Three_wheeler.bul_rear_Bumpstop
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = ._Rear_suspension_Three_wheeler.bur_rear_Bumpstop
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_Driveshaft_Inner  &
   location =   &
      (LOC_RELATIVE_TO({0.0, -100.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.hps_Diff_Position))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, -90.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.origo))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_Driveshaft_Inner  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 100.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.hps_Diff_Position))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 90.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.origo))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_driveshaft_Outer  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, -100.0}mm, ._Rear_suspension_Three_wheeler.ground.cfl_SA_wheel_center))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfl_SA_wheel_center))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_driveshaft_Outer  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, -100.0}mm, ._Rear_suspension_Three_wheeler.ground.cfr_SA_wheel_center))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfr_SA_wheel_center))
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
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_SA_wheel_center  &
   location =   &
      (LOC_ON_AXIS(._Rear_suspension_Three_wheeler.ground.cfl_Wheel_Center, -98.0mm, "Z"))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfl_Wheel_Center))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_SA_wheel_center  &
   location =   &
      (LOC_ON_AXIS(._Rear_suspension_Three_wheeler.ground.cfr_Wheel_Center, -98.0mm, "Z"))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfr_Wheel_Center))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_lower_shock_ext  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, -10.0}mm, ._Rear_suspension_Three_wheeler.ground.cfl_Lower_Shock))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfl_Lower_Shock))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_lower_shock_ext  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, -10.0}mm, ._Rear_suspension_Three_wheeler.ground.cfr_Lower_Shock))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfr_Lower_Shock))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_upper_shock_ext  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 10.0}mm, ._Rear_suspension_Three_wheeler.ground.cfl_Upper_Shock))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfl_Upper_Shock))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_upper_shock_ext  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 10.0}mm, ._Rear_suspension_Three_wheeler.ground.cfr_Upper_Shock))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfr_Upper_Shock))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfs_subframe_ref  &
   location =   &
      (LOC_CENTERED({._Rear_suspension_Three_wheeler.ground.hpl_Wheel_Center.loc, ._Rear_suspension_Three_wheeler.ground.hpr_Wheel_Center.loc}, 2))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.origo))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.mts_mount_j_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.mts_subframe_to_body))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.mts_subframe_to_body))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_lower_spring_seat  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 30.0}mm, ._Rear_suspension_Three_wheeler.ground.cfl_Lower_Shock))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfl_Lower_Shock))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_lower_spring_seat  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 30.0}mm, ._Rear_suspension_Three_wheeler.ground.cfr_Lower_Shock))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfr_Lower_Shock))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_Hooke_joint_outer_iaxis  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfr_driveshaft_Outer))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfr_driveshaft_Outer))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_Hooke_joint_outer_iaxis  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfl_driveshaft_Outer))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfl_driveshaft_Outer))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_hooke_joint_outer_jaxis  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfl_driveshaft_Outer))  &
   orientation =   &
      (ORI_ALONG_AXIS(._Rear_suspension_Three_wheeler.ground.cfl_hooke_joint_outer_jaxis, ._Rear_suspension_Three_wheeler.ground.cfl_Driveshaft_Inner, "Z"))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_hooke_joint_outer_jaxis  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfr_driveshaft_Outer))  &
   orientation =   &
      (ORI_ALONG_AXIS(._Rear_suspension_Three_wheeler.ground.cfr_hooke_joint_outer_jaxis, ._Rear_suspension_Three_wheeler.ground.cfr_Driveshaft_Inner, "Z"))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_hooke_joint_inner_iaxis  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfl_Driveshaft_Inner))  &
   orientation =   &
      (ORI_ALONG_AXIS(._Rear_suspension_Three_wheeler.ground.cfl_hooke_joint_inner_iaxis, ._Rear_suspension_Three_wheeler.ground.cfl_driveshaft_Outer, "Z"))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_hooke_joint_inner_iaxis  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfr_Driveshaft_Inner))  &
   orientation =   &
      (ORI_ALONG_AXIS(._Rear_suspension_Three_wheeler.ground.cfr_hooke_joint_inner_iaxis, ._Rear_suspension_Three_wheeler.ground.cfr_driveshaft_Outer, "Z"))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfl_hooke_joint_inner_jaxis  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfl_Driveshaft_Inner))  &
   orientation =   &
      (ORI_RELATIVE_TO({-90.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfl_Driveshaft_Inner))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.cfr_hooke_joint_inner_jaxis  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfr_Driveshaft_Inner))  &
   orientation =   &
      (ORI_RELATIVE_TO({-90.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfr_Driveshaft_Inner))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.mtl_mount_j_2  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.mtl_tripot_to_differential))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.mtl_tripot_to_differential))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ground.mtr_mount_j_2  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.mtr_tripot_to_differential))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.mtr_tripot_to_differential))
!
data_element modify string  &
   string_name = ._Rear_suspension_Three_wheeler.minor_role_string  &
   string = (._Rear_suspension_Three_wheeler.minor_role)
!
material modify  &
   material_name = ._Rear_suspension_Three_wheeler.steel  &
   density = (7801.0(kg/meter**3))  &
   youngs_modulus = (2.07E+011(Newton/meter**2))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_driveshaft.inertia_frame  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.gel_driveshaft.cm))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.gel_driveshaft))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_driveshaft
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_driveshaft.gralin_3  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfl_Driveshaft_Inner))  &
   orientation =   &
      (ORI_ALONG_AXIS(._Rear_suspension_Three_wheeler.ground.cfl_Driveshaft_Inner, ._Rear_suspension_Three_wheeler.ground.cfl_driveshaft_Outer, "Z"))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_driveshaft
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_driveshaft.jxl_joint_j_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfl_driveshaft_Outer))  &
   orientation =   &
      (ORI_IN_PLANE(._Rear_suspension_Three_wheeler.ground.cfl_hooke_joint_outer_jaxis, ._Rear_suspension_Three_wheeler.gel_driveshaft.jxl_joint_j_6, ._Rear_suspension_Three_wheeler.ground.cfl_Hooke_joint_outer_iaxis, "Z_ZX"))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_driveshaft
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_driveshaft.jxl_joint_i_7  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.gel_tripot.jxl_joint_j_7))  &
   orientation =   &
      (ORI_IN_PLANE(._Rear_suspension_Three_wheeler.gel_driveshaft.jxl_joint_i_7, ._Rear_suspension_Three_wheeler.ground.cfl_hooke_joint_inner_iaxis, ._Rear_suspension_Three_wheeler.ground.cfl_hooke_joint_inner_jaxis, "Z_ZX"))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_driveshaft
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
geometry modify shape cylinder  &
   cylinder_name = ._Rear_suspension_Three_wheeler.gel_driveshaft.gralin_driveshaft  &
   length = (DM(._Rear_suspension_Three_wheeler.ground.cfl_Driveshaft_Inner, ._Rear_suspension_Three_wheeler.ground.cfl_driveshaft_Outer))
!
part modify rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.gel_driveshaft  &
   location =   &
      (LOC_CENTERED({._Rear_suspension_Three_wheeler.ground.cfl_Driveshaft_Inner.loc, ._Rear_suspension_Three_wheeler.ground.cfl_driveshaft_Outer.loc}, 2))  &
   orientation =   &
      (ORI_ALONG_AXIS(._Rear_suspension_Three_wheeler.ground.cfl_Driveshaft_Inner, ._Rear_suspension_Three_wheeler.ground.cfl_driveshaft_Outer, "Z"))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_driveshaft.inertia_frame  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ger_driveshaft.cm))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ger_driveshaft))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_driveshaft
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_driveshaft.gralin_4  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfr_Driveshaft_Inner))  &
   orientation =   &
      (ORI_ALONG_AXIS(._Rear_suspension_Three_wheeler.ground.cfr_Driveshaft_Inner, ._Rear_suspension_Three_wheeler.ground.cfr_driveshaft_Outer, "Z"))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_driveshaft
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_driveshaft.jxr_joint_j_6  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfr_driveshaft_Outer))  &
   orientation =   &
      (ORI_IN_PLANE(._Rear_suspension_Three_wheeler.ground.cfr_hooke_joint_outer_jaxis, ._Rear_suspension_Three_wheeler.ger_driveshaft.jxr_joint_j_6, ._Rear_suspension_Three_wheeler.ground.cfr_Hooke_joint_outer_iaxis, "Z_ZX"))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_driveshaft
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_driveshaft.jxr_joint_i_7  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ger_tripot.jxr_joint_j_7))  &
   orientation =   &
      (ORI_IN_PLANE(._Rear_suspension_Three_wheeler.ger_driveshaft.jxr_joint_i_7, ._Rear_suspension_Three_wheeler.ground.cfr_hooke_joint_inner_iaxis, ._Rear_suspension_Three_wheeler.ground.cfr_hooke_joint_inner_jaxis, "Z_ZX"))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_driveshaft
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
geometry modify shape cylinder  &
   cylinder_name = ._Rear_suspension_Three_wheeler.ger_driveshaft.gralin_driveshaft  &
   length = (DM(._Rear_suspension_Three_wheeler.ground.cfr_Driveshaft_Inner, ._Rear_suspension_Three_wheeler.ground.cfr_driveshaft_Outer))
!
part modify rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.ger_driveshaft  &
   location =   &
      (LOC_CENTERED({._Rear_suspension_Three_wheeler.ground.cfr_Driveshaft_Inner.loc, ._Rear_suspension_Three_wheeler.ground.cfr_driveshaft_Outer.loc}, 2))  &
   orientation =   &
      (ORI_ALONG_AXIS(._Rear_suspension_Three_wheeler.ground.cfr_Driveshaft_Inner, ._Rear_suspension_Three_wheeler.ground.cfr_driveshaft_Outer, "Z"))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.inertia_frame  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.gel_lower_strut.cm))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.gel_lower_strut))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_lower_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.gracyl_3  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfl_Lower_Shock))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfl_Lower_Shock))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_lower_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.jxl_joint_i_3  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.gel_Swing_Arm.jxl_joint_j_3))  &
   orientation =   &
      (ORI_IN_PLANE(._Rear_suspension_Three_wheeler.gel_lower_strut.jxl_joint_i_3, ._Rear_suspension_Three_wheeler.ground.cfl_Upper_Shock, ._Rear_suspension_Three_wheeler.ground.cfl_lower_shock_ext, "Z_ZX"))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_lower_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.jxl_joint_i_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.gel_upper_strut.jxl_joint_j_5))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.gel_upper_strut.jxl_joint_j_5))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_lower_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.dal_damper_j_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfl_Lower_Shock))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_lower_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.nsl_spring_j_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfl_lower_spring_seat))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_lower_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part modify rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.gel_lower_strut  &
   location =   &
      (LOC_ALONG_LINE(._Rear_suspension_Three_wheeler.ground.hpl_Lower_Shock, ._Rear_suspension_Three_wheeler.ground.hpl_Upper_Shock, 0.33 * DM(._Rear_suspension_Three_wheeler.ground.hpl_Lower_Shock, ._Rear_suspension_Three_wheeler.ground.hpl_Upper_Shock)))  &
   orientation =   &
      (ORI_ALONG_AXIS(._Rear_suspension_Three_wheeler.ground.hpl_Lower_Shock, ._Rear_suspension_Three_wheeler.ground.hpl_Upper_Shock, "Z"))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_lower_strut.bul_bumpstop_j_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfl_Lower_Shock))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_lower_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.inertia_frame  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ger_lower_strut.cm))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ger_lower_strut))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_lower_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.gracyl_4  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfr_Lower_Shock))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfr_Lower_Shock))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_lower_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.jxr_joint_i_3  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ger_Swing_Arm.jxr_joint_j_3))  &
   orientation =   &
      (ORI_IN_PLANE(._Rear_suspension_Three_wheeler.ger_lower_strut.jxr_joint_i_3, ._Rear_suspension_Three_wheeler.ground.cfr_Upper_Shock, ._Rear_suspension_Three_wheeler.ground.cfr_lower_shock_ext, "Z_ZX"))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_lower_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.jxr_joint_i_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ger_upper_strut.jxr_joint_j_5))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ger_upper_strut.jxr_joint_j_5))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_lower_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.dar_damper_j_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfr_Lower_Shock))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_lower_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.nsr_spring_j_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfr_lower_spring_seat))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_lower_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part modify rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.ger_lower_strut  &
   location =   &
      (LOC_ALONG_LINE(._Rear_suspension_Three_wheeler.ground.hpr_Lower_Shock, ._Rear_suspension_Three_wheeler.ground.hpr_Upper_Shock, 0.33 * DM(._Rear_suspension_Three_wheeler.ground.hpr_Lower_Shock, ._Rear_suspension_Three_wheeler.ground.hpr_Upper_Shock)))  &
   orientation =   &
      (ORI_ALONG_AXIS(._Rear_suspension_Three_wheeler.ground.hpr_Lower_Shock, ._Rear_suspension_Three_wheeler.ground.hpr_Upper_Shock, "Z"))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_lower_strut.bur_bumpstop_j_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfr_Lower_Shock))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_lower_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
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
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.jxl_joint_i_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ges_subframe.jxl_joint_j_1))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ges_subframe.jxl_joint_j_1))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_Swing_Arm
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.jxl_joint_j_2  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfl_SA_wheel_center))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfl_SA_wheel_center))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_Swing_Arm
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.jxl_joint_j_3  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfl_Lower_Shock))  &
   orientation =   &
      (ORI_IN_PLANE(._Rear_suspension_Three_wheeler.ground.cfl_lower_shock_ext, ._Rear_suspension_Three_wheeler.gel_Swing_Arm.jxl_joint_j_3, ._Rear_suspension_Three_wheeler.ground.cfl_Upper_Shock, "Z_ZX"))  &
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
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.coomarker_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfl_Lower_Shock))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfl_Lower_Shock))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_Swing_Arm
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.mas_kp1_1  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.hpl_Wheel_Center))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.origo))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_Swing_Arm
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Swing_Arm.mal_kp1_2  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.hpl_Lower_Shock))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.origo))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_Swing_Arm
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
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
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.jxr_joint_i_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ges_subframe.jxr_joint_j_1))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ges_subframe.jxr_joint_j_1))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_Swing_Arm
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.jxr_joint_j_2  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfr_SA_wheel_center))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfr_SA_wheel_center))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_Swing_Arm
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.jxr_joint_j_3  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfr_Lower_Shock))  &
   orientation =   &
      (ORI_IN_PLANE(._Rear_suspension_Three_wheeler.ground.cfr_lower_shock_ext, ._Rear_suspension_Three_wheeler.ger_Swing_Arm.jxr_joint_j_3, ._Rear_suspension_Three_wheeler.ground.cfr_Upper_Shock, "Z_ZX"))  &
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
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.coomarker_2  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfr_Lower_Shock))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfr_Lower_Shock))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_Swing_Arm
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Swing_Arm.mar_kp1_2  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.hpr_Lower_Shock))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.origo))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_Swing_Arm
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
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
   marker_name = ._Rear_suspension_Three_wheeler.gel_Spindle.jxl_joint_i_2  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.gel_Swing_Arm.jxl_joint_j_2))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.gel_Swing_Arm.jxl_joint_j_2))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_Spindle
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_Spindle.jxl_joint_i_6  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.gel_driveshaft.jxl_joint_j_6))  &
   orientation =   &
      (ORI_IN_PLANE(._Rear_suspension_Three_wheeler.gel_Spindle.jxl_joint_i_6, ._Rear_suspension_Three_wheeler.ground.cfl_Hooke_joint_outer_iaxis, ._Rear_suspension_Three_wheeler.ground.cfl_hooke_joint_outer_jaxis, "Z_ZX"))  &
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
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Spindle.jxr_joint_i_2  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ger_Swing_Arm.jxr_joint_j_2))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ger_Swing_Arm.jxr_joint_j_2))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_Spindle
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_Spindle.jxr_joint_i_6  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ger_driveshaft.jxr_joint_j_6))  &
   orientation =   &
      (ORI_IN_PLANE(._Rear_suspension_Three_wheeler.ger_Spindle.jxr_joint_i_6, ._Rear_suspension_Three_wheeler.ground.cfr_Hooke_joint_outer_iaxis, ._Rear_suspension_Three_wheeler.ground.cfr_hooke_joint_outer_jaxis, "Z_ZX"))  &
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
   marker_name = ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body.jxl_joint_j_4  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfl_Upper_Shock))  &
   orientation =   &
      (ORI_IN_PLANE(._Rear_suspension_Three_wheeler.ground.cfl_upper_shock_ext, ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body.jxl_joint_j_4, ._Rear_suspension_Three_wheeler.ground.cfl_Lower_Shock, "Z_ZX"))  &
   relative_to = ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body.nsl_spring_i_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.hpl_Upper_Shock))  &
   relative_to = ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body
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
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body.mas_kp2_1  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.hpl_Upper_Shock))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.origo))  &
   relative_to = ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.jxr_joint_j_4  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfr_Upper_Shock))  &
   orientation =   &
      (ORI_IN_PLANE(._Rear_suspension_Three_wheeler.ground.cfr_upper_shock_ext, ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.jxr_joint_j_4, ._Rear_suspension_Three_wheeler.ground.cfr_Lower_Shock, "Z_ZX"))  &
   relative_to = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.nsr_spring_i_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.hpr_Upper_Shock))  &
   relative_to = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part modify rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfr_Upper_Shock))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.origo))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.mas_kp2_2  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.hpr_Upper_Shock))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.origo))  &
   relative_to = ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.inertia_frame  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.gel_upper_strut.cm))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.gel_upper_strut))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_upper_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.gracyl_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, -150.0}mm, ._Rear_suspension_Three_wheeler.ground.cfl_Upper_Shock))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfl_Upper_Shock))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_upper_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.jxl_joint_i_4  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body.jxl_joint_j_4))  &
   orientation =   &
      (ORI_IN_PLANE(._Rear_suspension_Three_wheeler.gel_upper_strut.jxl_joint_i_4, ._Rear_suspension_Three_wheeler.ground.cfl_Lower_Shock, ._Rear_suspension_Three_wheeler.ground.cfl_upper_shock_ext, "Z_ZX"))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_upper_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.jxl_joint_j_5  &
   location =   &
      (LOC_RELATIVE_TO(LOC_CENTERED({._Rear_suspension_Three_wheeler.ground.hpl_Upper_Shock.loc, ._Rear_suspension_Three_wheeler.ground.hpl_Lower_Shock.loc}, 2), ._Rear_suspension_Three_wheeler.ground))  &
   orientation =   &
      (ORI_ALONG_AXIS(._Rear_suspension_Three_wheeler.ground.hpl_Upper_Shock, ._Rear_suspension_Three_wheeler.ground.hpl_Lower_Shock, "Z"))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_upper_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.dal_damper_i_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfl_Upper_Shock))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_upper_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part modify rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.gel_upper_strut  &
   location =   &
      (LOC_ALONG_LINE(._Rear_suspension_Three_wheeler.ground.hpl_Lower_Shock, ._Rear_suspension_Three_wheeler.ground.hpl_Upper_Shock, 0.67 * DM(._Rear_suspension_Three_wheeler.ground.hpl_Lower_Shock, ._Rear_suspension_Three_wheeler.ground.hpl_Upper_Shock)))  &
   orientation =   &
      (ORI_ALONG_AXIS(._Rear_suspension_Three_wheeler.ground.hpl_Lower_Shock, ._Rear_suspension_Three_wheeler.ground.hpl_Upper_Shock, "Z"))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_upper_strut.bul_bumpstop_i_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.hpl_Upper_Shock))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_upper_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.inertia_frame  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ger_upper_strut.cm))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ger_upper_strut))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_upper_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.gracyl_6  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, -150.0}mm, ._Rear_suspension_Three_wheeler.ground.cfr_Upper_Shock))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfr_Upper_Shock))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_upper_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.jxr_joint_i_4  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.jxr_joint_j_4))  &
   orientation =   &
      (ORI_IN_PLANE(._Rear_suspension_Three_wheeler.ger_upper_strut.jxr_joint_i_4, ._Rear_suspension_Three_wheeler.ground.cfr_Lower_Shock, ._Rear_suspension_Three_wheeler.ground.cfr_upper_shock_ext, "Z_ZX"))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_upper_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.jxr_joint_j_5  &
   location =   &
      (LOC_RELATIVE_TO(LOC_CENTERED({._Rear_suspension_Three_wheeler.ground.hpr_Upper_Shock.loc, ._Rear_suspension_Three_wheeler.ground.hpr_Lower_Shock.loc}, 2), ._Rear_suspension_Three_wheeler.ground))  &
   orientation =   &
      (ORI_ALONG_AXIS(._Rear_suspension_Three_wheeler.ground.hpr_Upper_Shock, ._Rear_suspension_Three_wheeler.ground.hpr_Lower_Shock, "Z"))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_upper_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.dar_damper_i_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfr_Upper_Shock))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_upper_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part modify rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.ger_upper_strut  &
   location =   &
      (LOC_ALONG_LINE(._Rear_suspension_Three_wheeler.ground.hpr_Lower_Shock, ._Rear_suspension_Three_wheeler.ground.hpr_Upper_Shock, 0.67 * DM(._Rear_suspension_Three_wheeler.ground.hpr_Lower_Shock, ._Rear_suspension_Three_wheeler.ground.hpr_Upper_Shock)))  &
   orientation =   &
      (ORI_ALONG_AXIS(._Rear_suspension_Three_wheeler.ground.hpr_Lower_Shock, ._Rear_suspension_Three_wheeler.ground.hpr_Upper_Shock, "Z"))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_upper_strut.bur_bumpstop_i_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.hpr_Upper_Shock))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_upper_strut
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ges_subframe.inertia_frame  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ges_subframe.cm))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ges_subframe))  &
   relative_to = ._Rear_suspension_Three_wheeler.ges_subframe
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ges_subframe.jxl_joint_j_1  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfl_SA_Pivot_point))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfl_SA_Pivot_point))  &
   relative_to = ._Rear_suspension_Three_wheeler.ges_subframe
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ges_subframe.jxr_joint_j_1  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfr_SA_Pivot_point))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfr_SA_Pivot_point))  &
   relative_to = ._Rear_suspension_Three_wheeler.ges_subframe
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ges_subframe.jxs_joint_i_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.mts_subframe_to_body.jxs_joint_j_1))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.mts_subframe_to_body.jxs_joint_j_1))  &
   relative_to = ._Rear_suspension_Three_wheeler.ges_subframe
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part modify rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.ges_subframe  &
   location =   &
      (LOC_ALONG_LINE(._Rear_suspension_Three_wheeler.ground.hpl_Wheel_Center, ._Rear_suspension_Three_wheeler.ground.hpr_Wheel_Center, 0.5 * DM(._Rear_suspension_Three_wheeler.ground.hpl_Wheel_Center, ._Rear_suspension_Three_wheeler.ground.hpr_Wheel_Center)))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.mts_subframe_to_body.jxs_joint_j_1  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfs_subframe_ref))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.origo))  &
   relative_to = ._Rear_suspension_Three_wheeler.mts_subframe_to_body
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part modify rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.mts_subframe_to_body  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfs_subframe_ref))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.origo))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_tripot.inertia_frame  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.gel_tripot.cm))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.gel_tripot))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_tripot
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_tripot.gracyl_7  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfl_Driveshaft_Inner))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfl_Driveshaft_Inner))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_tripot
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_tripot.jxl_joint_j_7  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfl_hooke_joint_inner_iaxis))  &
   orientation =   &
      (ORI_IN_PLANE(._Rear_suspension_Three_wheeler.gel_tripot.jxl_joint_j_7, ._Rear_suspension_Three_wheeler.ground.cfl_hooke_joint_inner_jaxis, ._Rear_suspension_Three_wheeler.ground.cfl_hooke_joint_inner_iaxis, "Z_ZX"))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_tripot
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.gel_tripot.jxl_joint_i_8  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.mtl_tripot_to_differential.jxl_joint_j_8))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.mtl_tripot_to_differential.jxl_joint_j_8))  &
   relative_to = ._Rear_suspension_Three_wheeler.gel_tripot
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part modify rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.gel_tripot  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 10.0}mm, ._Rear_suspension_Three_wheeler.ground.cfl_Driveshaft_Inner))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfl_Driveshaft_Inner))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_tripot.inertia_frame  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ger_tripot.cm))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ger_tripot))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_tripot
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_tripot.gracyl_8  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfr_Driveshaft_Inner))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfr_Driveshaft_Inner))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_tripot
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_tripot.jxr_joint_j_7  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfr_hooke_joint_inner_iaxis))  &
   orientation =   &
      (ORI_IN_PLANE(._Rear_suspension_Three_wheeler.ger_tripot.jxr_joint_j_7, ._Rear_suspension_Three_wheeler.ground.cfr_hooke_joint_inner_jaxis, ._Rear_suspension_Three_wheeler.ground.cfr_hooke_joint_inner_iaxis, "Z_ZX"))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_tripot
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.ger_tripot.jxr_joint_i_8  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.mtr_tripot_to_differential.jxr_joint_j_8))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.mtr_tripot_to_differential.jxr_joint_j_8))  &
   relative_to = ._Rear_suspension_Three_wheeler.ger_tripot
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part modify rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.ger_tripot  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 10.0}mm, ._Rear_suspension_Three_wheeler.ground.cfr_Driveshaft_Inner))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfr_Driveshaft_Inner))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.mtl_tripot_to_differential.jxl_joint_j_8  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfl_Driveshaft_Inner))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfl_Driveshaft_Inner))  &
   relative_to = ._Rear_suspension_Three_wheeler.mtl_tripot_to_differential
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part modify rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.mtl_tripot_to_differential  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfl_Driveshaft_Inner))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.origo))
!
marker modify  &
   marker_name = ._Rear_suspension_Three_wheeler.mtr_tripot_to_differential.jxr_joint_j_8  &
   location =   &
      (LOC_RELATIVE_TO({0.0, 0.0, 0.0}mm, ._Rear_suspension_Three_wheeler.ground.cfr_Driveshaft_Inner))  &
   orientation =   &
      (ORI_RELATIVE_TO({0.0, 0.0, 0.0}degrees, ._Rear_suspension_Three_wheeler.ground.cfr_Driveshaft_Inner))  &
   relative_to = ._Rear_suspension_Three_wheeler.mtr_tripot_to_differential
!
defaults coordinate_system  &
   default_coordinate_system = ._Rear_suspension_Three_wheeler.ground
!
part modify rigid_body name_and_position  &
   part_name = ._Rear_suspension_Three_wheeler.mtr_tripot_to_differential  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.cfr_Driveshaft_Inner))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.origo))
!
ude modify instance  &
   instance_name = ._Rear_suspension_Three_wheeler.dal_ride_damper  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.origo))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.origo))
!
ude modify instance  &
   instance_name = ._Rear_suspension_Three_wheeler.dar_ride_damper  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.origo))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.origo))
!
ude modify instance  &
   instance_name = ._Rear_suspension_Three_wheeler.nsl_ride_spring  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.origo))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.origo))
!
ude modify instance  &
   instance_name = ._Rear_suspension_Three_wheeler.nsr_ride_spring  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.origo))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.origo))
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cil_Upper_Strut_To_Body.minor_role  &
   string_value = (._Rear_suspension_Three_wheeler.mtl_Upper_Strut_To_Body.minor_role)
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cil_Upper_Strut_To_Body  &
   comments = ("Autocreated for mount part: " // ._Rear_suspension_Three_wheeler.cil_Upper_Strut_To_Body[2].name)
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cir_Upper_Strut_To_Body.minor_role  &
   string_value = (._Rear_suspension_Three_wheeler.mtr_Upper_Strut_To_Body.minor_role)
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cir_Upper_Strut_To_Body  &
   comments = ("Autocreated for mount part: " // ._Rear_suspension_Three_wheeler.cir_Upper_Strut_To_Body[2].name)
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cis_subframe_to_body.minor_role  &
   string_value = (._Rear_suspension_Three_wheeler.mts_subframe_to_body.minor_role)
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cis_subframe_to_body  &
   comments = ("Autocreated for mount part: " // ._Rear_suspension_Three_wheeler.cis_subframe_to_body[2].name)
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cil_tripot_to_differential.minor_role  &
   string_value = (._Rear_suspension_Three_wheeler.mtl_tripot_to_differential.minor_role)
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cil_tripot_to_differential  &
   comments = ("Autocreated for mount part: " // ._Rear_suspension_Three_wheeler.cil_tripot_to_differential[2].name)
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cir_tripot_to_differential.minor_role  &
   string_value = (._Rear_suspension_Three_wheeler.mtr_tripot_to_differential.minor_role)
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cir_tripot_to_differential  &
   comments = ("Autocreated for mount part: " // ._Rear_suspension_Three_wheeler.cir_tripot_to_differential[2].name)
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cis_chassis_path_reference_adams_id  &
   integer_value = (._Rear_suspension_Three_wheeler.cis_chassis_path_reference.object_value.adams_id)
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.col_wheel_center  &
   real_value =   &
      (._Rear_suspension_Three_wheeler.ground.hpl_Wheel_Center.location[1]),  &
      (._Rear_suspension_Three_wheeler.ground.hpl_Wheel_Center.location[2]),  &
      (._Rear_suspension_Three_wheeler.ground.hpl_Wheel_Center.location[3])
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_wheel_center  &
   real_value =   &
      (._Rear_suspension_Three_wheeler.ground.hpr_Wheel_Center.location[1]),  &
      (._Rear_suspension_Three_wheeler.ground.hpr_Wheel_Center.location[2]),  &
      (._Rear_suspension_Three_wheeler.ground.hpr_Wheel_Center.location[3])
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.col_tripot_to_differential  &
   real_value =   &
      (._Rear_suspension_Three_wheeler.ground.cfl_Driveshaft_Inner.location[1]),  &
      (._Rear_suspension_Three_wheeler.ground.cfl_Driveshaft_Inner.location[2]),  &
      (._Rear_suspension_Three_wheeler.ground.cfl_Driveshaft_Inner.location[3])
!
variable modify  &
   variable_name = ._Rear_suspension_Three_wheeler.cor_tripot_to_differential  &
   real_value =   &
      (._Rear_suspension_Three_wheeler.ground.cfr_Driveshaft_Inner.location[1]),  &
      (._Rear_suspension_Three_wheeler.ground.cfr_Driveshaft_Inner.location[2]),  &
      (._Rear_suspension_Three_wheeler.ground.cfr_Driveshaft_Inner.location[3])
!
group modify  &
   group_name = ._Rear_suspension_Three_wheeler.kinematic_mode_active  &
   expr_active = (._Rear_suspension_Three_wheeler.phs_kinematic_flag || ._Rear_suspension_Three_wheeler.model_class == "template" ? 1 : 0)
!
group modify  &
   group_name = ._Rear_suspension_Three_wheeler.kinematic_mode_inactive  &
   expr_active = ( ! ._Rear_suspension_Three_wheeler.phs_kinematic_flag || ._Rear_suspension_Three_wheeler.model_class == "template" ? 1 : 0)
!
ude modify instance  &
   instance_name = ._Rear_suspension_Three_wheeler.bul_rear_Bumpstop  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.origo))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.origo))
!
ude modify instance  &
   instance_name = ._Rear_suspension_Three_wheeler.bur_rear_Bumpstop  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.origo))  &
   orientation =   &
      (ORI_RELATIVE_TO({0, 0, 0}, ._Rear_suspension_Three_wheeler.ground.origo))
!
model display  &
   model_name = _Rear_suspension_Three_wheeler
