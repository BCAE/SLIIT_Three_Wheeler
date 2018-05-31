$---------------------------------------------------------------------MDI_HEADER
[MDI_HEADER]
 FILE_TYPE     =  'asy'
 FILE_VERSION  =  2.0
 FILE_FORMAT   =  'ASCII'
 HEADER_SIZE   =  9
(COMMENTS)
{comment_string}
'Adams/Car full_vehicle assembly'
$----------------------------------------------------------------ASSEMBLY_HEADER
[ASSEMBLY_HEADER]
 ASSEMBLY_CLASS  =  'full_vehicle'
 TIMESTAMP       =  '2018/05/31,10:14:27'
 HEADER_SIZE     =  5
$------------------------------------------------------------------------PLUGINS
[PLUGINS]
 PLUGIN_LIST  =  'acar'
 HEADER_SIZE  =  4
$--------------------------------------------------------------------------UNITS
[UNITS]
 LENGTH  =  'mm'
 FORCE   =  'newton'
 ANGLE   =  'deg'
 MASS    =  'kg'
 TIME    =  'sec'
$----------------------------------------------------------------------SUBSYSTEM
[SUBSYSTEM]
$ Subsystem information:
$       Major Role : suspension
$       Minor Role : front
$       Template   : _double_wishbone

 USAGE  =  '<SLIIT_Demo_ThreeWheeler>/subsystems.tbl/TR_Front_Suspension.sub'
$----------------------------------------------------------------------SUBSYSTEM
[SUBSYSTEM]
$ Subsystem information:
$       Major Role : suspension
$       Minor Role : rear
$       Template   : _double_wishbone

 USAGE  =  '<SLIIT_Demo_ThreeWheeler>/subsystems.tbl/TR_Rear_Suspension.sub'
$----------------------------------------------------------------------SUBSYSTEM
[SUBSYSTEM]
$ Subsystem information:
$       Major Role : steering
$       Minor Role : front
$       Template   : _rack_pinion_steering

 USAGE  =  '<SLIIT_Demo_ThreeWheeler>/subsystems.tbl/TR_Steering.sub'
$----------------------------------------------------------------------SUBSYSTEM
[SUBSYSTEM]
$ Subsystem information:
$       Major Role : wheel
$       Minor Role : front
$       Template   : _handling_tire

 USAGE  =  '<SLIIT_Demo_ThreeWheeler>/subsystems.tbl/TR_Front_Tires.sub'
$----------------------------------------------------------------------SUBSYSTEM
[SUBSYSTEM]
$ Subsystem information:
$       Major Role : wheel
$       Minor Role : rear
$       Template   : _handling_tire

 USAGE  =  '<SLIIT_Demo_ThreeWheeler>/subsystems.tbl/TR_Rear_Tires.sub'
$----------------------------------------------------------------------SUBSYSTEM
[SUBSYSTEM]
$ Subsystem information:
$       Major Role : body
$       Minor Role : any
$       Template   : _rigid_chassis

 USAGE  =  '<SLIIT_Demo_ThreeWheeler>/subsystems.tbl/TR_Body.sub'
$----------------------------------------------------------------------SUBSYSTEM
[SUBSYSTEM]
$ Subsystem information:
$       Major Role : powertrain
$       Minor Role : rear
$       Template   : _powertrain

 USAGE  =  '<SLIIT_Demo_ThreeWheeler>/subsystems.tbl/TR_Powertrain.sub'
$----------------------------------------------------------------------SUBSYSTEM
[SUBSYSTEM]
$ Subsystem information:
$       Major Role : brake_system
$       Minor Role : any
$       Template   : _brake_system_4Wdisk

 USAGE  =  '<SLIIT_Demo_ThreeWheeler>/subsystems.tbl/TR_Brake_System.sub'
$------------------------------------------------------------------------TESTRIG
[TESTRIG]
 USAGE  =  '__MDI_SDI_TESTRIG'

$----------------------------------------------------------------------HARDPOINT
[HARDPOINT]
{hardpoint_name                  symmetry         x_value    y_value    z_value}
 'path_error_reference        '  'single    '        0.0         0.0         0.0
 'upright_reference           '  'left/right'        0.0         0.0         0.0
$----------------------------------------------------------------------PARAMETER
[PARAMETER]
{parameter_name                  symmetry       type       value}
 'initial_engine_rpm          '  'single    '   'real'     2000.0
 'throttle_lag_brake_demand   '  'single    '   'real'     0.1
  'Specifies the time that must pass after the throttle_demand=0 before the pd-controller will apply the brakes'
 'brake_ratio                 '  'single    '   'real'     0.55
  'default brake bias ratio'
 'front_brake_max_torque      '  'single    '   'real'     1.70E+06
  'default maximum front brake torque generated with maximum braking signal from driver'
 'rack_ratio                  '  'single    '   'real'     174.5
  'swa to rack displacement ratio in S.I. (rad/meter)'
 'rear_brake_max_torque       '  'single    '   'real'     1.00E+06
  'default maximum rear brake torque generated with maximum braking signal from driver'
 'smart_driver_preview_time   '  'single    '   'real'     0.5
  'Smart driver preview time'
 'steering_ratio              '  'single    '   'real'     27.6
  'steering wheel angle to road wheel angle ratio'
 'vx_sensor_type              '  'single    '   'integer'  0
  '0 = measured in gyro frame, 1 = measured in body frame'
$----------------------------------------------------------------SOLVER_SETTINGS
[SOLVER_SETTINGS]
 INTEGRATOR          =  'gstiff'
 CORRECTOR           =  'modified'
 FORMULATION         =  'I3'
