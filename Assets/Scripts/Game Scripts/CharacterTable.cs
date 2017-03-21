using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
 
public static class CharacterTable
{
    private static Dictionary<string, CharacterDef> defs = new Dictionary<string, CharacterDef>()
    {
        { "JOE DUDE", new CharacterDef(3, 3, 3, 4) },
        { "LIGHTNING O'LEARY", new CharacterDef(4, 5, 2, 3) },
        { "FREIGHT TRAIN", new CharacterDef(3, 2, 5, 4) },
        { "LAID BACK FELLA", new CharacterDef(2, 4, 3, 5) }
    };

    public static Dictionary<string, CharacterDef> Defs { get { return defs; } }

    public struct CharacterDef
    {
        int speed;
        int accel;
        int weight;
        int skillz;

        public int Speed { get { return speed; } }
        public int Accel { get { return accel; } }
        public int Weight { get { return weight; } }
        public int Skillz { get { return skillz; } }

        public CharacterDef(int _speed, int _accel, int _weight, int _skillz)
        {
            speed = _speed;
            accel = _accel;
            weight = _weight;
            skillz = _skillz;
        }
    }
}