types:
  config_tile:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: tile_name
        type: aux_types::string
        if: has_field_tile_name
      - id: camp_id
        type: aux_types::vlq_base128_le_u
        if: has_field_camp_id
      - id: special_type
        type: enum__tile_special_type
        if: has_field_special_type
      - id: fixed_y
        type: f4
        if: has_field_fixed_y
      - id: pool_size
        type: aux_types::vlq_base128_le_s
        if: has_field_pool_size
      - id: initial_elements
        type: array_of__config_tile_element__length_u
        if: has_field_initial_elements
      - id: basic_action
        type: config_massive_element_trigger_action
        if: has_field_basic_action
      - id: field_map_material
        type: aux_types::string
        if: has_field_field_map_material
      - id: effect_material
        type: aux_types::string
        if: has_field_effect_material
    instances:
      has_field_tile_name: # Field №0
        value: (bit_field.value & 01) != 0
      has_field_camp_id: # Field №1
        value: (bit_field.value & 0b000000010) != 0
      has_field_special_type: # Field №2
        value: (bit_field.value & 0b000000100) != 0
      has_field_fixed_y: # Field №3
        value: (bit_field.value & 0b000001000) != 0
      has_field_pool_size: # Field №4
        value: (bit_field.value & 0b000010000) != 0
      has_field_initial_elements: # Field №5
        value: (bit_field.value & 0b000100000) != 0
      has_field_basic_action: # Field №6
        value: (bit_field.value & 0b001000000) != 0
      has_field_field_map_material: # Field №7
        value: (bit_field.value & 0b010000000) != 0
      has_field_effect_material: # Field №8
        value: (bit_field.value & 0b100000000) != 0
