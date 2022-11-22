types:
  config_level_monster_unit:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: group_id
        type: aux_types::vlq_base128_le_u
        if: has_field_group_id
      - id: map_inst_id
        type: aux_types::vlq_base128_le_u
        if: has_field_map_inst_id
      - id: spawned_by_evt_pattern
        type: u1
        if: has_field_spawned_by_evt_pattern
      - id: route_id
        type: aux_types::vlq_base128_le_s
        if: has_field_route_id
      - id: ai_patrol_setting
        type: config_level_monster_ai_patrol
        if: has_field_ai_patrol_setting
      - id: ai_group_id
        type: aux_types::vlq_base128_le_u
        if: has_field_ai_group_id
      - id: override_defend_area_range
        type: u1
        if: has_field_override_defend_area_range
      - id: defend_area_range
        type: f4
        if: has_field_defend_area_range
      - id: defend_area_id
        type: aux_types::vlq_base128_le_u
        if: has_field_defend_area_id
      - id: wander_area_id
        type: aux_types::vlq_base128_le_u
        if: has_field_wander_area_id
      - id: override_clear_threat_target_distance
        type: u1
        if: has_field_override_clear_threat_target_distance
      - id: clear_threat_target_distance
        type: f4
        if: has_field_clear_threat_target_distance
      - id: ai_neuron_setting
        type: aux_types::string
        if: has_field_ai_neuron_setting
      - id: ai_sensing_template
        type: aux_types::string
        if: has_field_ai_sensing_template
      - id: force_combat_on_spawn
        type: u1
        if: has_field_force_combat_on_spawn
      - id: disable_wander
        type: u1
        if: has_field_disable_wander
      - id: stand_on_distant_mesh
        type: u1
        if: has_field_stand_on_distant_mesh
      - id: landing_point_id
        type: aux_types::vlq_base128_le_u
        if: has_field_landing_point_id
      - id: extraction_point_id
        type: aux_types::vlq_base128_le_u
        if: has_field_extraction_point_id
      - id: billboard_has_ui_bar
        type: u1
        if: has_field_billboard_has_ui_bar
      - id: billboard_show_ui_bar_dis
        type: f4
        if: has_field_billboard_show_ui_bar_dis
      - id: billboard_hide_ui_bar_dis
        type: f4
        if: has_field_billboard_hide_ui_bar_dis
      - id: billboard_ui_bar_need_enter_combat
        type: u1
        if: has_field_billboard_ui_bar_need_enter_combat
      - id: billboard_hp_bar_style
        type: enum__hp_bar_style
        if: has_field_billboard_hp_bar_style
      - id: billboard_multi_bar_sort_id
        type: aux_types::vlq_base128_le_u
        if: has_field_billboard_multi_bar_sort_id
      - id: billboard_multi_bar_num
        type: aux_types::vlq_base128_le_u
        if: has_field_billboard_multi_bar_num
    instances:
      has_field_group_id: # Field №0
        value: (bit_field.value & 0000000000000000001) != 0
      has_field_map_inst_id: # Field №1
        value: (bit_field.value & 0000000000000000010) != 0
      has_field_spawned_by_evt_pattern: # Field №2
        value: (bit_field.value & 0000000000000000100) != 0
      has_field_route_id: # Field №3
        value: (bit_field.value & 0000000000000001000) != 0
      has_field_ai_patrol_setting: # Field №4
        value: (bit_field.value & 0000000000000010000) != 0
      has_field_ai_group_id: # Field №5
        value: (bit_field.value & 0000000000000100000) != 0
      has_field_override_defend_area_range: # Field №6
        value: (bit_field.value & 0000000000001000000) != 0
      has_field_defend_area_range: # Field №7
        value: (bit_field.value & 0000000000010000000) != 0
      has_field_defend_area_id: # Field №8
        value: (bit_field.value & 0000000000100000000) != 0
      has_field_wander_area_id: # Field №9
        value: (bit_field.value & 0000000001000000000) != 0
      has_field_override_clear_threat_target_distance: # Field №10
        value: (bit_field.value & 0000000010000000000) != 0
      has_field_clear_threat_target_distance: # Field №11
        value: (bit_field.value & 0000000100000000000) != 0
      has_field_ai_neuron_setting: # Field №12
        value: (bit_field.value & 0000001000000000000) != 0
      has_field_ai_sensing_template: # Field №13
        value: (bit_field.value & 0000010000000000000) != 0
      has_field_force_combat_on_spawn: # Field №14
        value: (bit_field.value & 0000100000000000000) != 0
      has_field_disable_wander: # Field №15
        value: (bit_field.value & 0001000000000000000) != 0
      has_field_stand_on_distant_mesh: # Field №16
        value: (bit_field.value & 0010000000000000000) != 0
      has_field_landing_point_id: # Field №17
        value: (bit_field.value & 0100000000000000000) != 0
      has_field_extraction_point_id: # Field №18
        value: (bit_field.value & 0b00000001000000000000000000) != 0
      has_field_billboard_has_ui_bar: # Field №19
        value: (bit_field.value & 0b00000010000000000000000000) != 0
      has_field_billboard_show_ui_bar_dis: # Field №20
        value: (bit_field.value & 0b00000100000000000000000000) != 0
      has_field_billboard_hide_ui_bar_dis: # Field №21
        value: (bit_field.value & 0b00001000000000000000000000) != 0
      has_field_billboard_ui_bar_need_enter_combat: # Field №22
        value: (bit_field.value & 0b00010000000000000000000000) != 0
      has_field_billboard_hp_bar_style: # Field №23
        value: (bit_field.value & 0b00100000000000000000000000) != 0
      has_field_billboard_multi_bar_sort_id: # Field №24
        value: (bit_field.value & 0b01000000000000000000000000) != 0
      has_field_billboard_multi_bar_num: # Field №25
        value: (bit_field.value & 0b10000000000000000000000000) != 0
