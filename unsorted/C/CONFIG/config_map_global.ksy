types:
  config_map_global:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: mini_map_ui_radius
        type: f4
        if: has_field_mini_map_ui_radius
      - id: mini_map_sight_radius
        type: f4
        if: has_field_mini_map_sight_radius
      - id: mini_map_scale_default
        type: f4
        if: has_field_mini_map_scale_default
      - id: mini_map_scale_ranks
        type: array_of__f4__length_u
        if: has_field_mini_map_scale_ranks
      - id: level_map_scale_default
        type: f4
        if: has_field_level_map_scale_default
      - id: level_map_scale_max
        type: f4
        if: has_field_level_map_scale_max
      - id: level_map_scale_min
        type: f4
        if: has_field_level_map_scale_min
      - id: level_map_trans_point_radius
        type: f4
        if: has_field_level_map_trans_point_radius
      - id: level_map_custom_mark_cancel_radius
        type: f4
        if: has_field_level_map_custom_mark_cancel_radius
      - id: level_map_custom_mark_near_cancel_radius
        type: f4
        if: has_field_level_map_custom_mark_near_cancel_radius
      - id: custom_styles
        type: array_of__config_v_custom_map_mark__length_u
        if: has_field_custom_styles
      - id: mark_near_threshold
        type: f4
        if: has_field_mark_near_threshold
      - id: mark_selected_scale
        type: f4
        if: has_field_mark_selected_scale
      - id: reward_tip_slide_value
        type: f4
        if: has_field_reward_tip_slide_value
      - id: first_area_id_hide_mini_map
        type: aux_types::vlq_base128_le_u
        if: has_field_first_area_id_hide_mini_map
      - id: mark_unlock_effect_delay
        type: f4
        if: has_field_mark_unlock_effect_delay
    instances:
      has_field_mini_map_ui_radius: # Field №0
        value: (bit_field.value & 000000001) != 0
      has_field_mini_map_sight_radius: # Field №1
        value: (bit_field.value & 000000010) != 0
      has_field_mini_map_scale_default: # Field №2
        value: (bit_field.value & 000000100) != 0
      has_field_mini_map_scale_ranks: # Field №3
        value: (bit_field.value & 000001000) != 0
      has_field_level_map_scale_default: # Field №4
        value: (bit_field.value & 000010000) != 0
      has_field_level_map_scale_max: # Field №5
        value: (bit_field.value & 000100000) != 0
      has_field_level_map_scale_min: # Field №6
        value: (bit_field.value & 001000000) != 0
      has_field_level_map_trans_point_radius: # Field №7
        value: (bit_field.value & 010000000) != 0
      has_field_level_map_custom_mark_cancel_radius: # Field №8
        value: (bit_field.value & 0b0000000100000000) != 0
      has_field_level_map_custom_mark_near_cancel_radius: # Field №9
        value: (bit_field.value & 0b0000001000000000) != 0
      has_field_custom_styles: # Field №10
        value: (bit_field.value & 0b0000010000000000) != 0
      has_field_mark_near_threshold: # Field №11
        value: (bit_field.value & 0b0000100000000000) != 0
      has_field_mark_selected_scale: # Field №12
        value: (bit_field.value & 0b0001000000000000) != 0
      has_field_reward_tip_slide_value: # Field №13
        value: (bit_field.value & 0b0010000000000000) != 0
      has_field_first_area_id_hide_mini_map: # Field №14
        value: (bit_field.value & 0b0100000000000000) != 0
      has_field_mark_unlock_effect_delay: # Field №15
        value: (bit_field.value & 0b1000000000000000) != 0
