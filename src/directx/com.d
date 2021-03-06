module directx.com;
public import directx.win32;
public import std.c.windows.com;


alias const(GUID)* REFGUID, REFIID, REFCLSID, REFFMTID;

mixin( uuid!(IUnknown, "00000000-0000-0000-C000-000000000046"));
mixin( uuid!(IClassFactory,"00000001-0000-0000-C000-000000000046"));

template uuid(T, const char[] g) {
    const char [] uuid =
        "const IID IID_"~T.stringof~"={ 0x" ~ g[0..8] ~ ",0x" ~ g[9..13] ~ ",0x" ~ g[14..18] ~ ",[0x" ~ g[19..21] ~ ",0x" ~ g[21..23] ~ ",0x" ~ g[24..26] ~ ",0x" ~ g[26..28] ~ ",0x" ~ g[28..30] ~ ",0x" ~ g[30..32] ~ ",0x" ~ g[32..34] ~ ",0x" ~ g[34..36] ~ "]};"
        "template uuidof(T:"~T.stringof~"){"
        "    const IID uuidof ={ 0x" ~ g[0..8] ~ ",0x" ~ g[9..13] ~ ",0x" ~ g[14..18] ~ ",[0x" ~ g[19..21] ~ ",0x" ~ g[21..23] ~ ",0x" ~ g[24..26] ~ ",0x" ~ g[26..28] ~ ",0x" ~ g[28..30] ~ ",0x" ~ g[30..32] ~ ",0x" ~ g[32..34] ~ ",0x" ~ g[34..36] ~ "]};"
        "}";
}






