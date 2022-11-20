meta:
  id: emotion_template_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: free_style_id
    type: aux_types::vlq_base128_le_s
    if: has_field_free_style_id
  - id: bubble_name
    type: aux_types::string
    if: has_field_bubble_name
  - id: emotion_path
    type: aux_types::string
    if: has_field_emotion_path
  - id: protect_time
    type: f4
    if: has_field_protect_time
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_free_style_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_bubble_name: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_emotion_path: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_protect_time: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
