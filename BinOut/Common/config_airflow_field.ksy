meta:
  id: config_airflow_field
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - config_const_force_field
seq:
  - id: base
    type: config_const_force_field
  - id: bit_field
    type: u1
  - id: scale
    type: f4
    if: has_field_scale
  - id: stay_effect
    type: aux_types::string
    if: has_field_stay_effect
  - id: enter_effect
    type: aux_types::string
    if: has_field_enter_effect
  - id: auto_fly
    type: u1
    if: has_field_auto_fly
instances:
  has_field_scale: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_stay_effect: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_enter_effect: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_auto_fly: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
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
