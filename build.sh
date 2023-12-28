
#!/bin/bash

# Add these lines before the autoreconf command
export CXXFLAGS="-I/opt/homebrew/opt/libomp/include -Xpreprocessor -fopenmp"
export LDFLAGS="-L/opt/homebrew/opt/libomp/lib"


touch NEWS README AUTHORS
autoreconf -vif && \
    ./configure && \
    make LDFLAGS="$LDFLAGS -lomp"
