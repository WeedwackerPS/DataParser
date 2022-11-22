meta:
  id: config_global_value
  endian: le
  license: GPLv2
  imports:
    - ../../../ArrayType/array_of__aux_types__string__length_u
    - ../../../DictType/dict_of__aux_types__string_f4
seq:
  - id: bit_field
    type: u1
  - id: server_global_values
    type: array_of__aux_types__string__length_u
    if: has_field_server_global_values
  - id: init_server_global_values
    type: dict_of__aux_types__string_f4
    if: has_field_init_server_global_values
instances:
  has_field_server_global_values: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_init_server_global_values: # Field №1
    value: (bit_field & 0b10) != 0
