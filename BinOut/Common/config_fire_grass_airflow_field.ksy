meta:
  id: config_fire_grass_airflow_field
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - config_airflow_field
seq:
  - id: base
    type: config_airflow_field
  - id: bit_field
    type: u1
  - id: enable
    type: u1
    if: has_field_enable
  - id: trigger_num
    type: aux_types::vlq_base128_le_u
    if: has_field_trigger_num
  - id: height
    type: f4
    if: has_field_height
  - id: height_speed
    type: f4
    if: has_field_height_speed
instances:
  has_field_enable: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_trigger_num: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_height: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_height_speed: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  scale:
    value: base.scale
  stay_effect:
    value: base.stay_effect
  enter_effect:
    value: base.enter_effect
  auto_fly:
    value: base.auto_fly
  velocity:
    value: base.velocity
  type:
    value: base.type
  gadget_id:
    value: base.gadget_id
  area_id:
    value: base.area_id
  pos:
    value: base.pos
  rot:
    value: base.rot
  tran_pos:
    value: base.tran_pos
  tran_rot:
    value: base.tran_rot
  unlocked:
    value: base.unlocked
  alias:
    value: base.alias
  group_limit:
    value: base.group_limit
  is_model_hidden:
    value: base.is_model_hidden
