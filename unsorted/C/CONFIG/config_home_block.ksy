types:
  config_home_block:
    seq:
      - id: bit_field
        type: u1
      - id: block_id
        type: aux_types::vlq_base128_le_u
        if: has_field_block_id
      - id: persistent_furniture_list
        type: array_of__config_home_furniture__length_u
        if: has_field_persistent_furniture_list
      - id: deploy_furniure_list
        type: array_of__config_home_furniture__length_u
        if: has_field_deploy_furniure_list
      - id: furniture_suite_list
        type: array_of__config_home_furniture_suite__length_u
        if: has_field_furniture_suite_list
      - id: deploy_animal_list
        type: array_of__config_home_animal__length_u
        if: has_field_deploy_animal_list
      - id: weekend_djinn_info_list
        type: array_of__config_weekend_djinn__length_u
        if: has_field_weekend_djinn_info_list
    instances:
      has_field_block_id: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_persistent_furniture_list: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_deploy_furniure_list: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_furniture_suite_list: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_deploy_animal_list: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_weekend_djinn_info_list: # Field №5
        value: (bit_field & 0b100000) != 0
