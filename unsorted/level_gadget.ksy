types:
  level_gadget:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: group_id
        type: aux_types::vlq_base128_le_u
        if: has_field_group_id
      - id: map_inst_id
        type: aux_types::vlq_base128_le_u
        if: has_field_map_inst_id
      - id: follow_move_attach_point
        type: aux_types::string
        if: has_field_follow_move_attach_point
      - id: follow_move_target_instance_id
        type: aux_types::vlq_base128_le_u
        if: has_field_follow_move_target_instance_id
      - id: gadget_misc_unlock_show_cut_scene
        type: u1
        if: has_field_gadget_misc_unlock_show_cut_scene
      - id: gadget_misc_chest_show_moment
        type: enum__chest_show_moment
        if: has_field_gadget_misc_chest_show_moment
      - id: gadget_misc_chest_show_ui_remind
        type: enum__chest_show_ui_remind
        if: has_field_gadget_misc_chest_show_ui_remind
      - id: gadget_misc_chest_show_cts_type
        type: enum__chest_show_cutscene_type
        if: has_field_gadget_misc_chest_show_cts_type
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
      - id: target_indicator_type
        type: enum__target_indicator_type
        if: has_field_target_indicator_type
      - id: ui_indicator
        type: config_template_data
        if: has_field_ui_indicator
      - id: target_indicator_task_id
        type: aux_types::vlq_base128_le_u
        if: has_field_target_indicator_task_id
      - id: billboard_multi_bar_sort_id
        type: aux_types::vlq_base128_le_u
        if: has_field_billboard_multi_bar_sort_id
      - id: billboard_multi_bar_num
        type: aux_types::vlq_base128_le_u
        if: has_field_billboard_multi_bar_num
    instances:
      has_field_group_id: # Field №0
        value: (bit_field.value & 00000000001) != 0
      has_field_map_inst_id: # Field №1
        value: (bit_field.value & 00000000010) != 0
      has_field_follow_move_attach_point: # Field №2
        value: (bit_field.value & 00000000100) != 0
      has_field_follow_move_target_instance_id: # Field №3
        value: (bit_field.value & 00000001000) != 0
      has_field_gadget_misc_unlock_show_cut_scene: # Field №4
        value: (bit_field.value & 00000010000) != 0
      has_field_gadget_misc_chest_show_moment: # Field №5
        value: (bit_field.value & 00000100000) != 0
      has_field_gadget_misc_chest_show_ui_remind: # Field №6
        value: (bit_field.value & 00001000000) != 0
      has_field_gadget_misc_chest_show_cts_type: # Field №7
        value: (bit_field.value & 00010000000) != 0
      has_field_billboard_has_ui_bar: # Field №8
        value: (bit_field.value & 00100000000) != 0
      has_field_billboard_show_ui_bar_dis: # Field №9
        value: (bit_field.value & 01000000000) != 0
      has_field_billboard_hide_ui_bar_dis: # Field №10
        value: (bit_field.value & 0b000000010000000000) != 0
      has_field_billboard_ui_bar_need_enter_combat: # Field №11
        value: (bit_field.value & 0b000000100000000000) != 0
      has_field_billboard_hp_bar_style: # Field №12
        value: (bit_field.value & 0b000001000000000000) != 0
      has_field_target_indicator_type: # Field №13
        value: (bit_field.value & 0b000010000000000000) != 0
      has_field_ui_indicator: # Field №14
        value: (bit_field.value & 0b000100000000000000) != 0
      has_field_target_indicator_task_id: # Field №15
        value: (bit_field.value & 0b001000000000000000) != 0
      has_field_billboard_multi_bar_sort_id: # Field №16
        value: (bit_field.value & 0b010000000000000000) != 0
      has_field_billboard_multi_bar_num: # Field №17
        value: (bit_field.value & 0b100000000000000000) != 0
