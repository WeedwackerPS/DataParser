meta:
  id: config_lc_gadget_intee_data
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../dict_of__aux_types__string_config_lc_gadget_intee
seq:
  - id: bit_field
    type: u1
  - id: config_dic
    type: dict_of__aux_types__string_config_lc_gadget_intee
    if: has_field_config_dic
instances:
  has_field_config_dic: # Field №0
    value: (bit_field & 0b1) != 0
