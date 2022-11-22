meta:
  id: array_of__audio_state_op__length_u
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: data
    type: audio_state_op
    repeat: expr
    repeat-expr: length.value
types:
  audio_state_op:
    seq:
      - id: bit_field
        type: u1
      - id: group
        type: config_wwise_string
        if: has_field_group
      - id: value
        type: config_wwise_string
        if: has_field_value
    instances:
      has_field_group: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_value: # Field №1
        value: (bit_field & 0b10) != 0
