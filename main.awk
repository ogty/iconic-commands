BEGIN {
    FS = ":";
}

{
    key = gensub("\"", "", "g", $1);
    key = gensub(/\s/, "", "g", key);

    if (target == key) {
        value = gensub("\"", "", "g", $2);
        value = gensub(",", "", "g", value);
        value = gensub(/\s/, "", "g", value);
        print(value);
    }
}
