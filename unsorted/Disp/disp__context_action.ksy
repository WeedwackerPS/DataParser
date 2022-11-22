types:
  disp__context_action:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: context_action
            1: context_action_execute_all
            2: context_action_select_monster_mark
            3: context_action_select_main_quest
            4: context_action_select_scene_mark
            5: context_action_select_legend_quest
            6: context_action_select_chapter_ongoing_main_quest
            7: context_action_set_text
            8: context_action_set_text_with_main_quest_name
            9: context_action_set_active
            10: context_action_set_animator_trigger
            11: context_action_report_activity_buried_point
            _: aux_types::error
