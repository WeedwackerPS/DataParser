meta:
  id: template_reminder_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__new_activity_type
    - ../EnumType/enum__template_reminder_style_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: style
    type: enum__template_reminder_style_type
    if: has_field_style
  - id: icon
    type: aux_types::string
    if: has_field_icon
  - id: title
    type: aux_types::vlq_base128_le_u
    if: has_field_title
  - id: content
    type: aux_types::vlq_base128_le_u
    if: has_field_content
  - id: activity_type
    type: enum__new_activity_type
    if: has_field_activity_type
  - id: show_time
    type: f4
    if: has_field_show_time
  - id: param
    type: aux_types::string
    if: has_field_param
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_style: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_icon: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_title: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_content: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_activity_type: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_show_time: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_param: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
