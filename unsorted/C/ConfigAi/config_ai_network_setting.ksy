types:
  config_ai_network_setting:
    seq:
      - id: bit_field
        type: u1
      - id: sync_skill
        type: u1
        if: has_field_sync_skill
      - id: reset_hp_on_spawn
        type: u1
        if: has_field_reset_hp_on_spawn
    instances:
      has_field_sync_skill: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_reset_hp_on_spawn: # Field №1
        value: (bit_field & 0b10) != 0
