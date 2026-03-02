
"use strict";

let PWMServo = require('./PWMServo.js');
let Arm = require('./Arm.js');
let Joint = require('./Joint.js');
let Position = require('./Position.js');
let Edition = require('./Edition.js');
let SensorState = require('./SensorState.js');
let Battery = require('./Battery.js');
let JoyState = require('./JoyState.js');
let PatrolWarning = require('./PatrolWarning.js');
let General = require('./General.js');
let LaserAvoid = require('./LaserAvoid.js');
let PointArray = require('./PointArray.js');
let Image_Msg = require('./Image_Msg.js');

module.exports = {
  PWMServo: PWMServo,
  Arm: Arm,
  Joint: Joint,
  Position: Position,
  Edition: Edition,
  SensorState: SensorState,
  Battery: Battery,
  JoyState: JoyState,
  PatrolWarning: PatrolWarning,
  General: General,
  LaserAvoid: LaserAvoid,
  PointArray: PointArray,
  Image_Msg: Image_Msg,
};
