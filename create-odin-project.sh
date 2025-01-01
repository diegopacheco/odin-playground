#!/bin/bash

echo "package main

import \"core:fmt\"

main :: proc() {
        fmt.println(\"Hello World!\")
}" > main.odin

echo "#!/bin/bash

odin run . -file" > run.sh
chmod +x ./run.sh

echo "### Run
\`\`\`bash
./run.sh
\`\`\`" > README.md