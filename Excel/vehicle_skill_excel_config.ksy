meta:
  id: vehicle_skill_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__f4__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: skill_name
    type: aux_types::vlq_base128_le_u
    if: has_field_skill_name
  - id: skill_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_skill_desc
  - id: ability_name
    type: aux_types::string
    if: has_field_ability_name
  - id: skill_icon
    type: aux_types::string
    if: has_field_skill_icon
  - id: skill_cd
    type: f4
    if: has_field_skill_cd
  - id: max_charge_count
    type: aux_types::vlq_base128_le_s
    if: has_field_max_charge_count
  - id: trigger_id
    type: aux_types::vlq_base128_le_s
    if: has_field_trigger_id
  - id: lock_shape
    type: aux_types::string
    if: has_field_lock_shape
  - id: lock_weight_params
    type: array_of__f4__length_u
    if: has_field_lock_weight_params
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_skill_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_skill_desc: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_ability_name: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_skill_icon: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_skill_cd: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_max_charge_count: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_trigger_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_lock_shape: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_lock_weight_params: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
