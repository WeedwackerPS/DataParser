meta:
  id: watcher_trigger_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../../aux_types
    - ../../EnumType/enum__watcher_trigger_type
    - ../../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: trigger_type
    type: enum__watcher_trigger_type
    if: has_field_trigger_type
  - id: param_list
    type: array_of__aux_types__string__length_u
    if: has_field_param_list
instances:
  has_field_trigger_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_param_list: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
