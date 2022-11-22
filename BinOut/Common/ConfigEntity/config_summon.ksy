meta:
  id: config_summon
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
seq:
  - id: bit_field
    type: u1
  - id: summon_tags
    type: array_of__config_summon_tag__length_u
    if: has_field_summon_tags
instances:
  has_field_summon_tags: # Field №0
    value: (bit_field & 0b1) != 0
types:
  array_of__config_summon_tag__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_summon_tag
        repeat: expr
        repeat-expr: length.value
  config_summon_tag:
    seq:
      - id: bit_field
        type: u1
      - id: summon_tag
        type: aux_types::vlq_base128_le_u
        if: has_field_summon_tag
      - id: name
        type: aux_types::string
        if: has_field_name
      - id: max_num
        type: aux_types::vlq_base128_le_s
        if: has_field_max_num
      - id: copy_owner_threat_list
        type: u1
        if: has_field_copy_owner_threat_list
      - id: use_owner_defend_area
        type: u1
        if: has_field_use_owner_defend_area
    instances:
      has_field_summon_tag: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_name: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_max_num: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_copy_owner_threat_list: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_use_owner_defend_area: # Field №4
        value: (bit_field & 0b10000) != 0
