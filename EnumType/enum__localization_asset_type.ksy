meta:
  id: enum__localization_asset_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__localization_asset_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: localization_asset_type
enums:
  localization_asset_type:
    0: loc_default
    1: loc_image
    2: loc_text
    3: loc_subtitle
    4: loc_trophy_set_icon
