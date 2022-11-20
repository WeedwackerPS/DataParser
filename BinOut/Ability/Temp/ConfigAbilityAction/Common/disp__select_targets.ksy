meta:
  id: disp__select_targets
  endian: le
  license: GPLv2
  imports:
    - ../../../../../aux_types
    - select_targets
    - select_targets_by_shape
    - select_targets_by_equip_parts
    - select_targets_by_children
    - select_targets_by_children_entity_type
    - select_targets_by_tag
    - select_targets_by_self_group
    - select_targets_by_lc_trigger
    - select_targets_by_lc_trigger_all
seq:
  - id: type_code
    type: aux_types::vlq_base128_le_u
  - id: data
    type:
      switch-on: type_code.value
      cases:
        0: select_targets
        1: select_targets_by_shape
        2: select_targets_by_equip_parts
        3: select_targets_by_children
        4: select_targets_by_children_entity_type
        5: select_targets_by_tag
        6: select_targets_by_self_group
        7: select_targets_by_lc_trigger
        8: select_targets_by_lc_trigger_all
        _: aux_types::error
