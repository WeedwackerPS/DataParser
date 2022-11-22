types:
  config_cutscene_inter_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: cutscene_cfg
        type: disp__config_base_cutscene
        if: has_field_cutscene_cfg
      - id: cutscene_index
        type: aux_types::vlq_base128_le_u
        if: has_field_cutscene_index
      - id: sync_load
        type: u1
        if: has_field_sync_load
    instances:
      has_field_cutscene_cfg: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_cutscene_index: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_sync_load: # Field №2
        value: (bit_field & 0b100) != 0
      # Base class fields
      type:
        value: base.type
      delay_time:
        value: base.delay_time
      duration:
        value: base.duration
      alias_list:
        value: base.alias_list
      check_next_immediately:
        value: base.check_next_immediately
