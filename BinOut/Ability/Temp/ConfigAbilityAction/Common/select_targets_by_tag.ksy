meta:
  id: select_targets_by_tag
  endian: le
  license: GPLv2
  imports:
    - ../../../../../aux_types
    - select_targets
seq:
  - id: base
    type: select_targets
  - id: bit_field
    type: u1
  - id: tag
    type: aux_types::string
    if: has_field_tag
instances:
  has_field_tag: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  top_limit:
    value: base.top_limit
  entity_type_priority:
    value: base.entity_type_priority
  sort_type:
    value: base.sort_type
