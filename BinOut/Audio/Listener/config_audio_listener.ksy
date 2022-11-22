meta:
  id: config_audio_listener
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
    - ../../Common/array_of__config_wwise_string__length_u
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: fake_avatar_distance
    type: f4
    if: has_field_fake_avatar_distance
  - id: ak_listener_height
    type: f4
    if: has_field_ak_listener_height
  - id: obstruction_rtpc
    type: config_wwise_string
    if: has_field_obstruction_rtpc
  - id: focus_angle_rtpc
    type: config_wwise_string
    if: has_field_focus_angle_rtpc
  - id: obstruction_detect_radius
    type: f4
    if: has_field_obstruction_detect_radius
  - id: outreach_cast
    type: config_audio_listener_outreach_cast
    if: has_field_outreach_cast
  - id: first_person_listener_volume_offset
    type: f4
    if: has_field_first_person_listener_volume_offset
  - id: third_person_listener_volume_offset
    type: f4
    if: has_field_third_person_listener_volume_offset
  - id: default_listener_volume_offset
    type: f4
    if: has_field_default_listener_volume_offset
instances:
  has_field_fake_avatar_distance: # Field №0
    value: (bit_field.value & 0b000000001) != 0
  has_field_ak_listener_height: # Field №1
    value: (bit_field.value & 0b000000010) != 0
  has_field_obstruction_rtpc: # Field №2
    value: (bit_field.value & 0b000000100) != 0
  has_field_focus_angle_rtpc: # Field №3
    value: (bit_field.value & 0b000001000) != 0
  has_field_obstruction_detect_radius: # Field №4
    value: (bit_field.value & 0b000010000) != 0
  has_field_outreach_cast: # Field №5
    value: (bit_field.value & 0b000100000) != 0
  has_field_first_person_listener_volume_offset: # Field №6
    value: (bit_field.value & 0b001000000) != 0
  has_field_third_person_listener_volume_offset: # Field №7
    value: (bit_field.value & 0b010000000) != 0
  has_field_default_listener_volume_offset: # Field №8
    value: (bit_field.value & 0b100000000) != 0
types:
  config_audio_listener_outreach_cast:
    seq:
      - id: bit_field
        type: u1
      - id: range
        type: f4
        if: has_field_range
      - id: start_angle
        type: f4
        if: has_field_start_angle
      - id: ray_count
        type: aux_types::vlq_base128_le_s
        if: has_field_ray_count
      - id: rtpc_names
        type: array_of__config_wwise_string__length_u
        if: has_field_rtpc_names
      - id: offset
        type: vector
        if: has_field_offset
    instances:
      has_field_range: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_start_angle: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_ray_count: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_rtpc_names: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_offset: # Field №4
        value: (bit_field & 0b10000) != 0
