inkscape neuron.svg -o neuron.eps --export-ignore-filters --export-ps-level=3
pstoedit -dt -f "dxf:-polyaslines" neuron.eps > neuron.dxf
