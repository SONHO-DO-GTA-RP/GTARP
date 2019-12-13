
local cfg = {}

-- example of study transformer
local itemtr_study = {
  name="Estante de Livros", -- menu name
  r=0,g=255,b=0, -- color
  max_units=20,
  units_per_minute=10,
  x=0,y=0,z=0, -- pos (doesn't matter as home component)
  radius=1.1, height=1.5, -- area
  recipes = {
    ["Livros de Produtos Quimicos"] = { -- action name
      description="Leia um livro de produtos Quimicos", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={}, -- items taken per unit
      products={}, -- items given per unit
      aptitudes={ -- optional
        ["science.chemicals"] = 1 -- "group.aptitude", give 1 exp per unit
      }
    },
    ["Livros de Matemática"] = { -- action name
      description="Leia um Livro de Matemática", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={}, -- items taken per unit
      products={}, -- items given per unit
      aptitudes={ -- optional
        ["science.mathematics"] = 1 -- "group.aptitude", give 1 exp per unit
      }
    }
  }
}

----------------------------------------------------------------------------------------- laboratory
local itemtr_laboratory = {
  name="Mesa de Processamento", -- menu name
  r=0,g=255,b=0, -- color
  max_units=8000,
  units_per_minute=20,
  x=0,y=0,z=0, -- pos (doesn't matter as home component)
  radius=1.1, height=1.5, -- area
  recipes = {
    ["Cocaina"] = { -- action name
      description="Processar Cocaina", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={ -- items taken per unit
	  ["folhadecoca"] = 2
	  
	  },
      products={ -- items given per unit
	  ["cocaina"] = 1
	  }, 
      aptitudes={ -- optional
        ["laboratory.cocaine"] = 5, -- "group.aptitude", give 1 exp per unit
		["science.chemicals"] = 10
	  }
    },
    ["Metanfetamina"] = { -- action name
      description="Processar Metanfetamina", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={ -- items taken per unit
	  ["crystalmelamine"] = 2
	  
	  },
      products={ -- items given per unit
	  ["metanfetamina"] = 1
	  }, 
      aptitudes={ -- optional
        ["laboratory.cocaine"] = 5, -- "group.aptitude", give 1 exp per unit
		["science.chemicals"] = 10
	  }
    },	
	["Maconha"] = { -- action name
      description="Processar Maconha", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={ -- items taken per unit
	  ["weed"] = 2
	  },
      products={ -- items given per unit
	  ["cannabis"] = 1
	  }, 
      aptitudes={ -- optional
        ["laboratory.weed"] = 5, -- "group.aptitude", give 1 exp per unit
		["science.chemicals"] = 10
	  }
    },
  }
}

-- default flats positions from https://github.com/Nadochima/HomeGTAV/blob/master/List

-- define the home slots (each entry coordinate should be unique for ALL types)
-- each slots is a list of home components
--- {component,x,y,z} (optional _config)
--- the entry component is required
cfg.slot_types = {
  ["basic_flat"] = {
    {
      {"entry",-782.171,324.589,223.258},
      {"chest",-773.718078613281,325.144409179688,223.266357421875, _config = {weight=200}},
      {"wardrobe",-760.885437011719,325.457153320313,217.061080932617},
      {"gametable",-755.40185546875,318.263214111328,221.875823974609},
	  {"itemtr", _config = itemtr_laboratory, -772.294372558594,328.913177490234,223.261581420898},
      {"itemtr", _config = itemtr_study, -758.670104980469,315.048156738281,221.854904174805}
    },
    {
      {"entry",-774.171,333.589,207.621},
      {"chest",-782.118591308594,332.147399902344,207.629608154297, _config = {weight=200}},
      {"wardrobe",-795.118469238281,331.631256103516,201.42431640625},
      {"gametable",-800.763427734375,338.574951171875,206.239105224609},
	  {"itemtr", _config = itemtr_laboratory, -783.788635253906,328.553985595703,207.625396728516},
      {"itemtr", _config = itemtr_study, -797.283447265625,342.134338378906,206.21842956543}
    },
    {
      {"entry",-774.171,333.589,159.998},
      {"chest",-782.66015625,332.523284912109,160.010223388672, _config = {weight=200}},
      {"wardrobe",-795.550964355469,332.229614257813,153.804931640625},
      {"gametable",-801.228942871094,339.106231689453,158.619750976563},
	  {"itemtr", _config = itemtr_laboratory, -784.178588867188,328.916839599609,160.006057739258},
      {"itemtr", _config = itemtr_study, -797.896728515625,342.543273925781,158.599044799805}
    },
    {
      {"entry",-596.689,59.139,108.030},
      {"chest",-604.427001953125,57.0807762145996,108.035743713379, _config = {weight=200}},
      {"wardrobe",-617.180358886719,56.9536590576172,101.830520629883},
      {"gametable",-623.078796386719,63.688045501709,106.645317077637},
	  {"itemtr", _config = itemtr_laboratory, -605.9560546875,53.3968696594238,108.031196594238},
      {"itemtr", _config = itemtr_study, -619.724853515625,67.1367950439453,106.624366760254}
    },
    {
      {"entry",-1451.557,-523.546,69.556},
      {"chest",-1457.28601074219,-529.699523925781,69.565315246582, _config = {weight=200}},
      {"wardrobe",-1467.07995605469,-536.98583984375,63.3601188659668},
      {"gametable",-1476.12658691406,-534.873474121094,68.1748962402344},
	  {"itemtr", _config = itemtr_laboratory, -1456.35876464844,-533.55029296875,69.5607528686523},
      {"itemtr", _config = itemtr_study, -1475.36840820313,-530.117126464844,68.1540756225586}
    },
    {
      {"entry",-1452.185,-522.640,56.929},
      {"chest",-1457.3740234375,-529.737854003906,56.9376449584961, _config = {weight=200}},
      {"wardrobe",-1467.7158203125,-537.308349609375,50.732494354248},
      {"gametable",-1476.12670898438,-534.895751953125,55.547306060791},
	  {"itemtr", _config = itemtr_laboratory, -1456.32409667969,-533.43701171875,56.9333839416504},
      {"itemtr", _config = itemtr_study, -1475.39453125,-530.135192871094,55.5264129638672}
    },
    {
      {"entry",-907.900,-370.608,109.440},
      {"chest",-914.79296875,-375.26416015625,109.448974609375, _config = {weight=200}},
      {"wardrobe",-926.047912597656,-381.470153808594,103.243774414063},
      {"gametable",-934.216979980469,-378.082336425781,108.05859375},
	  {"itemtr", _config = itemtr_laboratory, -914.430541992188,-379.17333984375,109.444869995117},
      {"itemtr", _config = itemtr_study, -932.810302734375,-373.413330078125,108.03776550293}
    },
    {
      {"entry",-921.124,-381.099,85.480},
      {"chest",-915.268737792969,-375.818084716797,85.4891815185547, _config = {weight=200}},
      {"wardrobe",-904.0673828125,-369.910552978516,79.2839508056641},
      {"gametable",-895.890075683594,-373.167846679688,84.0987701416016},
	  {"itemtr", _config = itemtr_laboratory, -915.567504882813,-371.905731201172,85.4850234985352},
      {"itemtr", _config = itemtr_study, -897.224792480469,-377.828887939453,84.0779266357422},
    },
    {
      {"entry",-464.453,-708.617,77.086},
      {"chest",-466.566558837891,-700.528991699219,77.0956268310547, _config = {weight=200}},
      {"wardrobe",-466.892852783203,-687.88720703125,70.8903503417969},
      {"gametable",-459.870513916016,-682.054565429688,75.7051773071289},
	  {"itemtr", _config = itemtr_laboratory, -470.110504150391,-699.137634277344,77.0915145874023},
      {"itemtr", _config = itemtr_study, -456.510467529297,-685.274841308594,75.6842498779297},
    },
    {
      {"entry",-470.647,-689.459,53.402},
      {"chest",-469.077453613281,-697.664672851563,53.4144515991211, _config = {weight=200}},
      {"wardrobe",-468.939910888672,-710.398986816406,47.2093048095703},
      {"gametable",-475.543884277344,-716.226867675781,52.0241050720215},
	  {"itemtr", _config = itemtr_laboratory, -465.526031494141,-699.133666992188,53.4103393554688},
      {"itemtr", _config = itemtr_study, -479.113037109375,-712.874938964844,52.0032043457031},
    }
  },
  ["other_flat"] = {
    {
      {"entry",-784.363,323.792,211.996},
      {"chest",-766.744384765625,328.375,211.396545410156, _config = {weight=500}},
      {"wardrobe",-793.502136230469,326.861846923828,210.796630859375},
      {"gametable",-781.973083496094,338.788482666016,211.231979370117},
	  {"itemtr", _config = itemtr_laboratory, -763.146362304688,326.994598388672,211.396560668945},
      {"itemtr", _config = itemtr_study, -778.560241699219,333.439453125,211.197128295898}
    },
    {
      {"entry",-603.997,58.954,98.200},
      {"chest",-621.323669433594,54.2074241638184,97.5995330810547, _config = {weight=500}},
      {"wardrobe",-594.668823242188,55.5750961303711,96.9996185302734},
      {"gametable",-606.140441894531,43.8849754333496,97.4350128173828},
	  {"itemtr", _config = itemtr_laboratory, -624.831909179688,55.5965461730957,97.5995635986328},
      {"itemtr", _config = itemtr_study, -608.968322753906,49.1769981384277,97.4001312255859}
    },
    {
      {"entry",-1453.013,-539.629,74.044},
      {"chest",-1466.57763671875,-528.339294433594,73.4436492919922, _config = {weight=500}},
      {"wardrobe",-1449.85034179688,-549.231323242188,72.8437194824219},
      {"gametable",-1466.37182617188,-546.663757324219,73.279052734375},
	  {"itemtr", _config = itemtr_laboratory, -1467.62377929688,-524.550842285156,73.4436492919922},
      {"itemtr", _config = itemtr_study, -1463.84411621094,-541.1962890625,73.2442169189453}
    },
    {
      {"entry",-912.547,-364.706,114.274},
      {"chest",-926.693176269531,-377.596130371094,113.674102783203, _config = {weight=500}},
      {"wardrobe",-903.66650390625,-364.023223876953,113.074157714844},
      {"gametable",-908.407165527344,-379.825714111328,113.509590148926},
	  {"itemtr", _config = itemtr_laboratory, -930.571899414063,-378.051239013672,113.674072265625},
      {"itemtr", _config = itemtr_study, -913.553588867188,-376.692016601563,113.474617004395}
    }
  },
  ["fazenda_flat"] = {
    {
      {"entry",1396.9913330078,1141.8450927734,114.33367919922},
      {"chest",1398.0871582031,1164.1635742188,114.33367919922, _config = {weight=500}},
      {"wardrobe",1400.2038574219,1159.5600585938,114.33355712891},
      {"gametable",1397.1551513672,1132.1381835938,114.33355712891},
      {"itemtr", _config = itemtr_laboratory, 1393.8511962891,1145.1695556641,114.33367919922}
    }
  },
  ["casa1_flat"] = {
    {
      {"entry",-174.10354614258,497.32022094727,137.66696166992},
      {"chest",-174.37693786621,493.63809204102,130.04371643066, _config = {weight=800}},
      {"wardrobe",-167.42747497559,487.7958984375,133.84381103516},
      {"gametable",-165.07147216797,483.78701782227,137.26531982422},
      {"itemtr", _config = itemtr_laboratory, -175.00372314453,489.96774291992,130.04371643066}
    }
  },
  ["casa2_flat"] = {
    {
      {"entry",341.64733886719,437.40972900391,149.39405822754},
      {"chest",338.08242797852,436.81604003906,141.77076721191, _config = {weight=800}},
      {"wardrobe",334.31918334961,428.46383666992,145.57081604004},
      {"gametable",330.9817199707,425.03125,148.99258422852},
      {"itemtr", _config = itemtr_laboratory, 334.33459472656,436.2243347168,141.77076721191}
    }
  },
  ["casa3_flat"] = {
    {
      {"entry",373.74584960938,423.25018310547,145.90786743164},
      {"chest",376.92370605469,429.30517578125,138.30017089844, _config = {weight=800}},
      {"wardrobe",374.54263305664,411.5041809082,142.10012817383},
      {"gametable",373.52014160156,404.83322143555,145.52745056152},
      {"itemtr", _config = itemtr_laboratory, 379.07656860352,432.37295532227,138.30017089844}
    }
  },
  ["casa4_flat"] = {
    {
      {"entry",-682.23968505859,592.53051757813,145.39295959473},
      {"chest",-680.38427734375,588.95416259766,137.76976013184, _config = {weight=800}},
      {"wardrobe",-671.38696289063,587.29095458984,141.56988525391},
      {"gametable",-667.27911376953,585.09533691406,144.99156188965},
      {"itemtr", _config = itemtr_laboratory, -679.20172119141,585.43780517578,137.76976013184}
    }
  },
  ["casa5_flat"] = {
    {
      {"entry",-1289.6420898438,449.28283691406,97.902503967285},
      {"chest",-1287.9265136719,455.72882080078,90.294708251953, _config = {weight=800}},
      {"wardrobe",-1285.9825439453,438.18774414063,94.094734191895},
      {"gametable",-1285.4017333984,431.41772460938,97.522132873535},
      {"itemtr", _config = itemtr_laboratory, -1286.7156982422,459.36468505859,90.294708251953}
    }
  },
  ["favela_1"] = {
    {
      {"entry",1253.7153320313,-270.11599731445,79.815521240234},
      {"chest",1247.6011962891,-267.41632080078,79.802864074707, _config = {weight=1000}},
      {"wardrobe",1248.2937011719,-264.42697143555,79.80281829834}
    }
  },
  ["favela_2"] = {
    {
      {"entry",1264.9760742188,-268.88916015625,82.421226501465},
      {"chest",1258.4952392578,-265.98422241211,82.408576965332, _config = {weight=1000}},
      {"wardrobe",1259.2944335938,-262.7272644043,82.408554077148}
    }
  }, 
  ["favela_3"] = {
    {
      {"entry",1317.7757568359,-187.17065429688,111.1350479126},
      {"chest",1324.6770019531,-185.77102661133,111.12241363525, _config = {weight=1000}},
      {"wardrobe",1326.1480712891,-189.01454162598,111.12237548828}
    }
  },
  ["favela_4"] = {
    {
      {"entry",1317.7757568359,-187.17065429688,111.1350479126},
      {"chest",1333.4000244141,-176.00331115723,111.87280273438, _config = {weight=1000}},
      {"wardrobe",1335.7858886719,-178.4141998291,111.87237548828}
    }
  },
  ["favela_5"] = {
    {
      {"entry",1465.0557861328,-109.09043121338,149.5711517334},
      {"chest",1460.1085205078,-107.16309356689,149.55857849121, _config = {weight=1000}},
      {"wardrobe",1459.8017578125,-103.84490966797,149.55851745605}
    }
  },
  ["favela_6"] = {
    {
      {"entry",1576.6619873047,-69.097938537598,170.6403503418},
      {"chest",1569.8502197266,-67.716026306152,170.62789916992, _config = {weight=1000}},
      {"wardrobe",1569.9631347656,-63.984317779541,170.62771606445}
    }
  },
  ["favela_7"] = {
    {
      {"entry",1586.3348388672,-67.03832244873,170.90516662598},
      {"chest",1579.8922119141,-64.128463745117,170.89253234863, _config = {weight=1000}},
      {"wardrobe",1580.6549072266,-60.679885864258,170.89263916016}
    }
  },
  ["favela_8"] = {
    {
      {"entry",1606.3472900391,-69.783584594727,171.1997833252},
      {"chest",1601.1566162109,-65.342430114746,171.18725585938, _config = {weight=1000}},
      {"wardrobe",1602.9167480469,-62.007652282715,171.18725585938}
    }
  },
  ["favela_9"] = {
    {
      {"entry",1616.3620605469,-70.80493927002,171.69989013672},
      {"chest",1611.3208007813,-65.883972167969,171.68725585938, _config = {weight=1000}},
      {"wardrobe",1613.1422119141,-63.401172637939,171.68714904785}
    }
  },
  ["favela_10"] = {
    {
      {"entry",2228.4074707031,157.4141998291,233.38613891602},
      {"chest",2223.4282226563,158.63919067383,233.37359619141, _config = {weight=1000}},
      {"wardrobe",2222.7009277344,161.85507202148,233.3736114502}
    }
  },
  ["favela_11"] = {
    {
      {"entry",2367.1921386719,257.08212280273,191.47253417969},
      {"chest",2373.4519042969,259.56060791016,191.45993041992, _config = {weight=1000}},
      {"wardrobe",2375.3244628906,256.70413208008,191.45979309082}
    }
  },
  ["favela_12"] = {
    {
      {"entry",2388.6030273438,380.92315673828,178.58276367188},
      {"chest",2391.64453125,385.70779418945,178.57011413574, _config = {weight=1000}},
      {"wardrobe",2394.7041015625,384.69216918945,178.5700378418}
    }
  },
  ["favela_13"] = {
    {
      {"entry",2387.1298828125,391.87005615234,177.56343078613},
      {"chest",2390.5930175781,396.65460205078,177.55076599121, _config = {weight=1000}},
      {"wardrobe",2393.7160644531,395.90258789063,177.55067443848}
    }  
  },
  ["favela_14"] = {
    {
      {"entry",2223.2612304688,50.392860412598,253.67643737793},
      {"chest",2226.0725097656,46.751140594482,258.33343505859, _config = {weight=1000}},
      {"wardrobe",2228.671875,44.752681732178,258.33337402344}
    }
  },
  ["favela_15"] = {
    {
      {"entry",2233.1396484375,48.041664123535,258.9362487793},
      {"chest",2238.1726074219,44.947849273682,258.92346191406, _config = {weight=1000}},
      {"wardrobe",2237.6059570313,41.426933288574,258.92364501953}
    }
  },
  ["favela_16"] = {
    {
      {"entry",2100.7438964844,-92.076438903809,255.01029968262},
      {"chest",2099.1484375,-85.858917236328,254.99765014648, _config = {weight=1000}},
      {"wardrobe",2102.4001464844,-83.968795776367,254.99755859375}
    }
  },
  ["favela_17"] = {
    {
      {"entry",2087.8784179688,-99.503364562988,251.87278747559},
      {"chest",2081.017578125,-101.28954315186,251.86003112793, _config = {weight=1000}},
      {"wardrobe",2079.6223144531,-98.413925170898,251.86004638672}
    }
  },
  ["favela_18"] = {
    {
      {"entry",2095.2775878906,-112.77118682861,261.94616699219},
      {"chest",2101.5964355469,-112.39939880371,261.92599487305, _config = {weight=1000}},
      {"wardrobe",2102.6892089844,-115.78987884521,261.92599487305}
    }
  },
  ["favela_19"] = {
    {
      {"entry",2086.6977539063,-120.3882522583,261.82672119141},
      {"chest",2092.7905273438,-120.08376312256,261.81399536133, _config = {weight=1000}},
      {"wardrobe",2093.9208984375,-123.34945678711,261.81399536133}
    }
  },
  ["favela_20"] = {
    {
      {"entry",2078.568359375,-127.34540557861,262.71774291992},
      {"chest",2084.4760742188,-127.19557952881,262.70520019531, _config = {weight=1000}},
      {"wardrobe",2085.8210449219,-130.61541748047,262.70504760742}
    }
  },
  ["favela_21"] = {
    {
      {"entry",1810.6983642578,120.07780456543,173.64819335938},
      {"chest",1817.4360351563,120.23191833496,173.63552856445, _config = {weight=1000}},
      {"wardrobe",1818.1973876953,116.85933685303,173.63545227051}
    }
  }      
}

-- define home clusters
cfg.homes = {
  ["Apartamento Simples 1"] = {
    slot = "basic_flat",
    entry_point = {-618.73333740234,37.5940284729,43.591003417969},
    buy_price = 130000,
    sell_price = 80000,
    max = 99,
    blipid=476,
    blipcolor=4
  },
  ["Apartamento Simples 2"] = {
    slot = "basic_flat",
    entry_point = {-1446.769,-538.531,34.740},
    buy_price = 130000,
    sell_price = 80000,
    max = 99,
    blipid=476,
    blipcolor=4
  },
  ["Casa 1"] = {
    slot = "casa1_flat",
    entry_point = {-175.11683654785,502.34225463867,137.42016601563},
    buy_price = 280000,
    sell_price = 15000,
    max = 1,
    blipid=40,
    blipcolor=5
  },
  ["Casa 2"] = {
    slot = "casa2_flat",
    entry_point = {346.84008789063,440.90414428711,147.70207214355},
    buy_price = 280000,
    sell_price = 15000,
    max = 1,
    blipid=40,
    blipcolor=5
  },
  ["Casa 3"] = {
    slot = "casa3_flat",
    entry_point = {373.43969726563,427.83197021484,145.68418884277},
    buy_price = 280000,
    sell_price = 15000,
    max = 1,
    blipid=40,
    blipcolor=5
  },
  ["Casa 4"] = {
    slot = "casa4_flat",
    entry_point = {-686.41821289063,596.54180908203,143.64221191406},
    buy_price = 280000,
    sell_price = 15000,
    max = 1,
    blipid=40,
    blipcolor=5
  },
  ["Casa 5"] = {
    slot = "casa5_flat",
    entry_point = {-1294.3278808594,454.73611450195,97.506507873535},
    buy_price = 280000,
    sell_price = 15000,
    max = 1,
    blipid=40,
    blipcolor=5
  },  
  ["Fazenda"] = {
    slot = "fazenda_flat",
    entry_point = {1394.7622070313,1141.7633056641,114.61884307861},
    buy_price = 20000000,
    sell_price = 7500000,
    max = 1,
    blipid=40,
    blipcolor=4
  },
  ["Apartamento de luxo"] = {
    slot = "other_flat",
    entry_point = {-770.921,312.537,85.698},
    buy_price = 2500000,
    sell_price = 1500000,
    max = 20,
    blipid=475,
    blipcolor=5
  },
  ["Barraco 1"] = {
    slot = "favela_1",
    entry_point = {1249.9307861328,-270.6506652832,76.681861877441},
    buy_price = 10000,
    sell_price = 10000,
    max = 1,
    blipid=40,
    blipcolor=1
  },
  ["Barraco 2"] = {
    slot = "favela_2",
    entry_point = {1260.5299072266,-269.07165527344,78.882820129395},
    buy_price = 10000,
    sell_price = 10000,
    max = 1,
    blipid=40,
    blipcolor=1
  },
  ["Barraco 3"] = {
    slot = "favela_3",
    entry_point = {1321.0428466797,-184.47480773926,107.95357513428},
    buy_price = 10000,
    sell_price = 10000,
    max = 1,
    blipid=40,
    blipcolor=1
  },
  ["Barraco 4"] = {
    slot = "favela_4",
    entry_point = {1329.5178222656,-176.14810180664,109.34004211426},
    buy_price = 10000,
    sell_price = 10000,
    max = 1,
    blipid=40,
    blipcolor=1
  },
  ["Barraco Cobertura 1"] = {
    slot = "favela_5",
    entry_point = {1462.9799804688,-111.24215698242,140.26052856445},
    buy_price = 30000,
    sell_price = 10000,
    max = 1,
    blipid=40,
    blipcolor=1
  },
  ["Barraco Cobertura 2"] = {
    slot = "favela_6",
    entry_point = {1575.4733886719,-69.406242370605,160.28507995605},
    buy_price = 30000,
    sell_price = 10000,
    max = 1,
    blipid=40,
    blipcolor=1
  },
  ["Barraco Cobertura 3"] = {
    slot = "favela_7",
    entry_point = {1582.4139404297,-68.179763793945,161.34761047363},
    buy_price = 30000,
    sell_price = 10000,
    max = 1,
    blipid=40,
    blipcolor=1
  },
  ["Barraco Cobertura 4"] = {
    slot = "favela_8",
    entry_point = {1588.9260253906,-69.155158996582,162.10125732422},
    buy_price = 30000,
    sell_price = 10000,
    max = 1,
    blipid=40,
    blipcolor=1
  },
  ["Barraco Cobertura 5"] = {
    slot = "favela_9",
    entry_point = {1612.6208496094,-72.160293579102,164.32574462891},
    buy_price = 30000,
    sell_price = 10000,
    max = 1,
    blipid=40,
    blipcolor=1
  },
  ["Barraco Cobertura 6"] = {
    slot = "favela_10",
    entry_point = {2226.150390625,155.61592102051,224.19395446777},
    buy_price = 30000,
    sell_price = 10000,
    max = 1,
    blipid=40,
    blipcolor=1
  },
  ["Barraco 5"] = {
    slot = "favela_11",
    entry_point = {2369.7048339844,260.09591674805,188.69671630859},
    buy_price = 10000,
    sell_price = 10000,
    max = 1,
    blipid=40,
    blipcolor=1
  },
  ["Barraco 6"] = {
    slot = "favela_12",
    entry_point = {2389.1584472656,380.56463623047,175.38191223145},
    buy_price = 10000,
    sell_price = 10000,
    max = 1,
    blipid=40,
    blipcolor=1
  },
  ["Barraco 7"] = {
    slot = "favela_13",
    entry_point = {2387.6176757813,395.11785888672,174.09223937988},
    buy_price = 10000,
    sell_price = 10000,
    max = 1,
    blipid=40,
    blipcolor=1
  },
  ["Barraco Do Rei"] = {
    slot = "favela_14",
    entry_point = {2223.28515625,50.084980010986,247.35345458984},
    buy_price = 10000,
    sell_price = 10000,
    max = 0,
    blipid=543,
    blipcolor=76
  },
  ["Barraco Do Braco Direito"] = {
    slot = "favela_15",
    entry_point = {2227.8330078125,45.350303649902,249.74900817871},
    buy_price = 10000,
    sell_price = 10000,
    max = 0,
    blipid=543,
    blipcolor=76
  },
  ["Barraco 8"] = {
    slot = "favela_16",
    entry_point = {2101.1220703125,-91.113075256348,251.70948791504},
    buy_price = 10000,
    sell_price = 10000,
    max = 1,
    blipid=40,
    blipcolor=1
  },
  ["Barraco 9"] = {
    slot = "favela_17",
    entry_point = {2086.5017089844,-99.563385009766,248.28974914551},
    buy_price = 10000,
    sell_price = 10000,
    max = 1,
    blipid=40,
    blipcolor=1
  },
  ["Barraco Cobertura 7"] = {
    slot = "favela_18",
    entry_point = {2096.0119628906,-112.51882171631,251.05317687988},
    buy_price = 30000,
    sell_price = 10000,
    max = 1,
    blipid=40,
    blipcolor=1
  },
  ["Barraco Cobertura 8"] = {
    slot = "favela_19",
    entry_point = {2091.1369628906,-116.96878051758,250.97819519043},
    buy_price = 30000,
    sell_price = 10000,
    max = 1,
    blipid=40,
    blipcolor=1
  },
  ["Barraco Cobertura 9"] = {
    slot = "favela_20",
    entry_point = {2080.3732910156,-125.91899871826,251.90956115723},
    buy_price = 30000,
    sell_price = 10000,
    max = 1,
    blipid=40,
    blipcolor=1
  },
  ["Barraco 10"] = {
    slot = "favela_21",
    entry_point = {1811.4859619141,120.7183380127,170.47434997559},
    buy_price = 10000,
    sell_price = 10000,
    max = 1,
    blipid=40,
    blipcolor=1
  }
}

return cfg
