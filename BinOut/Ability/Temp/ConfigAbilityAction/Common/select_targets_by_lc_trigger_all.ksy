meta:
  id: select_targets_by_lc_trigger_all
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - select_targets
seq:
  - id: base
    type: select_targets
instances:
  # Base class fields
  top_limit:
    value: base.top_limit
  entity_type_priority:
    value: base.entity_type_priority
  sort_type:
    value: base.sort_type
