import std.format;

import board : Position;

enum BombType : string
{
    LONG = "long",
    COMPACT = "compact"
}

struct Bomb
{
    // Attributes
    private
    {
        Position _pos = Position(-42,-42);
        uint _color = 0;
        uint _range = 1;
        BombType _type = BombType.LONG;
    }

    // "Get" properties
    @property Position position() const pure @safe @nogc { return _pos; }
    @property uint color() const pure @safe @nogc { return _color; }
    @property uint range() const pure @safe @nogc { return _range; }
    @property BombType type() const pure @safe @nogc { return _type; }

    // "Set" properties
    @property void position(in Position pos) pure @safe @nogc
    out { assert(_pos == pos); }
    body { _pos = pos; }

    @property void color(in uint color) pure @safe @nogc
    out { assert(_color == color); }
    body { _color = color; }

    @property void range(in uint range) pure @safe @nogc
    out { assert(_range == range); }
    body { _range = range; }

    @property void type(in BombType type) pure @safe @nogc
    out { assert(_type == type); }
    body { _type = type; }
}
