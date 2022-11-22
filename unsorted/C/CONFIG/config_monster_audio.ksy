types:
  config_monster_audio:
    seq:
      - id: base
        type: config_character_audio
      - id: bit_field
        type: u1
      - id: random_variant_switch_group
        type: config_wwise_string
        if: has_field_random_variant_switch_group
      - id: random_variant_switch_values
        type: array_of__config_wwise_string__length_u
        if: has_field_random_variant_switch_values
    instances:
      has_field_random_variant_switch_group: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_random_variant_switch_values: # Field №1
        value: (bit_field & 0b10) != 0
      # Base class fields
      anim_audio:
        value: base.anim_audio
      init_event:
        value: base.init_event
      enable_event:
        value: base.enable_event
      disable_event:
        value: base.disable_event
      destroy_event:
        value: base.destroy_event
