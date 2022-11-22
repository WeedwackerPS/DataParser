meta:
  id: config_audio_mutual_exclusion
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
    - ../../../EnumType/enum__audio_scope
seq:
  - id: bit_field
    type: u1
  - id: exclusion_pairs
    type: array_of__audio_mutual_exclusion__length_u
    if: has_field_exclusion_pairs
instances:
  has_field_exclusion_pairs: # Field №0
    value: (bit_field & 0b1) != 0
types:
  array_of__audio_mutual_exclusion__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: audio_mutual_exclusion
        repeat: expr
        repeat-expr: length.value
  audio_mutual_exclusion:
    seq:
      - id: bit_field
        type: u1
      - id: event_name_a
        type: aux_types::string
        if: has_field_event_name_a
      - id: event_name_b
        type: aux_types::string
        if: has_field_event_name_b
      - id: scope
        type: enum__audio_scope
        if: has_field_scope
    instances:
      has_field_event_name_a: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_event_name_b: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_scope: # Field №2
        value: (bit_field & 0b100) != 0
