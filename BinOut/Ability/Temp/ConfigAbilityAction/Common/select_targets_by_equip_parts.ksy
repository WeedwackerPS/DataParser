meta:
  id: select_targets_by_equip_parts
  endian: le
  license: GPLv2
  imports:
    - ../../../../../aux_types
    - ../../../../../ArrayType/array_of__aux_types__string__length_u
    - select_targets
seq:
  - id: base
    type: select_targets
  - id: bit_field
    type: u1
  - id: equip_part_names
    type: array_of__aux_types__string__length_u
    if: has_field_equip_part_names
instances:
  has_field_equip_part_names: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  top_limit:
    value: base.top_limit
  entity_type_priority:
    value: base.entity_type_priority
  sort_type:
    value: base.sort_type
