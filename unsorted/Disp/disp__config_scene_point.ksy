types:
  disp__config_scene_point:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_scene_point
            1: scene_trans_point
            2: dungeon_exit
            3: dungeon_way_point
            4: dungeon_slip_revive_point
            5: dungeon_quit_point
            6: dungeon_reward_point
            7: personal_scene_jump_point
            8: scene_building_point
            9: scene_vehicle_summon_point
            10: config_force_field
            11: config_local_entity
            12: config_loading_door
            13: virtual_trans_point
            14: dungeon_entry
            15: config_const_force_field
            16: config_rise_field
            17: config_airflow_field
            18: config_speedup_field
            19: config_light_core
            20: config_fire_grass_airflow_field
            21: config_cannon_field
            22: config_windmill
            23: config_local_trigger
            _: aux_types::error
