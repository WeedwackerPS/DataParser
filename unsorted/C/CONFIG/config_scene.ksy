types:
  config_scene:
    seq:
      - id: bit_field
        type: u1
      - id: trans_radius
        type: f4
        if: has_field_trans_radius
      - id: points
        type: dict_of__aux_types__string_disp__config_scene_point
        if: has_field_points
      - id: areas
        type: dict_of__aux_types__string_config_scene_area
        if: has_field_areas
      - id: forces
        type: dict_of__aux_types__string_disp__config_scene_point
        if: has_field_forces
      - id: entities
        type: dict_of__aux_types__string_disp__config_scene_point
        if: has_field_entities
      - id: doors
        type: dict_of__aux_types__string_config_loading_door
        if: has_field_doors
    instances:
      has_field_trans_radius: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_points: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_areas: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_forces: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_entities: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_doors: # Field №5
        value: (bit_field & 0b100000) != 0
