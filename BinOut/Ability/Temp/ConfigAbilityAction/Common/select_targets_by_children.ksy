meta:
  id: select_targets_by_children
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../../../../../aux_types
    - select_targets
seq:
  - id: base
    type: select_targets
  - id: bit_field
    type: u1
  - id: config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_config_id
instances:
  has_field_config_id: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  top_limit:
    value: base.top_limit
  entity_type_priority:
    value: base.entity_type_priority
  sort_type:
    value: base.sort_type
