{
  "path": "dss/out/VatI.abi",
  "vars": {
    "Root"        : "address",
    "Tab"         : "int256",
    "Vice"        : "int256"
  },
  "stores": {
    "#root" : "Root",
    "#Tab" : "#unsigned(Tab)",
    "#vice" : "#unsigned(Vice)"
  },
  "methods": {
    "root": {
      "vars" : {
      },
      "stores" : {
      },
      "requires" : [
      ],
      "returns" : "Root : .WordStack"
    },
    "dai":  {
      "vars" : {
        "Rad" : "int256"
      },
      "stores" : {
        "#dai(ABI_lad)" : "#unsigned(Rad)"
      },
      "requires" : [
      ],
      "returns" : "#unsigned(Rad) : .WordStack"
    },
    "sin":  {
      "vars" : {
        "Rad" : "int256"
      },
      "stores" : {
        "#sai(ABI_lad)" : "#unsigned(Rad) : .WordStack"
      },
      "requires" : [
      ],
      "returns" : "#unsigned(Rad) : .WordStack"
    },
    "ilks": {
      "vars" : {
        "ABI_ilk" : "bytes32",
        "Rate" : "int256",
        "Art" : "int256"
      },
      "stores" : {
        "#ilks(ABI_ilk, \"rate\")" : "#unsigned(Rate)",
        "#ilks(ABI_ilk, \"Art\")" : "#unsigned(Art)"
      },
      "requires" : [
      ],
      "returns" : "#unsigned(Rate) : #unsigned(Art) : .WordStack"
    },
    "urns": {
      "vars" : {
        "ABI_ilk" : "bytes32",
        "ABI_lad" : "address",
        "Gem" : "int256",
        "Ink" : "int256",
        "Art" : "int256"
      },
      "stores" : {
        "#urns(ABI_ilk, ABI_lad, \"gem\")" : "#unsigned(Gem)",
        "#urns(ABI_ilk, ABI_lad, \"ink\")" : "#unsigned(Ink)",
        "#urns(ABI_ilk, ABI_lad, \"art\")" : "#unsigned(Art)"
      },
      "requires" : [
      ],
      "returns" : "#unsigned(Gem) : #unsigned(Ink) : #unsigned(Art) : .WordStack"
    },
    "Tab": {
      "vars" : {
      },
      "stores" : {
      },
      "requires" : [
      ],
      "returns" : "Tab : .WordStack"
    },
    "vice": {
      "vars" : {
      },
      "stores" : {
      },
      "requires" : [
      ],
      "returns" : "Vice : .WordStack"
    },
    "file": {
      "vars" : {
        "ABI_ilk" : "bytes32",
        "ABI_what" : "bytes32",
        "ABI_risk" : "int256"
      },
      "stores" : {
        "#ilks(ABI_ilk, \"rate\")" : "_ => #unsigned(ABI_risk)"
      },
      "requires" : [
        "ABI_what ==Int 51735852229306712642142495812301944985879738350407357154196970624323795550208"
      ],
      "returns" : ""
    },
    "move(address,address,uint256)": {
      "vars" : {
        "ABI_src" : "address",
        "ABI_dst" : "address",
        "ABI_wad" : "uint256",
        "Dai_src" : "int256",
        "Dai_dst" : "int256"
      },
      "stores" : {
        "#dai(ABI_src)" : "#unsigned(Dai_src) => #unsigned(Dai_src -Int #wad2rad(ABI_wad))",
        "#dai(ABI_dst)" : "#unsigned(Dai_dst) => #unsigned(Dai_dst +Int #wad2rad(ABI_wad))"
      },
      "requires" : [
        "#rangeSInt(256, ABI_wad)",
        "#rangeSInt(Dai_src -Int #wad2rad(ABI_wad))",
        "#rangeSInt(Dai_dst +Int #wad2rad(ABI_wad))",
        "Dai_src -Int #wad2rad(ABI_wad) >=Int 0",
        "Dai_dst +Int #wad2rad(ABI_wad) >=Int 0"        
      ],
      "returns" : ""
    },
    "move(address,address,int256)": {
      "vars" : {
        "ABI_src" : "address",
        "ABI_dst" : "address",
        "ABI_wad" : "int256",
        "Dai_src" : "int256",
        "Dai_dst" : "int256"
      },
      "stores" : {
        "#dai(ABI_src)" : "#unsigned(Dai_src) => #unsigned(Dai_src -Int #wad2rad(ABI_wad))",
        "#dai(ABI_dst)" : "#unsigned(Dai_dst) => #unsigned(Dai_dst +Int #wad2rad(ABI_wad))"
      },
      "requires" : [
        "#rangeSInt(Dai_src -Int #wad2rad(ABI_wad))",
        "#rangeSInt(Dai_dst +Int #wad2rad(ABI_wad))",
        "Dai_src -Int #wad2rad(ABI_wad) >=Int 0",
        "Dai_dst +Int #wad2rad(ABI_wad) >=Int 0"
      ],
      "returns" : ""
    },
    "slip": {
      "vars" : {
        "ABI_ilk" : "bytes32",
        "ABI_guy" : "address",
        "ABI_wad" : "int256",
        "Wad" : "int256"
      },
      "stores" : {
        "#urns(ABI_ilk, ABI_guy, \"gem\")" : "#unsigned(Wad) => #unsigned(Wad +Int ABI_wad)"
      },
      "requires" : [
        "#rangeSInt(256, Wad +Int ABI_wad)"
      ],
      "returns" : ""
    },
    "tune": {
      "vars" : {
        "ABI_ilk" : "bytes32",
        "ABI_lad" : "address",
        "ABI_dink" : "int256",
        "ABI_dart" : "int256",
        "Gem" : "int256",
        "Ink" : "int256",
        "Art" : "int256",
        "Art_i" : "int256",
        "Rate" : "int256",
        "Dai" : "int256"
      },
      "stores" : {
        "#urns(ABI_ilk, ABI_lad, \"gem\")" : "#unsigned(Gem) => #unsigned(Gem -Int ABI_dink)",
        "#urns(ABI_ilk, ABI_lad, \"ink\")" : "#unsigned(Ink) => #unsigned(Ink +Int ABI_dink)",
        "#urns(ABI_ilk, ABI_lad, \"art\")" : "#unsigned(Art) => #unsigned(Art +Int ABI_dart)",
        "#ilks(ABI_ilk, \"rate\")" : "#unsigned(Rate)",
        "#ilks(ABI_ilk, \"Art\")" : "#unsigned(Art_i) => #unsigned(Art_i +Int ABI_dart)",
        "#dai(ABI_lad)" : "#unsigned(Dai) => #unsigned(Dai +Int (Rate *Int ABI_dart))",
        "#Tab" : "#unsigned(Tab) => #unsigned(Tab +Int (Rate *Int ABI_dart)"
      },
      "requires" : [
        "#rangeSInt(256, Gem -Int ABI_dink)",
        "#rangeSInt(256, Ink +Int ABI_dink)",
        "#rangeSInt(256, Art +Int ABI_dart)",
        "#rangeSInt(256, Art_i +Int ABI_dart)",
        "#rangeSInt(256, Rate *Int ABI_dart)",
        "#rangeSInt(256, Dai +Int (Rate *Int ABI_dart))",
        "#rangeSInt(256, Tab +Int (Rate *Int ABI_dart))"
      ],
      "returns" : ""
    },
    "grab": {
      "vars" : {
        "ABI_ilk" : "bytes32",
        "ABI_lad" : "address",
        "ABI_vow" : "address",
        "ABI_dink" : "int256",
        "ABI_dart" : "int256",
        "Ink" : "int256",
        "Art" : "int256",
        "Art_i" : "int256",
        "Rate" : "int256",
        "Sin" : "int256"
      },
      "stores" : {
        "#urns(ABI_ilk, ABI_lad, \"ink\")" : "#unsigned(Ink) => #unsigned((Ink +Int ABI_dink)",
        "#urns(ABI_ilk, ABI_lad, \"art\")" : "#unsigned(Art) => #unsigned((Art +Int ABI_dart)",
        "#ilks(ABI_ilk, \"rate\")" : "#unsigned(Rate)",
        "#ilks(ABI_ilk, \"Art\")" : "#unsigned(Art_i) => #unsigned(Art_i +Int ABI_dart)",
        "#sin(ABI_vow)" : "#unsigned(Sin => #unsigned(Sin +Int (Rate *Int ABI_dart))",
        "#vice" : "#unsigned(Vice) => #unsigned(Vice +Int (Rate *Int ABI_dart)"
      },
      "requires" : [
        "#rangeSInt(256, Gem -Int ABI_dink)",
        "#rangeSInt(256, Ink +Int ABI_dink)",
        "#rangeSInt(256, Art +Int ABI_dart)",
        "#rangeSInt(256, Art_i +Int ABI_dart)",
        "#rangeSInt(256, Rate *Int ABI_dart)",
        "#rangeSInt(256, Dai +Int (Rate *Int ABI_dart))",
        "#rangeSInt(256, Tab +Int (Rate *Int ABI_dart))"
      ],
      "returns" : ""
    },
    "heal": {
      "vars" : {
        "ABI_u" : "address",
        "ABI_v" : "address",
        "ABI_wad" : "int256",
        "Dai_v" : "int256",
        "Sin_u" : "int256"
      },
      "stores" : {
        "#dai(ABI_v)" : "#unsigned(Dai_v) => #unsigned(Dai_v -Int #wad2rad(ABI_wad))",
        "#sin(ABI_u)" : "#unsigned(Sin_u) => #unsigned(Sin_u -Int #wad2rad(ABI_wad))",
        "#vice" : "#unsigned(Vice) => #unsigned(Vice -Int #wad2rad(ABI_wad))",
        "#Tab" : "#unsigned(Tab) => #unsigned(Tab -Int #wad2rad(ABI_wad))"
      },
      "requires" : [
        "Dai_v >=Int #wad2rad(ABI_wad)",
        "Sin_u >=Int #wad2rad(ABI_wad)",
        "Vice >= Int #wad2rad(ABI_wad)",
        "Tab >=Int #wad2rad(ABI_wad)",
        "#rangeSInt(Dai_v -Int #wad2rad(ABI_wad))",
        "#rangeSInt(Sin_u -Int #wad2rad(ABI_wad))",
        "#rangeSInt(Vice -Int #wad2rad(ABI_wad))",
        "#rangeSInt(Tab -Int #wad2rad(ABI_wad))"
      ],
      "returns" : ""
    },
    "fold": {
      "vars" : {
        "ABI_ilk" : "bytes32",
        "ABI_vow" : "address",
        "ABI_rate" : "int256",
        "Rate" : "int256",
        "Dai" : "int256",
        "Art" : "int256"        
      },
      "stores" : {
        "#ilks(ABI_ilk, \"rate\")" : "#unsigned(Rate => #unsigned(Rate +Int ABI_rate)",
        "#ilks(ABI_ilk, \"Art\")" : "#unsigned(Art)",
        "#dai(ABI_vow)" : "#unsigned(Dai) => #unsigned(Dai +Int (Art *Int ABI_rate))",
        "#Tab" : "#unsigned(Tab) => #unsigned(Tab +Int (Art *Int ABI_rate))"
      },
      "requires" : [
        "#rangeSInt(256, Rate +Int ABI_rate)",
        "#rangeSInt(256, Art *Int ABI_rate)",
        "#rangeSInt(256, Dai +Int (Art *Int ABI_rate))",
        "#rangeSInt(256, Tab +Int (Art *Int ABI_rate))"
      ],
      "returns" : ""
    }
  }
}