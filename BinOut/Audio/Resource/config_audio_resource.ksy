meta:
  id: config_audio_resource
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
    - ../../../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: sound_bank_package_name
    type: aux_types::string
    if: has_field_sound_bank_package_name
  - id: external_source_package_name
    type: aux_types::string
    if: has_field_external_source_package_name
  - id: streamed_music_package_name
    type: aux_types::string
    if: has_field_streamed_music_package_name
  - id: streamed_file_package_name
    type: aux_types::string
    if: has_field_streamed_file_package_name
  - id: n_sound_bank_split_bits
    type: u1
    if: has_field_n_sound_bank_split_bits
  - id: n_external_source_split_bits
    type: u1
    if: has_field_n_external_source_split_bits
  - id: n_streamed_music_split_bits
    type: u1
    if: has_field_n_streamed_music_split_bits
  - id: n_streamed_file_split_bits
    type: u1
    if: has_field_n_streamed_file_split_bits
  - id: package_file_extension
    type: aux_types::string
    if: has_field_package_file_extension
  - id: incrementals
    type: dict_of__aux_types__string_config_audio_incremental_resources
    if: has_field_incrementals
instances:
  has_field_sound_bank_package_name: # Field №0
    value: (bit_field.value & 0b0000000001) != 0
  has_field_external_source_package_name: # Field №1
    value: (bit_field.value & 0b0000000010) != 0
  has_field_streamed_music_package_name: # Field №2
    value: (bit_field.value & 0b0000000100) != 0
  has_field_streamed_file_package_name: # Field №3
    value: (bit_field.value & 0b0000001000) != 0
  has_field_n_sound_bank_split_bits: # Field №4
    value: (bit_field.value & 0b0000010000) != 0
  has_field_n_external_source_split_bits: # Field №5
    value: (bit_field.value & 0b0000100000) != 0
  has_field_n_streamed_music_split_bits: # Field №6
    value: (bit_field.value & 0b0001000000) != 0
  has_field_n_streamed_file_split_bits: # Field №7
    value: (bit_field.value & 0b0010000000) != 0
  has_field_package_file_extension: # Field №8
    value: (bit_field.value & 0b0100000000) != 0
  has_field_incrementals: # Field №9
    value: (bit_field.value & 0b1000000000) != 0
types:
  dict_of__aux_types__string_config_audio_incremental_resources:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__string_config_audio_incremental_resources
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__string_config_audio_incremental_resources:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: config_audio_incremental_resources
  config_audio_incremental_resources:
    seq:
      - id: bit_field
        type: u1
      - id: sfx_files
        type: array_of__aux_types__string__length_u
        if: has_field_sfx_files
      - id: music_files
        type: array_of__aux_types__string__length_u
        if: has_field_music_files
      - id: vo_files
        type: array_of__aux_types__string__length_u
        if: has_field_vo_files
    instances:
      has_field_sfx_files: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_music_files: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_vo_files: # Field №2
        value: (bit_field & 0b100) != 0
