import '../models/diamond_model.dart';

final List<Diamond> diamondData = [
  Diamond(lotId: "790185947", size: "0.90-0.99", carat: 0.9, lab: "GIA", shape: "BR", color: "E", clarity: "VVS2", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -44.0, perCaratRate: 3864.0, finalAmount: 3477.6, keyToSymbol: "Cloud, Indented Natural, Cavity, Natural", labComment: "Pinpoints are not shown."),
  Diamond(lotId: "490361405", size: "0.90-0.99", carat: 0.9, lab: "GIA", shape: "BR", color: "G", clarity: "VVS1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -41.0, perCaratRate: 3776.0, finalAmount: 3398.4, keyToSymbol: "Pinpoint", labComment: ""),
  Diamond(lotId: "790367521", size: "1.00-1.49", carat: 1.0, lab: "GIA", shape: "BR", color: "F", clarity: "VVS2", cut: "VG", polish: "EX", symmetry: "G", fluorescence: "MED", discount: -58.98, perCaratRate: 3445.68, finalAmount: 3445.68, keyToSymbol: "Cloud, Pinpoint, Indented Natural", labComment: "Additional pinpoints are not shown. Surface graining is not shown."),
  Diamond(lotId: "490361912", size: "1.00-1.49", carat: 1.0, lab: "GIA", shape: "BR", color: "H", clarity: "VVS2", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -41.0, perCaratRate: 3245.0, finalAmount: 3245.0, keyToSymbol: "Needle, Pinpoint, Indented Natural, Natural", labComment: "Additional pinpoints are not shown."),
  Diamond(lotId: "790386188", size: "1.00-1.49", carat: 1.01, lab: "GIA", shape: "BR", color: "F", clarity: "VS1", cut: "VG", polish: "EX", symmetry: "VG", fluorescence: "NON", discount: -49.12, perCaratRate: 3663.36, finalAmount: 3699.9936, keyToSymbol: "Crystal, Needle", labComment: "Pinpoints are not shown. Clouds are not shown."),
  Diamond(lotId: "21287670", size: "1.00-1.49", carat: 1.01, lab: "In-House", shape: "BR", color: "G", clarity: "I1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -48.42, perCaratRate: 1598.98, finalAmount: 1614.9698, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "790146218", size: "1.00-1.49", carat: 1.2, lab: "GIA", shape: "BR", color: "G", clarity: "VS1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "FNT", discount: -41.48, perCaratRate: 3628.24, finalAmount: 4353.888, keyToSymbol: "Crystal, Cloud, Needle", labComment: "Additional clouds are not shown. Pinpoints are not shown."),
  Diamond(lotId: "900066231", size: "1.00-1.49", carat: 1.44, lab: "In-House", shape: "BR", color: "F", clarity: "VS2", cut: "G", polish: "G", symmetry: "G", fluorescence: "MED", discount: -94.0, perCaratRate: 402.0, finalAmount: 578.88, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900061985", size: "1.00-1.49", carat: 1.46, lab: "In-House", shape: "BR", color: "H", clarity: "VS2", cut: "G", polish: "G", symmetry: "G", fluorescence: "MED", discount: -94.0, perCaratRate: 324.0, finalAmount: 473.04, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "490345395", size: "0.30-0.39", carat: 0.3, lab: "GIA", shape: "BR", color: "D", clarity: "FL", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -18.0, perCaratRate: 2296.0, finalAmount: 688.8, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "490370762", size: "0.30-0.39", carat: 0.3, lab: "GIA", shape: "BR", color: "D", clarity: "VVS1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -35.0, perCaratRate: 1560.0, finalAmount: 468.0, keyToSymbol: "Pinpoint", labComment: ""),
  Diamond(lotId: "1712094", size: "0.30-0.39", carat: 0.3, lab: "GIA", shape: "BR", color: "D", clarity: "VVS1", cut: "VG", polish: "VG", symmetry: "EX", fluorescence: "MED", discount: -52.5, perCaratRate: 1140.0, finalAmount: 342.0, keyToSymbol: "Cavity, Feather, Indented Natural", labComment: ""),
  Diamond(lotId: "900057394", size: "0.30-0.39", carat: 0.3, lab: "GIA", shape: "BR", color: "D", clarity: "VVS1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -38.0, perCaratRate: 1488.0, finalAmount: 446.4, keyToSymbol: "Pinpoint, Feather", labComment: ""),
  Diamond(lotId: "900055819", size: "0.30-0.39", carat: 0.3, lab: "GIA", shape: "BR", color: "D", clarity: "VVS1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -38.0, perCaratRate: 1488.0, finalAmount: 446.4, keyToSymbol: "Pinpoint", labComment: ""),
  Diamond(lotId: "1706382", size: "0.30-0.39", carat: 0.3, lab: "GIA", shape: "BR", color: "D", clarity: "VVS1", cut: "VG", polish: "VG", symmetry: "VG", fluorescence: "FNT", discount: -48.0, perCaratRate: 1248.0, finalAmount: 374.4, keyToSymbol: "Pinpoint, Feather, Chip", labComment: ""),
  Diamond(lotId: "290135752", size: "0.30-0.39", carat: 0.3, lab: "GIA", shape: "BR", color: "D", clarity: "VVS1", cut: "VG", polish: "EX", symmetry: "VG", fluorescence: "FNT", discount: -48.5, perCaratRate: 1236.0, finalAmount: 370.8, keyToSymbol: "Pinpoint, Feather", labComment: ""),
  Diamond(lotId: "490250218", size: "0.30-0.39", carat: 0.3, lab: "GIA", shape: "BR", color: "D", clarity: "VVS1", cut: "VG", polish: "EX", symmetry: "VG", fluorescence: "FNT", discount: -47.5, perCaratRate: 1260.0, finalAmount: 378.0, keyToSymbol: "Pinpoint, Feather", labComment: ""),
  Diamond(lotId: "490167040", size: "0.30-0.39", carat: 0.3, lab: "GIA", shape: "BR", color: "D", clarity: "VVS1", cut: "VG", polish: "EX", symmetry: "VG", fluorescence: "FNT", discount: -47.5, perCaratRate: 1260.0, finalAmount: 378.0, keyToSymbol: "Pinpoint, Feather", labComment: ""),
  Diamond(lotId: "900066356", size: "0.18-0.22", carat: 0.18, lab: "In-House", shape: "BR", color: "D", clarity: "VS1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "FNT", discount: -37.67, perCaratRate: 785.36, finalAmount: 141.3648, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900064899", size: "0.18-0.22", carat: 0.18, lab: "In-House", shape: "BR", color: "D", clarity: "VS1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "FNT", discount: -37.67, perCaratRate: 785.36, finalAmount: 141.3648, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900067131", size: "0.23-0.29", carat: 0.23, lab: "In-House", shape: "BR", color: "D", clarity: "SI2", cut: "VG", polish: "VG", symmetry: "VG", fluorescence: "MED", discount: -37.28, perCaratRate: 683.65, finalAmount: 157.2395, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900066716", size: "0.23-0.29", carat: 0.23, lab: "In-House", shape: "BR", color: "E", clarity: "SI2", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "FNT", discount: -37.28, perCaratRate: 683.65, finalAmount: 157.2395, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900062564", size: "3.00-3.99", carat: 3.01, lab: "GIA", shape: "BR", color: "D", clarity: "IF", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -41.0, perCaratRate: 32450.0, finalAmount: 97674.5, keyToSymbol: "", labComment: "Minor details of polish are not shown."),
  Diamond(lotId: "900065188", size: "3.00-3.99", carat: 3.01, lab: "GIA", shape: "BR", color: "D", clarity: "VVS1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -39.0, perCaratRate: 28060.0, finalAmount: 84460.6, keyToSymbol: "Pinpoint", labComment: "Additional pinpoints are not shown."),
  Diamond(lotId: "290187276", size: "3.00-3.99", carat: 3.01, lab: "GIA", shape: "BR", color: "D", clarity: "VVS1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -43.0, perCaratRate: 26220.0, finalAmount: 78922.2, keyToSymbol: "Pinpoint, Needle", labComment: ""),
  Diamond(lotId: "900061478", size: "3.00-3.99", carat: 3.01, lab: "GIA", shape: "BR", color: "D", clarity: "VVS1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -38.0, perCaratRate: 28520.0, finalAmount: 85845.2, keyToSymbol: "Feather", labComment: ""),
  Diamond(lotId: "21214039", size: "2.00-2.99", carat: 2.0, lab: "GIA", shape: "BR", color: "H", clarity: "VS1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -38.0, perCaratRate: 7750.0, finalAmount: 15500.0, keyToSymbol: "Cloud, Crystal, Feather, Needle, Natural", labComment: "Additional clouds are not shown. Pinpoints are not shown."),
  Diamond(lotId: "21269689", size: "2.00-2.99", carat: 2.0, lab: "GIA", shape: "BR", color: "H", clarity: "VS1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -34.0, perCaratRate: 8250.0, finalAmount: 16500.0, keyToSymbol: "Crystal, Cloud, Indented Natural, Natural", labComment: "Additional clouds, pinpoints and surface graining are not shown."),
  Diamond(lotId: "112209404", size: "2.00-2.99", carat: 2.0, lab: "GIA", shape: "BR", color: "H", clarity: "VS1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -39.0, perCaratRate: 7625.0, finalAmount: 15250.0, keyToSymbol: "Crystal, Indented Natural, Needle, Natural", labComment: "Clouds, pinpoints and surface graining are not shown."),
  Diamond(lotId: "900064418", size: "2.00-2.99", carat: 2.01, lab: "GIA", shape: "BR", color: "F", clarity: "SI1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "MED", discount: -51.0, perCaratRate: 6027.0, finalAmount: 12114.27, keyToSymbol: "Crystal, Twinning Wisp, Feather, Needle, Indented Natural", labComment: "Additional twinning wisps, pinpoints and surface graining are not shown."),
  Diamond(lotId: "1709323", size: "2.00-2.99", carat: 2.54, lab: "HRD", shape: "BR", color: "F", clarity: "SI2", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -48.0, perCaratRate: 5096.0, finalAmount: 12943.84, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "21126224", size: "3.00-3.99", carat: 3.02, lab: "In-House", shape: "BR", color: "H", clarity: "I1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "MED", discount: -56.98, perCaratRate: 3527.64, finalAmount: 10653.4728, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "21155574", size: "3.00-3.99", carat: 3.05, lab: "In-House", shape: "BR", color: "H", clarity: "I1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -56.98, perCaratRate: 3527.64, finalAmount: 10759.302, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "911036108", size: "2.00-2.99", carat: 2.0, lab: "GIA", shape: "CU", color: "G", clarity: "VS1", cut: "", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -47.0, perCaratRate: 7420.0, finalAmount: 14840.0, keyToSymbol: "", labComment: "Clouds are not shown. Pinpoints are not shown."),
  Diamond(lotId: "290053887", size: "2.00-2.99", carat: 2.01, lab: "GIA", shape: "CU", color: "E", clarity: "VVS1", cut: "", polish: "EX", symmetry: "VG", fluorescence: "NON", discount: -52.86, perCaratRate: 8720.9, finalAmount: 17529.009, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900691763", size: "2.00-2.99", carat: 2.01, lab: "GIA", shape: "CU", color: "G", clarity: "VS2", cut: "", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -60.59, perCaratRate: 5123.3, finalAmount: 10297.833, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900691769", size: "3.00-3.99", carat: 3.0, lab: "GIA", shape: "CU", color: "G", clarity: "VS2", cut: "", polish: "EX", symmetry: "EX", fluorescence: "FNT", discount: -56.0, perCaratRate: 9020.0, finalAmount: 27060.0, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "911036111", size: "3.00-3.99", carat: 3.01, lab: "GIA", shape: "CU", color: "G", clarity: "VS2", cut: "", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -40.0, perCaratRate: 12300.0, finalAmount: 37023.0, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "290035976", size: "3.00-3.99", carat: 3.01, lab: "GIA", shape: "CU", color: "H", clarity: "VS1", cut: "", polish: "VG", symmetry: "EX", fluorescence: "NON", discount: -58.0, perCaratRate: 8190.0, finalAmount: 24651.9, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "911036101", size: "2.00-2.99", carat: 2.01, lab: "GIA", shape: "EM", color: "G", clarity: "VS2", cut: "", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -52.0, perCaratRate: 12542.4, finalAmount: 25210.224, keyToSymbol: "", labComment: "Additional clouds are not shown. Pinpoints are not shown."),
  Diamond(lotId: "20289242", size: "2.00-2.99", carat: 2.07, lab: "GIA", shape: "EM", color: "D", clarity: "VVS1", cut: "", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -55.05, perCaratRate: 8990.0, finalAmount: 18609.3, keyToSymbol: "", labComment: "Internal graining is not shown. Surface graining is not shown."),
  Diamond(lotId: "290114652", size: "2.00-2.99", carat: 2.82, lab: "GIA", shape: "EM", color: "G", clarity: "VS2", cut: "", polish: "EX", symmetry: "VG", fluorescence: "NON", discount: -35.0, perCaratRate: 8450.0, finalAmount: 23829.0, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "911026173", size: "3.00-3.99", carat: 3.01, lab: "GIA", shape: "EM", color: "F", clarity: "VS2", cut: "", polish: "EX", symmetry: "EX", fluorescence: "VST", discount: -65.0, perCaratRate: 7875.0, finalAmount: 23703.75, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "911035850", size: "3.00-3.99", carat: 3.01, lab: "GIA", shape: "EM", color: "F", clarity: "VS2", cut: "", polish: "EX", symmetry: "VG", fluorescence: "NON", discount: -45.0, perCaratRate: 12375.0, finalAmount: 37248.75, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "290157034", size: "3.00-3.99", carat: 3.01, lab: "GIA", shape: "EM", color: "F", clarity: "SI1", cut: "", polish: "EX", symmetry: "EX", fluorescence: "FNT", discount: -46.0, perCaratRate: 10530.0, finalAmount: 31695.3, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "911024106", size: "3.00-3.99", carat: 3.02, lab: "GIA", shape: "EM", color: "G", clarity: "VS2", cut: "", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -50.0, perCaratRate: 10250.0, finalAmount: 30955.0, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "7513951", size: "2.00-2.99", carat: 2.01, lab: "GIA", shape: "MQ", color: "D", clarity: "VVS2", cut: "", polish: "EX", symmetry: "VG", fluorescence: "NON", discount: -35.41, perCaratRate: 11949.15, finalAmount: 24017.7915, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900045732", size: "2.00-2.99", carat: 2.01, lab: "GIA", shape: "OV", color: "G", clarity: "VS2", cut: "", polish: "VG", symmetry: "VG", fluorescence: "NON", discount: -41.0, perCaratRate: 7670.0, finalAmount: 15416.7, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900779752", size: "2.00-2.99", carat: 2.68, lab: "GIA", shape: "OV", color: "E", clarity: "VS1", cut: "", polish: "EX", symmetry: "EX", fluorescence: "FNT", discount: -32.0, perCaratRate: 10880.0, finalAmount: 29158.4, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900579422", size: "3.00-3.99", carat: 3.01, lab: "GIA", shape: "OV", color: "G", clarity: "SI1", cut: "", polish: "EX", symmetry: "EX", fluorescence: "FNT", discount: -40.0, perCaratRate: 10800.0, finalAmount: 32508.0, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "901000037", size: "3.00-3.99", carat: 3.01, lab: "GIA", shape: "OV", color: "H", clarity: "VS2", cut: "", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -41.0, perCaratRate: 10620.0, finalAmount: 31966.2, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "290186284", size: "3.00-3.99", carat: 3.02, lab: "GIA", shape: "OV", color: "F", clarity: "SI2", cut: "", polish: "EX", symmetry: "VG", fluorescence: "NON", discount: -40.0, perCaratRate: 9300.0, finalAmount: 28086.0, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "290115870", size: "2.00-2.99", carat: 2.5, lab: "GIA", shape: "PR", color: "E", clarity: "VS2", cut: "", polish: "VG", symmetry: "G", fluorescence: "NON", discount: -51.0, perCaratRate: 7350.0, finalAmount: 18375.0, keyToSymbol: "", labComment: "Clouds are not shown. Pinpoints are not shown."),
  Diamond(lotId: "900723209", size: "2.00-2.99", carat: 2.01, lab: "GIA", shape: "PS", color: "F", clarity: "VVS2", cut: "", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -37.0, perCaratRate: 10080.0, finalAmount: 20260.8, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900622172", size: "0.50-0.69", carat: 0.5, lab: "GIA", shape: "OV", color: "E", clarity: "VS1", cut: "", polish: "EX", symmetry: "VG", fluorescence: "FNT", discount: -51.3, perCaratRate: 1217.5, finalAmount: 608.75, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900622170", size: "0.50-0.69", carat: 0.5, lab: "GIA", shape: "OV", color: "E", clarity: "VS1", cut: "", polish: "EX", symmetry: "VG", fluorescence: "FNT", discount: -48.07, perCaratRate: 1298.25, finalAmount: 649.125, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900622171", size: "0.50-0.69", carat: 0.5, lab: "GIA", shape: "OV", color: "E", clarity: "SI1", cut: "", polish: "EX", symmetry: "VG", fluorescence: "FNT", discount: -56.0, perCaratRate: 924.0, finalAmount: 462.0, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900691721", size: "0.50-0.69", carat: 0.5, lab: "GIA", shape: "OV", color: "G", clarity: "VS2", cut: "", polish: "EX", symmetry: "VG", fluorescence: "NON", discount: -48.45, perCaratRate: 1082.55, finalAmount: 541.275, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900622186", size: "0.50-0.69", carat: 0.59, lab: "GIA", shape: "OV", color: "E", clarity: "VS2", cut: "", polish: "EX", symmetry: "VG", fluorescence: "FNT", discount: -51.0, perCaratRate: 1127.0, finalAmount: 664.93, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900691730", size: "0.70-0.89", carat: 0.7, lab: "GIA", shape: "OV", color: "F", clarity: "VS2", cut: "", polish: "EX", symmetry: "VG", fluorescence: "FNT", discount: -51.58, perCaratRate: 1452.6, finalAmount: 1016.82, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900691734", size: "0.70-0.89", carat: 0.7, lab: "GIA", shape: "OV", color: "G", clarity: "VS1", cut: "", polish: "EX", symmetry: "VG", fluorescence: "FNT", discount: -46.92, perCaratRate: 1645.48, finalAmount: 1151.836, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900691737", size: "0.70-0.89", carat: 0.7, lab: "GIA", shape: "OV", color: "G", clarity: "SI1", cut: "", polish: "EX", symmetry: "EX", fluorescence: "FNT", discount: -48.77, perCaratRate: 1127.06, finalAmount: 788.942, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900622198", size: "0.70-0.89", carat: 0.7, lab: "GIA", shape: "OV", color: "I", clarity: "VS2", cut: "", polish: "EX", symmetry: "VG", fluorescence: "FNT", discount: -44.42, perCaratRate: 1222.76, finalAmount: 855.932, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900478081", size: "0.70-0.89", carat: 0.8, lab: "GIA", shape: "OV", color: "J", clarity: "SI1", cut: "", polish: "EX", symmetry: "VG", fluorescence: "NON", discount: -37.41, perCaratRate: 1064.03, finalAmount: 851.224, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "490070471", size: "1.00-1.49", carat: 1.01, lab: "GIA", shape: "PS", color: "G", clarity: "SI2", cut: "", polish: "EX", symmetry: "VG", fluorescence: "NON", discount: -46.55, perCaratRate: 1763.85, finalAmount: 1781.4885, keyToSymbol: "", labComment: "Clouds are not shown. Pinpoints are not shown."),
  Diamond(lotId: "290168948", size: "3.00-3.99", carat: 3.01, lab: "GIA", shape: "RAD", color: "G", clarity: "SI2", cut: "", polish: "EX", symmetry: "VG", fluorescence: "NON", discount: -56.0, perCaratRate: 6380.0, finalAmount: 19203.8, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "790339140", size: "1.50-1.99", carat: 1.7, lab: "GIA", shape: "BR", color: "K", clarity: "VS1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -48.0, perCaratRate: 2444.0, finalAmount: 4154.8, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "790377407", size: "0.90-0.99", carat: 0.92, lab: "GIA", shape: "PS", color: "D", clarity: "VS2", cut: "", polish: "EX", symmetry: "VG", fluorescence: "NON", discount: -40.77, perCaratRate: 2606.12, finalAmount: 2397.6304, keyToSymbol: "", labComment: "Clouds, pinpoints and surface graining are not shown."),
  Diamond(lotId: "7482482", size: "1.00-1.49", carat: 1.01, lab: "GIA", shape: "PS", color: "I", clarity: "SI2", cut: "", polish: "EX", symmetry: "VG", fluorescence: "NON", discount: -52.5, perCaratRate: 1330.0, finalAmount: 1343.3, keyToSymbol: "", labComment: "Clouds, pinpoints and surface graining are not shown."),
  Diamond(lotId: "490017318", size: "5.00-5.99", carat: 5.01, lab: "GIA", shape: "RAD", color: "H", clarity: "VS1", cut: "", polish: "EX", symmetry: "VG", fluorescence: "FNT", discount: -50.71, perCaratRate: 16512.15, finalAmount: 82725.8715, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "17463537", size: "3.00-3.99", carat: 3.19, lab: "GIA", shape: "PS", color: "D", clarity: "SI1", cut: "", polish: "VG", symmetry: "G", fluorescence: "FNT", discount: -71.0, perCaratRate: 6670.0, finalAmount: 21277.3, keyToSymbol: "", labComment: "Additional twinning, pinpoints, surface graining and additional extra facets are not shown."),
  Diamond(lotId: "21230187", size: "1.00-1.49", carat: 1.0, lab: "HRD", shape: "BR", color: "F", clarity: "SI2", cut: "EX", polish: "EX", symmetry: "VG", fluorescence: "NON", discount: -54.0, perCaratRate: 1840.0, finalAmount: 1840.0, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "21235183", size: "1.00-1.49", carat: 1.0, lab: "HRD", shape: "BR", color: "F", clarity: "SI2", cut: "G", polish: "EX", symmetry: "VG", fluorescence: "NON", discount: -64.0, perCaratRate: 1512.0, finalAmount: 1512.0, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "7522163", size: "1.00-1.49", carat: 1.0, lab: "HRD", shape: "BR", color: "M", clarity: "VS1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -50.09, perCaratRate: 1147.93, finalAmount: 1147.93, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "21240435", size: "1.00-1.49", carat: 1.01, lab: "HRD", shape: "BR", color: "F", clarity: "SI2", cut: "VG", polish: "VG", symmetry: "VG", fluorescence: "NON", discount: -59.0, perCaratRate: 1722.0, finalAmount: 1739.22, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "1691633", size: "1.00-1.49", carat: 1.2, lab: "HRD", shape: "BR", color: "H", clarity: "IF", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -49.84, perCaratRate: 3059.76, finalAmount: 3671.712, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "490171786", size: "1.00-1.49", carat: 1.2, lab: "HRD", shape: "BR", color: "H", clarity: "IF", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -49.84, perCaratRate: 3059.76, finalAmount: 3671.712, keyToSymbol: "", labComment: "Minor details of polish are not shown."),
  Diamond(lotId: "1700572", size: "1.00-1.49", carat: 1.21, lab: "HRD", shape: "BR", color: "H", clarity: "IF", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -50.89, perCaratRate: 2995.71, finalAmount: 3624.8091, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "1672088", size: "1.00-1.49", carat: 1.25, lab: "HRD", shape: "BR", color: "H", clarity: "IF", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -49.84, perCaratRate: 3059.76, finalAmount: 3824.7, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "490142601", size: "1.00-1.49", carat: 1.31, lab: "HRD", shape: "BR", color: "G", clarity: "IF", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -52.0, perCaratRate: 3936.0, finalAmount: 5156.16, keyToSymbol: "", labComment: "minor graining"),
  Diamond(lotId: "490297520", size: "1.50-1.99", carat: 1.5, lab: "HRD", shape: "BR", color: "M", clarity: "VS1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -53.0, perCaratRate: 1692.0, finalAmount: 2538.0, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "490267195", size: "1.50-1.99", carat: 1.7, lab: "HRD", shape: "BR", color: "L", clarity: "VS1", cut: "VG", polish: "EX", symmetry: "EX", fluorescence: "SLT", discount: -54.0, perCaratRate: 1840.0, finalAmount: 3128.0, keyToSymbol: "Cloud, Needle, Indented Natural, Natural", labComment: "Additional clouds are not shown. Pinpoints are not shown."),
  Diamond(lotId: "290148072", size: "1.50-1.99", carat: 1.8, lab: "HRD", shape: "BR", color: "L", clarity: "VS1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "STG", discount: -54.0, perCaratRate: 1840.0, finalAmount: 3312.0, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "1673222", size: "1.50-1.99", carat: 1.8, lab: "HRD", shape: "BR", color: "M", clarity: "VS2", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -47.0, perCaratRate: 1802.0, finalAmount: 3243.6, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "490296096", size: "1.50-1.99", carat: 1.8, lab: "HRD", shape: "BR", color: "M", clarity: "VS2", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -48.0, perCaratRate: 1768.0, finalAmount: 3182.4, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "1682094", size: "2.00-2.99", carat: 2.01, lab: "HRD", shape: "BR", color: "K", clarity: "SI1", cut: "VG", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -56.0, perCaratRate: 2508.0, finalAmount: 5041.08, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "21245651", size: "2.00-2.99", carat: 2.03, lab: "HRD", shape: "BR", color: "K", clarity: "SI1", cut: "VG", polish: "EX", symmetry: "VG", fluorescence: "NON", discount: -58.0, perCaratRate: 2394.0, finalAmount: 4859.82, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "7537173", size: "2.00-2.99", carat: 2.8, lab: "HRD", shape: "BR", color: "H", clarity: "IF", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -36.0, perCaratRate: 10560.0, finalAmount: 29568.0, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "1709599", size: "3.00-3.99", carat: 3.0, lab: "HRD", shape: "BR", color: "G", clarity: "SI2", cut: "G", polish: "VG", symmetry: "VG", fluorescence: "NON", discount: -58.4, perCaratRate: 3203.2, finalAmount: 9609.6, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "445298427", size: "3.00-3.99", carat: 3.0, lab: "HRD", shape: "BR", color: "H", clarity: "VVS2", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -58.0, perCaratRate: 9450.0, finalAmount: 28350.0, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "1709329", size: "3.00-3.99", carat: 3.01, lab: "HRD", shape: "BR", color: "G", clarity: "SI2", cut: "VG", polish: "EX", symmetry: "VG", fluorescence: "NON", discount: -58.0, perCaratRate: 6510.0, finalAmount: 19595.1, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "1706899", size: "3.00-3.99", carat: 3.03, lab: "HRD", shape: "BR", color: "J", clarity: "VVS2", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -54.0, perCaratRate: 6900.0, finalAmount: 20907.0, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "1696732", size: "3.00-3.99", carat: 3.5, lab: "HRD", shape: "BR", color: "J", clarity: "SI2", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -46.0, perCaratRate: 5940.0, finalAmount: 20790.0, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900058991", size: "3.00-3.99", carat: 3.52, lab: "HRD", shape: "BR", color: "D", clarity: "SI2", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "SLT", discount: -51.0, perCaratRate: 9800.0, finalAmount: 34496.0, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "1709601", size: "3.00-3.99", carat: 3.52, lab: "HRD", shape: "BR", color: "H", clarity: "VS1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -51.0, perCaratRate: 10045.0, finalAmount: 35358.4, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900054495", size: "3.00-3.99", carat: 3.8, lab: "HRD", shape: "BR", color: "K", clarity: "VS1", cut: "EX", polish: "EX", symmetry: "EX", fluorescence: "NON", discount: -46.0, perCaratRate: 6480.0, finalAmount: 24624.0, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "900057220", size: "3.00-3.99", carat: 3.02, lab: "HRD", shape: "HS", color: "H", clarity: "SI2", cut: "", polish: "EX", symmetry: "VG", fluorescence: "SLT", discount: -61.0, perCaratRate: 5265.0, finalAmount: 15900.3, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "1706907", size: "3.00-3.99", carat: 3.0, lab: "HRD", shape: "OV", color: "F", clarity: "SI2", cut: "", polish: "EX", symmetry: "VG", fluorescence: "SLT", discount: -56.0, perCaratRate: 6820.0, finalAmount: 20460.0, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "445568009", size: "0.90-0.99", carat: 0.9, lab: "HRD", shape: "PS", color: "F", clarity: "SI2", cut: "", polish: "EX", symmetry: "VG", fluorescence: "NON", discount: -52.0, perCaratRate: 1392.0, finalAmount: 1252.8, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "445376109", size: "1.00-1.49", carat: 1.0, lab: "HRD", shape: "PS", color: "F", clarity: "SI2", cut: "", polish: "VG", symmetry: "VG", fluorescence: "NON", discount: -58.0, perCaratRate: 1470.0, finalAmount: 1470.0, keyToSymbol: "", labComment: ""),
  Diamond(lotId: "100", size: "", carat: 178.3, lab: "", shape: "", color: "", clarity: "", cut: "", polish: "", symmetry: "", fluorescence: "", discount: -48.8412, perCaratRate: 5672.2978, finalAmount: 1446192.1698, keyToSymbol: "", labComment: "")
];
