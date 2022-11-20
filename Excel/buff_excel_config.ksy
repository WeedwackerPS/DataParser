meta:
  id: buff_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__buff_stack_type
    - ../EnumType/enum__server_buff_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_group_id
  - id: name
    type: aux_types::string
    if: has_field_name
  - id: desc
    type: aux_types::string
    if: has_field_desc
  - id: time
    type: f4
    if: has_field_time
  - id: stack_type
    type: enum__buff_stack_type
    if: has_field_stack_type
  - id: is_persistent
    type: u1
    if: has_field_is_persistent
  - id: is_del_when_leave_scene
    type: u1
    if: has_field_is_del_when_leave_scene
  - id: server_buff_id
    type: aux_types::vlq_base128_le_u
    if: has_field_server_buff_id
  - id: server_buff_type
    type: enum__server_buff_type
    if: has_field_server_buff_type
  - id: ability_name
    type: aux_types::string
    if: has_field_ability_name
  - id: modifier_name
    type: aux_types::string
    if: has_field_modifier_name
instances:
  has_field_group_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_desc: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_time: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_stack_type: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_is_persistent: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_is_del_when_leave_scene: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_server_buff_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_server_buff_type: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_ability_name: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_modifier_name: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
