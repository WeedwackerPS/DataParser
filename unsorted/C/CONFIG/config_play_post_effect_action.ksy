types:
  config_play_post_effect_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: asset_name
        type: aux_types::string
        if: has_field_asset_name
      - id: is_remove
        type: u1
        if: has_field_is_remove
    instances:
      has_field_asset_name: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_is_remove: # Field №1
        value: (bit_field & 0b10) != 0
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
