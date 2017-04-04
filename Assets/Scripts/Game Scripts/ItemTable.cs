using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public static class ItemTable
{
    private static Dictionary<int, ItemDef> defs = new Dictionary<int, ItemDef>()
    {
        // FOOD items
        { 11, new ItemDef(11, "fresh produce", Globals.CAT_FOOD, 1, 100) },
        { 12, new ItemDef(12, "beef jerky", Globals.CAT_FOOD, 2, 150) },
        { 13, new ItemDef(13, "dried fruit", Globals.CAT_FOOD, 3, 200) },
        // MEDS items
        { 21, new ItemDef(21, "painkillers", Globals.CAT_MEDS, 1, 300) },
        { 22, new ItemDef(22, "bandages", Globals.CAT_MEDS, 2, 400) },
        { 23, new ItemDef(23, "first-aid kit", Globals.CAT_MEDS, 3, 500) },
        // CLOTH items
        { 31, new ItemDef(31, "socks", Globals.CAT_CLOTH, 1, 200) },
        { 32, new ItemDef(32, "sweater", Globals.CAT_CLOTH, 2, 300) },
        { 33, new ItemDef(33, "jacket", Globals.CAT_CLOTH, 3, 400) },
        // COMM items
        { 41, new ItemDef(41, "walkie-talkie", Globals.CAT_COMM, 1, 800) },
        { 42, new ItemDef(42, "radio set", Globals.CAT_COMM, 1, 1400) },
        { 43, new ItemDef(43, "satellite phone", Globals.CAT_COMM, 3, 2000) },
        // POWER items
        { 51, new ItemDef(51, "rechargeable batteries", Globals.CAT_POWER, 1, 800) },
        { 52, new ItemDef(52, "motor", Globals.CAT_POWER, 2, 1400) },
        { 53, new ItemDef(53, "generator", Globals.CAT_POWER, 3, 2000) },
        // FLOAT items
        { 61, new ItemDef(61, "noodles", Globals.CAT_FLOAT, 1, 800) },
        { 62, new ItemDef(62, "pool tube", Globals.CAT_FLOAT, 2, 1400) },
        { 63, new ItemDef(63, "emergency raft", Globals.CAT_FLOAT, 3, 2000) },
        // FIRE items
        { 71, new ItemDef(71, "fire blanket", Globals.CAT_FIRE, 1, 800) },
        { 72, new ItemDef(72, "fire axe", Globals.CAT_FIRE, 2, 1400) },
        { 73, new ItemDef(73, "fire blanket", Globals.CAT_FIRE, 3, 2000) },
        // NEUT items
        { 81, new ItemDef(81, "mini chem kit", Globals.CAT_NEUT, 1, 500) },
        { 82, new ItemDef(82, "medium chem kit", Globals.CAT_NEUT, 2, 1500) },
        { 83, new ItemDef(83, "jumbo chem kit", Globals.CAT_NEUT, 3, 3000) },
        // ABSRB items
        { 91, new ItemDef(91, "kimwipes", Globals.CAT_ABSRB, 1, 200) },
        { 92, new ItemDef(92, "spill pad", Globals.CAT_ABSRB, 2, 500) },
        { 93, new ItemDef(93, "chem-gone", Globals.CAT_ABSRB, 3, 1000) }
    };

    public static Dictionary<int, ItemDef> Defs { get { return defs; } }

    public struct ItemDef
    {
        int id;
        string name;
        string category;
        int rank;
        int basepoints;

        public int ID { get { return id; } }
        public string Name { get { return name; } }
        public string Category { get { return category; } }
        public int Rank { get { return rank; } }
        public int BasePoints { get { return basepoints; } }

        public ItemDef(int _id, string _name, string _category, int _rank, int _basepoints)
        {
            id = _id;
            name = _name;
            category = _category;
            rank = _rank;
            basepoints = _basepoints;
        }
    }
}