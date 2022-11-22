types:
  disp__config_base_widget:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_base_widget
            1: config_widget_anchor_point
            2: config_widget_bonfire
            3: config_widget_condense_resin
            4: config_widget_lunch_box
            5: config_widget_oneoff_gather_point_detector
            6: config_widget_client_detector
            7: config_widget_client_collector
            8: config_widget_attach_avatar
            9: config_widget_treasure_map_detector
            10: config_widget_gadget_builder
            11: config_widget_take_photo
            12: config_widget_blessing_camera
            13: config_widget_miracle_ring
            14: config_widget_water_sprite
            15: config_widget_water_sprite_toy
            16: config_widget_ability_group_generator
            17: config_widget_open_page
            18: config_widget_use_attach_ability_group_toy
            19: config_widget_use_item_toy
            20: config_widget_add_buff_toy
            _: aux_types::error
