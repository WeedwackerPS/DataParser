meta:
  id: enum__interaction_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__interaction_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: interaction_type
enums:
  interaction_type:
    0: none
    1: dialog
    2: dialog_next
    3: dialog_finish
    4: dialog_select
    5: body_lang
    6: steer_to
    7: look_at
    8: look_at_eyectrl
    9: camera_move
    10: sound
    11: cutscene
    12: shop_exchange
    13: gadget_touch
    14: emo_sync
    15: ui_trigger
    16: emotion
    17: visible
    18: lua_action
    19: black_screen
    20: goddess
    21: show_message
    22: camera_focus
    23: dialog_clear
    24: audio_play
    25: video_play
    26: camera_dof
    27: move_to
    28: request_msg
    29: camera_shake
    30: emoji_bubble
    31: time_protect
    32: simple_black_screen
    33: simple_ui_show
    34: open_blossom_mark
    35: speech_bubble
    36: emotion_template
    37: sit_or_stand
    38: play_effect
    39: teleport_to
    40: first_sight
    41: set_animator
    42: play_post_effect
    43: play_frame_face_animation
    44: hide_widget_pet
    45: local_gadget_op
    46: other
