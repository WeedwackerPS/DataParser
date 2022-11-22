types:
  disp__config_base_widget_toy:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_base_widget_toy
            1: config_widget_toy_anchor_point
            2: config_widget_toy_bonfire
            3: config_widget_toy_lunch_box
            4: config_widget_toy_clint_detector
            5: config_widget_toy_oneoff_gather_point_detector
            6: config_widget_toy_clint_collector
            7: config_widget_toy_treasure_map_detector
            8: config_widget_toy_blessing_camera
            9: config_widget_toy_gadget_builder
            10: config_widget_toy_miracle_ring
            11: config_widget_toy_open_page
            12: config_widget_toy_water_sprite
            13: config_widget_toy_take_photo
            14: config_widget_toy_feather
            15: config_widget_toy_create_gadget_base
            16: config_widget_add_buff
            17: config_widget_toy_camera
            18: config_widget_toy_ability_group_generator
            19: config_widget_use_attach_ability_group
            20: config_widget_use_attach_ability_trigger
            21: config_widget_toy_adepti_abode
            22: config_widget_dig_scanner
            _: aux_types::error
