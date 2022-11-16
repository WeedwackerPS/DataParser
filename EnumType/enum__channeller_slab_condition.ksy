meta:
  id: enum__channeller_slab_condition
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: channeller_slab_condition
enums:
  channeller_slab_condition:
    0: channeller_slab_condition_none
    1: channeller_slab_condition_limit
    2: channeller_slab_condition_config
    3: channeller_slab_lineup_replace
