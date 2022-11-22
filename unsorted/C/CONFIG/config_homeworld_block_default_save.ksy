types:
  config_homeworld_block_default_save:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: block_id
        type: aux_types::vlq_base128_le_s
        if: has_field_block_id
      - id: persistent_furniture_list
        type: array_of__config_homeworld_furniture_default_save__length_u
        if: has_field_persistent_furniture_list
      - id: deploy_furniure_list
        type: array_of__config_homeworld_furniture_default_save__length_u
        if: has_field_deploy_furniure_list
      - id: deploy_npc_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_deploy_npc_list
      - id: furniture_suite_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_furniture_suite_list
      - id: deploy_animal_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_deploy_animal_list
      - id: is_unlocked
        type: u1
        if: has_field_is_unlocked
      - id: comfort_value
        type: aux_types::vlq_base128_le_u
        if: has_field_comfort_value
      - id: weekend_djinn_info_list
        type: array_of__config_homeworld_djinn_info_default_save__length_u
        if: has_field_weekend_djinn_info_list
      - id: dot_pattern_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_dot_pattern_list
    instances:
      has_field_block_id: # Field №0
        value: (bit_field.value & 001) != 0
      has_field_persistent_furniture_list: # Field №1
        value: (bit_field.value & 010) != 0
      has_field_deploy_furniure_list: # Field №2
        value: (bit_field.value & 0b0000000100) != 0
      has_field_deploy_npc_list: # Field №3
        value: (bit_field.value & 0b0000001000) != 0
      has_field_furniture_suite_list: # Field №4
        value: (bit_field.value & 0b0000010000) != 0
      has_field_deploy_animal_list: # Field №5
        value: (bit_field.value & 0b0000100000) != 0
      has_field_is_unlocked: # Field №6
        value: (bit_field.value & 0b0001000000) != 0
      has_field_comfort_value: # Field №7
        value: (bit_field.value & 0b0010000000) != 0
      has_field_weekend_djinn_info_list: # Field №8
        value: (bit_field.value & 0b0100000000) != 0
      has_field_dot_pattern_list: # Field №9
        value: (bit_field.value & 0b1000000000) != 0
