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

#pins
keyboard.row_pins = [board.GP0, board.GP1, board.GP2, board.GP3, board.GP4]
keyboard.col_pins = [board.GP10, board.GP11, board.GP12, board.GP13,
                     board.GP14, board.GP15, board.GP26, board.GP27]
keyboard.diode_orientation = DiodeOrientation.COL2ROW

#split config
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

#keymap


keyboard.keymap = [
    [KC.LSFT(KC.LGUI(KC.S)),KC.MEDIA_PLAY_PAUSE,  KC.ESC, KC.N1, KC.N2, KC.N3, KC.N4, KC.N5, KC.N6, KC.N7, KC.N8, KC.N9, KC.N0, KC.BSPACE, KC.BSPACE, KC.BSPACE,
    KC.MEDIA_PREV_TRACK, KC.MEDIA_NEXT_TRACK, KC.TAB, KC.Q, KC.W, KC.E, KC.R, KC.T, KC.Y, KC.U, KC.I, KC.O, KC.P, KC.LBRACKET, KC.RBRACKET, KC.BSLASH,
    KC.NO, KC.NO, KC.LSHIFT, KC.A, KC.S, KC.D, KC.F, KC.G, KC.H, KC.J, KC.K, KC.L, KC.SCOLON, KC.QUOTE, KC.NO, KC.NO,
    KC.NO, KC.NO, KC.LCTRL, KC.Z, KC.X, KC.C, KC.V, KC.B, KC.N, KC.M, KC.COMMA, KC.DOT, KC.SLASH, KC.RSHIFT, KC.NO, KC.NO,
    KC.NO, KC.NO, KC.NO, KC.NO, KC.NO, KC.LALT, KC.SPACE, KC.LGUI, MOMENTARY, KC.ENTER, KC.LALT, KC.NO, KC.NO, KC.NO, KC.NO, KC.NO],

    [KC.MEDIA_PLAY_PAUSE, KC.LSFT(KC.LGUI(KC.S)), KC.TILDE, KC.F1, KC.F2, KC.F3, KC.F4, KC.F5, KC.F6, KC.F7, KC.F8, KC.F9, KC.F10, KC.DEL, KC.NO, KC.LCTRL(KC.LALT(KC.DELETE)),
    KC.MEDIA_PREV_TRACK, KC.MEDIA_NEXT_TRACK, KC.TAB, KC.Q, KC.UP, KC.E, KC.R, KC.T, KC.MINUS, KC.EQUAL, KC.I, KC.O, KC.F11, KC.F12, KC.RBRACKET, KC.BSLASH,
    KC.NO, KC.NO, KC.CAPS, KC.LEFT, KC.DOWN, KC.RIGHT, KC.F, KC.G, KC.H, KC.J, KC.K, KC.L, KC.SCOLON, KC.QUOTE, KC.NO, KC.NO,
    KC.NO, KC.NO, KC.LSHIFT, KC.Z, KC.X, KC.LCTL(KC.LSHIFT(KC.C)), KC.LCTL(KC.LSHIFT(KC.V)), KC.B, KC.N, KC.M, KC.COMMA, KC.DOT, KC.SLASH, KC.RSHIFT, KC.NO, KC.NO,
     KC.NO, KC.NO, KC.NO, KC.NO, KC.NO, KC.LCTRL, KC.SPACE, KC.LGUI, MOMENTARY, KC.ENTER, KC.LALT, KC.NO, KC.NO, KC.NO, KC.NO, KC.NO],



]
if __name__ == "__main__":
    keyboard.go()


