default:
    just --list

clean:
    find . -type d -name "tests" -prune -o -type f -name "*.pdf" -o -name "*.png" -o -name "*.svg" -print -delete

tests:
    tt run --use-system-fonts

test file:
    tt run --use-system-fonts {{file}}

examples:
    for f in examples/*.typ; \
    do \
        echo "Compile $f."; \
        typst compile --root ./ "$f" "${f%.*}{p}.svg"; \
    done

