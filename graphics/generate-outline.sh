inkscape neuron.svg -o neuron.eps --export-ignore-filters --export-ps-level=3
pstoedit -dt -f "dxf:-polyaslines" neuron.eps > neuron.dxf

inkscape qr-code.svg -o qr-code.eps --export-ignore-filters --export-ps-level=3
pstoedit -dt -f "dxf:-polyaslines" qr-code.eps > qr-code.dxf
