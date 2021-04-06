#include QMK_KEYBOARD_H

enum layer_number {
  _ALPH = 0,
  _FUNC = 1,
  _NUMB = 2,
  _NAVG = 3,
  _MDIA = 4,
  _MOUS = 5,
  _SYMB = 6,
};

// custom keymaps
#define MY_A LALT_T(KC_A)
#define MY_E LCTL_T(KC_E)
#define MY_I LSFT_T(KC_I)
#define MY_O LGUI_T(KC_O)
#define MY_U RALT_T(KC_U)

#define MY_S LALT_T(KC_S)
#define MY_N LCTL_T(KC_N)
#define MY_T LSFT_T(KC_T)
#define MY_R LGUI_T(KC_R)
#define MY_C RALT_T(KC_C)

#define MY_ESC LT(_FUNC, KC_ESC)
#define MY_TAB LT(_NUMB, KC_TAB)
#define MY_ENT LT(_NAVG, KC_ENT)

#define MY_DEL LT(_MDIA, KC_DEL)
#define MY_BSP LT(_MOUS, KC_BSPC)
#define MY_SPC LT(_SYMB, KC_SPC)

#define MY_COLN S(KC_SCLN)
#define MY_SCLN KC_SCLN
#define MY_LPRN S(KC_9)
#define MY_RPRN S(KC_0)
#define MY_LBRA ALGR(KC_QUOT)
#define MY_RBRA ALGR(KC_BSLS)
#define MY_LBRC ALGR(KC_LBRC)
#define MY_RBRC ALGR(KC_RBRC)
#define MY_LARR KC_BSLS
#define MY_RARR S(KC_BSLS)
#define MY_BSLH ALGR(KC_GRV)
#define MY_PIPE S(KC_GRV)
#define MY_TILD ALGR(KC_SCLN)
#define MY_HASH KC_GRV
#define MY_CEDL KC_RBRC
#define MY_CIRC KC_LBRC

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
 [_ALPH] = LAYOUT_split_3x5_3( \
  KC_J,    KC_H,    MY_O,    MY_U,    KC_Y,                   KC_V,    MY_C,     MY_R,    KC_F,    KC_Z,    \
  KC_Q,    MY_A,    MY_E,    MY_I,    KC_G,                   KC_D,    MY_T,     MY_N,    MY_S,    KC_K,    \
  KC_X,    KC_SLSH, KC_COMM, KC_QUOT, KC_DOT,                 KC_W,    KC_M,     KC_L,    KC_P,    KC_B,    \
                             MY_ESC,  MY_TAB, MY_ENT, MY_SPC, MY_BSP,  MY_DEL \
),

 [_FUNC] = LAYOUT_split_3x5_3( \
  _______, _______, _______, _______, _______,                   KC_F12 , KC_F7  , KC_F8  , KC_F9  , _______, \
  _______, _______, _______, _______, _______,                   KC_F11 , KC_F4  , KC_F5  , KC_F6  , _______, \
  _______, _______, _______, _______, _______, KC_F10 , KC_F1  , KC_F2  , KC_F3  , _______, \
                             _______, _______, _______, KC_APP , _______, _______ \
),

 [_NUMB] = LAYOUT_split_3x5_3( \
  _______, _______, _______, _______, _______,                   _______, KC_7   , KC_8   , KC_9   , _______, \
  _______, _______, _______, _______, _______,                   KC_MINS, KC_4   , KC_5   , KC_6   , _______, \
  _______, _______, _______, _______, _______, KC_EQL , KC_1   , KC_2   , KC_3   , _______, \
                             _______, _______, _______, KC_0   , _______, _______ \
),

 [_NAVG] = LAYOUT_split_3x5_3( \
  _______, _______, _______, _______, _______,                   KC_PGUP, KC_HOME, KC_UP  , KC_END , _______, \
  _______, _______, _______, _______, _______,                   KC_PGDN, KC_LEFT, KC_DOWN, KC_RGHT, _______, \
  _______, _______, _______, _______, _______, _______, KC_CAPS, _______, _______, _______, \
                             _______, _______, _______, _______, KC_BSPC, _______ \
),

 [_MDIA] = LAYOUT_split_3x5_3( \
  _______, _______, KC_VOLU, _______, _______,                   _______, _______, _______, _______, _______, \
  _______, KC_MPRV, KC_VOLD, KC_MNXT, _______,                   _______, _______, _______, _______, _______, \
  _______, _______, KC_MUTE, _______, _______, _______, _______, _______, _______, _______, \
                             _______, _______, _______, _______, _______, _______ \
),

 [_MOUS] = LAYOUT_split_3x5_3( \
  _______, KC_WH_L, KC_MS_U, KC_WH_R, KC_WH_U,                   _______, _______, _______, _______, _______, \
  _______, KC_MS_L, KC_MS_D, KC_MS_R, KC_WH_D,                   _______, _______, _______, _______, _______, \
  _______, _______, _______, _______, _______, _______, _______, _______, _______, _______, \
                             KC_BTN2, KC_BTN3, KC_BTN1, _______, _______, _______ \
),

 [_SYMB] = LAYOUT_split_3x5_3( \
  MY_COLN, MY_RPRN, MY_RBRA, MY_RBRC, MY_RARR,                   _______,    S(KC_7), S(KC_8), S(KC_9), _______, \
  MY_SCLN, MY_LPRN, MY_LBRA, MY_LBRC, MY_LARR,                   S(KC_MINS), S(KC_4), S(KC_5), S(KC_6), _______, \
  MY_HASH, MY_BSLH, MY_PIPE, MY_TILD, S(KC_2), S(KC_EQL) , S(KC_1), ALGR(KC_2), S(KC_3), _______, \
                             _______, MY_CEDL, MY_CIRC, _______,    _______, _______ \
)
};
