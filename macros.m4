m4_define(underscored_re, `(?:^|(?<underscore>_))(?<word>[[:alnum:]]+)(?=$|_)')m4_dnl
m4_define(underscored_lower_format, `$+{underscore}\L$+{word}\E')m4_dnl
m4_define(underscored_upper_format, `$+{underscore}\U$+{word}\E')m4_dnl
m4_define(title_case_format, `\L\u$+{word}\E')m4_dnl
m4_define(to_lower, `underscored_re/underscored_lower_format/g')m4_dnl
m4_define(to_upper, `underscored_re/underscored_upper_format/g')m4_dnl
m4_define(to_title_case, `underscored_re/title_case_format/g')m4_dnl
<!-- This snippet is generated from source_file -->