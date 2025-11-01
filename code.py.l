from kmk.kmk_keyboard import KMKKeyboard
from kmk.keys import KC
from kmk.scanners import DiodeOrientation
from kmk.modules.split import Split, SplitSide, SplitType
from kmk.extensions.media_keys import MediaKeys
from kmk.modules.layers import Layers
import board
#import os, sys
#print(os.uname())
#print(sys.version)

keyboard = KMKKeyboard()

# === MATRIX DEFINITION ===
keyboard.row_pins = [board.GP0, board.GP1, board.GP2, board.GP3, board.GP4]
keyboard.col_pins = [board.GP10, board.GP11, board.GP12, board.GP13,
                     board.GP14, board.GP15, board.GP26, board.GP27]
keyboard.diode_orientation = DiodeOrientation.COL2ROW

# === SPLIT CONFIG ===
split = Split(
    split_target_left=True,
    split_flip=False,
    split_side=SplitSide.LEFT,
    data_pin=board.GP8,
    split_type=SplitType.UART,
    uart_interval=20,
    use_pio=True

)
keyboard.modules.append(split)
keyboard.modules.append(MediaKeys())
keyboard.modules.append(Layers())


MOMENTARY = KC.MO(1)

# === KEYMAPS ===
# We'll define 31 keys (fill in as you wire).
# Unused positions can be KC.NO.

#L0 = [
    
#    [
#        KC.Q, KC.W, KC.E, KC.R, KC.T, KC.Y, KC.U, KC.I,
#        KC.TAB, KC.A, KC.S, KC.D, KC.F, KC.G, KC.H, KC.J,
#        KC.LSFT, KC.Z, KC.X, KC.C, KC.V, KC.B, KC.N, KC.M,
#        KC.LCTL, KC.LALT, KC.SPC, KC.BSPC, KC.ENT, KC.NO, KC.NO, KC.NO,
#        KC.NO, KC.NO, KC.NO, KC.NO, KC.NO, KC.NO, KC.NO, KC.NO,    ],
#]

#L1 = [
#    [
#    KC.GRAVE, KC.F1, KC.F2, KC.F3, KC.F4, KC.F5, KC.F6, KC.F7,
#    KC.NO, KC.NO, KC.LEFT, KC.DOWN, KC.UP, KC.RIGHT, KC.NO, KC.NO,
#    KC.NO, KC.NO, KC.NO, KC.NO, KC.NO, KC.NO,
#    KC.NO, KC.NO, KC.NO, KC.NO, KC.NO,
#    KC.NO, KC.NO, KC.NO, KC.NO,
#    ],
#]

keyboard.keymap = [
    [KC.MEDIA_PLAY_PAUSE, KC.LSFT(KC.LGUI(KC.S)), KC.ESC, KC.N1, KC.N2, KC.N3, KC.N4, KC.N5, KC.N6, KC.N7, KC.N8, KC.N9, KC.N0, KC.MINUS, KC.EQUAL, KC.BSPACE,
    KC.MEDIA_NEXT_TRACK, KC.MEDIA_PREV_TRACK, KC.TAB, KC.Q, KC.W, KC.E, KC.R, KC.T, KC.Y, KC.U, KC.I, KC.O, KC.P, KC.LBRACKET, KC.RBRACKET, KC.BSLASH,
    KC.NO, KC.NO, KC.CAPS, KC.A, KC.S, KC.D, KC.F, KC.G, KC.H, KC.J, KC.K, KC.L, KC.SCOLON, KC.QUOTE, KC.NO, KC.NO,
    KC.NO, KC.NO, KC.LSHIFT, KC.Z, KC.X, KC.C, KC.V, KC.B, KC.N, KC.M, KC.COMMA, KC.DOT, KC.SLASH, KC.RSHIFT, KC.NO, KC.NO,
    KC.NO, KC.NO, KC.NO, KC.NO, KC.NO, KC.LCTRL, KC.SPACE, KC.LGUI, KC.LALT, KC.ENTER, MOMENTARY, KC.NO, KC.NO, KC.NO, KC.NO, KC.NO],

    [KC.MEDIA_PLAY_PAUSE, KC.LSFT(KC.LGUI(KC.S)), KC.ESC, KC.N1, KC.N2, KC.N3, KC.N4, KC.N5, KC.N6, KC.N7, KC.N8, KC.N9, KC.N0, KC.MINUS, KC.EQUAL, KC.LCTRL(KC.LALT(KC.DELETE)),
    KC.MEDIA_NEXT_TRACK, KC.MEDIA_PREV_TRACK, KC.TAB, KC.Q, KC.UP, KC.E, KC.R, KC.T, KC.Y, KC.U, KC.I, KC.O, KC.P, KC.LBRACKET, KC.RBRACKET, KC.BSLASH,
    KC.NO, KC.NO, KC.CAPS, KC.LEFT, KC.DOWN, KC.RIGHT, KC.F, KC.G, KC.H, KC.J, KC.K, KC.L, KC.SCOLON, KC.QUOTE, KC.NO, KC.NO,
    KC.NO, KC.NO, KC.LSHIFT, KC.Z, KC.X, KC.C, KC.V, KC.B, KC.N, KC.M, KC.COMMA, KC.DOT, KC.SLASH, KC.RSHIFT, KC.NO, KC.NO,
    KC.NO, KC.NO, KC.NO, KC.NO, KC.NO, KC.LCTRL, KC.SPACE, KC.LGUI, KC.LALT, KC.ENTER, MOMENTARY, KC.NO, KC.NO, KC.NO, KC.NO, KC.NO],



]
if __name__ == "__main__":
    keyboard.go()


