meta:
  id: select_targets_by_lc_trigger
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../../../../../aux_types
    - ../../../../../EnumType/enum__target_type
    - select_targets
seq:
  - id: base
    type: select_targets
  - id: bit_field
    type: u1
  - id: camp_target_type
    type: enum__target_type
    if: has_field_camp_target_type
instances:
  has_field_camp_target_type: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  top_limit:
    value: base.top_limit
  entity_type_priority:
    value: base.entity_type_priority
  sort_type:
    value: base.sort_type
