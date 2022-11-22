meta:
  id: dict_of__aux_types__vlq_base128_le_s_config_wwise_string
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: items
    type: kvp_of_aux_types__vlq_base128_le_s_config_wwise_string
    repeat: expr
    repeat-expr: length.value
types:
  kvp_of_aux_types__vlq_base128_le_s_config_wwise_string:
    seq:
      - id: key
        type: aux_types::vlq_base128_le_s
      - id: value
        type: config_wwise_string
