from escpos.printer import Dummy
import sys

d = Dummy(profile="TM-T88V")
d.profile.media_width_pixel = 512
d.hw("INIT")
d.image(sys.argv[1], center=True)
with open('dibujo_binario.bin', 'wb') as f:
    f.write(d.output)
