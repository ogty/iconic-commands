BEGIN {
    FS = ":";
}

function all_replacer(before, after, data) {
    split(data, splited_data, before);
    splited_data_length = length(splited_data);

    for (i = 0; i < splited_data_length; i += 1) {
        sub(before, after, data);
    }
    return data;
}

{
    key = all_replacer("\"", "", $1);
    key = all_replacer("\n", "", key);
    key = all_replacer("\x20", "", key);
    key = all_replacer("\x20", "", key);
    key = all_replacer("\x20", "", key);
    key = all_replacer("\x20", "", key);

    if (target == key) {
        value = all_replacer("\"", "", $2);
        value = all_replacer(",", "", value);
        value = all_replacer(" ", "", value);
        print(value);
    }
}
