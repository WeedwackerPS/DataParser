types:
  config_global_values:
    seq:
      - id: bit_field
        type: u1
      - id: first_person_coop_cam_configs
        type: dict_of__enum__npc_body_type_first_person_coop_cam_config
        if: has_field_first_person_coop_cam_configs
    instances:
      has_field_first_person_coop_cam_configs: # Field №0
        value: (bit_field & 0b1) != 0
