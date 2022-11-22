meta:
  id: dict_of__aux_types__string_config_attack_event
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../config_attack_event
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: items
    type: kvp_of_aux_types__string_config_attack_event
    repeat: expr
    repeat-expr: length.value
types:
  kvp_of_aux_types__string_config_attack_event:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: config_attack_event
