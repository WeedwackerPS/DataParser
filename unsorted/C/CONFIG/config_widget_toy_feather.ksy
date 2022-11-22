types:
  config_widget_toy_feather:
    seq:
      - id: base
        type: config_base_widget_toy
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: show_on_radar
        type: u1
        if: has_field_show_on_radar
      - id: ui_camera_effect
        type: aux_types::string
        if: has_field_ui_camera_effect
      - id: main_camera_effect
        type: aux_types::string
        if: has_field_main_camera_effect
      - id: show_hint
        type: u1
        if: has_field_show_hint
      - id: show_hint_distance
        type: f4
        if: has_field_show_hint_distance
      - id: show_hint_entity_id_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_show_hint_entity_id_list
      - id: ability_name
        type: aux_types::string
        if: has_field_ability_name
      - id: exclude_suite_index
        type: aux_types::vlq_base128_le_u
        if: has_field_exclude_suite_index
      - id: ability_group_name
        type: aux_types::string
        if: has_field_ability_group_name
      - id: is_team
        type: u1
        if: has_field_is_team
    instances:
      has_field_show_on_radar: # Field №0
        value: (bit_field.value & 001) != 0
      has_field_ui_camera_effect: # Field №1
        value: (bit_field.value & 010) != 0
      has_field_main_camera_effect: # Field №2
        value: (bit_field.value & 0b0000000100) != 0
      has_field_show_hint: # Field №3
        value: (bit_field.value & 0b0000001000) != 0
      has_field_show_hint_distance: # Field №4
        value: (bit_field.value & 0b0000010000) != 0
      has_field_show_hint_entity_id_list: # Field №5
        value: (bit_field.value & 0b0000100000) != 0
      has_field_ability_name: # Field №6
        value: (bit_field.value & 0b0001000000) != 0
      has_field_exclude_suite_index: # Field №7
        value: (bit_field.value & 0b0010000000) != 0
      has_field_ability_group_name: # Field №8
        value: (bit_field.value & 0b0100000000) != 0
      has_field_is_team: # Field №9
        value: (bit_field.value & 0b1000000000) != 0
      # Base class fields
      is_consume_material:
        value: base.is_consume_material
      cd_group:
        value: base.cd_group
      tags:
        value: base.tags
      business_type:
        value: base.business_type
