//
//  TestData.swift
//  CryptoCurrenciesTests
//
//  Created by Vinay on 29/12/24.
//

import Foundation

// Valid Test Json data
let validCoinsTestData = """

[
  {
    "id": "bitcoin",
    "symbol": "btc",
    "name": "Bitcoin",
    "image": "https://coin-images.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
    "current_price": 93652,
    "market_cap": 1856182000818,
    "market_cap_rank": 1,
    "fully_diluted_valuation": 1968388685580,
    "total_volume": 22285222188,
    "high_24h": 95276,
    "low_24h": 93551,
    "price_change_24h": -1054.7999282746605,
    "price_change_percentage_24h": -1.11376,
    "market_cap_change_24h": -18760420665.328125,
    "market_cap_change_percentage_24h": -1.00059,
    "circulating_supply": 19802909,
    "total_supply": 21000000,
    "max_supply": 21000000,
    "ath": 108135,
    "ath_change_percentage": -13.31892,
    "ath_date": "2024-12-17T15:02:41.429Z",
    "atl": 67.81,
    "atl_change_percentage": 138129.91867,
    "atl_date": "2013-07-06T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:18.197Z"
  },
  {
    "id": "ethereum",
    "symbol": "eth",
    "name": "Ethereum",
    "image": "https://coin-images.coingecko.com/coins/images/279/large/ethereum.png?1696501628",
    "current_price": 3347.41,
    "market_cap": 403611981183,
    "market_cap_rank": 2,
    "fully_diluted_valuation": 403611981183,
    "total_volume": 12258111364,
    "high_24h": 3410.29,
    "low_24h": 3341.42,
    "price_change_24h": -32.18649366356567,
    "price_change_percentage_24h": -0.95238,
    "market_cap_change_24h": -3384595370.8845825,
    "market_cap_change_percentage_24h": -0.8316,
    "circulating_supply": 120468720.1737614,
    "total_supply": 120468720.1737614,
    "max_supply": null,
    "ath": 4878.26,
    "ath_change_percentage": -31.31856,
    "ath_date": "2021-11-10T14:24:19.604Z",
    "atl": 0.432979,
    "atl_change_percentage": 773715.94242,
    "atl_date": "2015-10-20T00:00:00.000Z",
    "roi": {
      "times": 46.78650752948414,
      "currency": "btc",
      "percentage": 4678.650752948414
    },
    "last_updated": "2024-12-29T17:04:20.482Z"
  },
  {
    "id": "tether",
    "symbol": "usdt",
    "name": "Tether",
    "image": "https://coin-images.coingecko.com/coins/images/325/large/Tether.png?1696501661",
    "current_price": 0.997803,
    "market_cap": 138763990105,
    "market_cap_rank": 3,
    "fully_diluted_valuation": 138763990105,
    "total_volume": 27492485129,
    "high_24h": 1,
    "low_24h": 0.995145,
    "price_change_24h": -0.000037153848280402,
    "price_change_percentage_24h": -0.00372,
    "market_cap_change_24h": 13321783,
    "market_cap_change_percentage_24h": 0.0096,
    "circulating_supply": 139005076766.8021,
    "total_supply": 139005076766.8021,
    "max_supply": null,
    "ath": 1.32,
    "ath_change_percentage": -24.54684,
    "ath_date": "2018-07-24T00:00:00.000Z",
    "atl": 0.572521,
    "atl_change_percentage": 74.37215,
    "atl_date": "2015-03-02T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:24.468Z"
  },
  {
    "id": "ripple",
    "symbol": "xrp",
    "name": "XRP",
    "image": "https://coin-images.coingecko.com/coins/images/44/large/xrp-symbol-white-128.png?1696501442",
    "current_price": 2.14,
    "market_cap": 123134648876,
    "market_cap_rank": 4,
    "fully_diluted_valuation": 214453639353,
    "total_volume": 2242904122,
    "high_24h": 2.2,
    "low_24h": 2.14,
    "price_change_24h": -0.04140045681869209,
    "price_change_percentage_24h": -1.89534,
    "market_cap_change_24h": -2375188202.22435,
    "market_cap_change_percentage_24h": -1.89243,
    "circulating_supply": 57410227039,
    "total_supply": 99986740020,
    "max_supply": 100000000000,
    "ath": 3.4,
    "ath_change_percentage": -36.88126,
    "ath_date": "2018-01-07T00:00:00.000Z",
    "atl": 0.00268621,
    "atl_change_percentage": 79754.5664,
    "atl_date": "2014-05-22T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:30.389Z"
  },
  {
    "id": "binancecoin",
    "symbol": "bnb",
    "name": "BNB",
    "image": "https://coin-images.coingecko.com/coins/images/825/large/bnb-icon2_2x.png?1696501970",
    "current_price": 703.28,
    "market_cap": 102604108906,
    "market_cap_rank": 5,
    "fully_diluted_valuation": 102604108906,
    "total_volume": 732275630,
    "high_24h": 728.75,
    "low_24h": 702.67,
    "price_change_24h": -22.02555461607949,
    "price_change_percentage_24h": -3.03675,
    "market_cap_change_24h": -3172288572.8017883,
    "market_cap_change_percentage_24h": -2.99905,
    "circulating_supply": 145887575.79,
    "total_supply": 145887575.79,
    "max_supply": 200000000,
    "ath": 788.84,
    "ath_change_percentage": -10.83533,
    "ath_date": "2024-12-04T10:35:25.220Z",
    "atl": 0.0398177,
    "atl_change_percentage": 1766375.40618,
    "atl_date": "2017-10-19T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:30.068Z"
  },
  {
    "id": "solana",
    "symbol": "sol",
    "name": "Solana",
    "image": "https://coin-images.coingecko.com/coins/images/4128/large/solana.png?1718769756",
    "current_price": 192.63,
    "market_cap": 92459221255,
    "market_cap_rank": 6,
    "fully_diluted_valuation": 113940012749,
    "total_volume": 2758767988,
    "high_24h": 196.76,
    "low_24h": 192.26,
    "price_change_24h": 0.164219,
    "price_change_percentage_24h": 0.08532,
    "market_cap_change_24h": 97774902,
    "market_cap_change_percentage_24h": 0.10586,
    "circulating_supply": 479630052.0373696,
    "total_supply": 591061156.4997994,
    "max_supply": null,
    "ath": 263.21,
    "ath_change_percentage": -26.74721,
    "ath_date": "2024-11-23T15:05:59.896Z",
    "atl": 0.500801,
    "atl_change_percentage": 38399.63489,
    "atl_date": "2020-05-11T19:35:23.449Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:28.670Z"
  },
  {
    "id": "dogecoin",
    "symbol": "doge",
    "name": "Dogecoin",
    "image": "https://coin-images.coingecko.com/coins/images/5/large/dogecoin.png?1696501409",
    "current_price": 0.315555,
    "market_cap": 46517778531,
    "market_cap_rank": 7,
    "fully_diluted_valuation": 46546103294,
    "total_volume": 1687548248,
    "high_24h": 0.328815,
    "low_24h": 0.314629,
    "price_change_24h": -0.005568943370278079,
    "price_change_percentage_24h": -1.7342,
    "market_cap_change_24h": -803606149.2471619,
    "market_cap_change_percentage_24h": -1.69819,
    "circulating_supply": 147314376383.7052,
    "total_supply": 147404076383.7052,
    "max_supply": null,
    "ath": 0.731578,
    "ath_change_percentage": -56.8348,
    "ath_date": "2021-05-08T05:08:23.458Z",
    "atl": 0.0000869,
    "atl_change_percentage": 363275.74624,
    "atl_date": "2015-05-06T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:20.951Z"
  },
  {
    "id": "usd-coin",
    "symbol": "usdc",
    "name": "USDC",
    "image": "https://coin-images.coingecko.com/coins/images/6319/large/usdc.png?1696506694",
    "current_price": 0.999479,
    "market_cap": 43620985968,
    "market_cap_rank": 8,
    "fully_diluted_valuation": 43618305889,
    "total_volume": 2576309243,
    "high_24h": 1.002,
    "low_24h": 0.996929,
    "price_change_24h": -0.00050175526288887,
    "price_change_percentage_24h": -0.05018,
    "market_cap_change_24h": 18521063,
    "market_cap_change_percentage_24h": 0.04248,
    "circulating_supply": 43615473461.88669,
    "total_supply": 43612793721.08485,
    "max_supply": null,
    "ath": 1.17,
    "ath_change_percentage": -14.71434,
    "ath_date": "2019-05-08T00:40:28.300Z",
    "atl": 0.877647,
    "atl_change_percentage": 13.95819,
    "atl_date": "2023-03-11T08:02:13.981Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:30.208Z"
  },
  {
    "id": "staked-ether",
    "symbol": "steth",
    "name": "Lido Staked Ether",
    "image": "https://coin-images.coingecko.com/coins/images/13442/large/steth_logo.png?1696513206",
    "current_price": 3345.6,
    "market_cap": 32348744836,
    "market_cap_rank": 9,
    "fully_diluted_valuation": 32348744836,
    "total_volume": 54047808,
    "high_24h": 3406.12,
    "low_24h": 3339.1,
    "price_change_24h": -30.988300537326268,
    "price_change_percentage_24h": -0.91774,
    "market_cap_change_24h": -292206051.1919136,
    "market_cap_change_percentage_24h": -0.89521,
    "circulating_supply": 9664077.784522412,
    "total_supply": 9664077.784522412,
    "max_supply": null,
    "ath": 4829.57,
    "ath_change_percentage": -30.67881,
    "ath_date": "2021-11-10T14:40:47.256Z",
    "atl": 482.9,
    "atl_change_percentage": 593.29921,
    "atl_date": "2020-12-22T04:08:21.854Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:27.661Z"
  },
  {
    "id": "cardano",
    "symbol": "ada",
    "name": "Cardano",
    "image": "https://coin-images.coingecko.com/coins/images/975/large/cardano.png?1696502090",
    "current_price": 0.867994,
    "market_cap": 31145321287,
    "market_cap_rank": 10,
    "fully_diluted_valuation": 39106792154,
    "total_volume": 647981419,
    "high_24h": 0.907935,
    "low_24h": 0.868588,
    "price_change_24h": -0.013442439040201036,
    "price_change_percentage_24h": -1.52506,
    "market_cap_change_24h": -434629750.3976135,
    "market_cap_change_percentage_24h": -1.37628,
    "circulating_supply": 35838773285.35924,
    "total_supply": 45000000000,
    "max_supply": 45000000000,
    "ath": 3.09,
    "ath_change_percentage": -71.84592,
    "ath_date": "2021-09-02T06:00:10.474Z",
    "atl": 0.01925275,
    "atl_change_percentage": 4414.11566,
    "atl_date": "2020-03-13T02:22:55.044Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:30.534Z"
  },
  {
    "id": "tron",
    "symbol": "trx",
    "name": "TRON",
    "image": "https://coin-images.coingecko.com/coins/images/1094/large/tron-logo.png?1696502193",
    "current_price": 0.259057,
    "market_cap": 22360229042,
    "market_cap_rank": 11,
    "fully_diluted_valuation": 22360228389,
    "total_volume": 681011566,
    "high_24h": 0.262666,
    "low_24h": 0.256489,
    "price_change_24h": 0.00189933,
    "price_change_percentage_24h": 0.73858,
    "market_cap_change_24h": 196280437,
    "market_cap_change_percentage_24h": 0.88558,
    "circulating_supply": 86202012314.14804,
    "total_supply": 86202009798.02617,
    "max_supply": null,
    "ath": 0.431288,
    "ath_change_percentage": -39.85898,
    "ath_date": "2024-12-04T00:10:40.323Z",
    "atl": 0.00180434,
    "atl_change_percentage": 14275.3936,
    "atl_date": "2017-11-12T00:00:00.000Z",
    "roi": {
      "times": 135.3459288288883,
      "currency": "usd",
      "percentage": 13534.592882888832
    },
    "last_updated": "2024-12-29T17:04:29.632Z"
  },
  {
    "id": "avalanche-2",
    "symbol": "avax",
    "name": "Avalanche",
    "image": "https://coin-images.coingecko.com/coins/images/12559/large/Avalanche_Circle_RedWhite_Trans.png?1696512369",
    "current_price": 36.22,
    "market_cap": 14855599758,
    "market_cap_rank": 12,
    "fully_diluted_valuation": 16245072834,
    "total_volume": 274124523,
    "high_24h": 37.99,
    "low_24h": 36.19,
    "price_change_24h": -1.2164070297510605,
    "price_change_percentage_24h": -3.2495,
    "market_cap_change_24h": -508266576.9304199,
    "market_cap_change_percentage_24h": -3.30819,
    "circulating_supply": 409873547.6082966,
    "total_supply": 448209815.9697876,
    "max_supply": 720000000,
    "ath": 144.96,
    "ath_change_percentage": -74.98625,
    "ath_date": "2021-11-21T14:18:56.538Z",
    "atl": 2.8,
    "atl_change_percentage": 1194.51646,
    "atl_date": "2020-12-31T13:15:21.540Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:29.546Z"
  },
  {
    "id": "the-open-network",
    "symbol": "ton",
    "name": "Toncoin",
    "image": "https://coin-images.coingecko.com/coins/images/17980/large/photo_2024-09-10_17.09.00.jpeg?1725963446",
    "current_price": 5.7,
    "market_cap": 14570383512,
    "market_cap_rank": 13,
    "fully_diluted_valuation": 29218199564,
    "total_volume": 155534184,
    "high_24h": 5.83,
    "low_24h": 5.69,
    "price_change_24h": -0.12200706634850089,
    "price_change_percentage_24h": -2.09463,
    "market_cap_change_24h": -291636016.6400871,
    "market_cap_change_percentage_24h": -1.96229,
    "circulating_supply": 2552500301.188177,
    "total_supply": 5118565556.171782,
    "max_supply": null,
    "ath": 8.25,
    "ath_change_percentage": -30.83916,
    "ath_date": "2024-06-15T00:36:51.509Z",
    "atl": 0.519364,
    "atl_change_percentage": 999.08769,
    "atl_date": "2021-09-21T00:33:11.092Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:29.255Z"
  },
  {
    "id": "wrapped-steth",
    "symbol": "wsteth",
    "name": "Wrapped stETH",
    "image": "https://coin-images.coingecko.com/coins/images/18834/large/wstETH.png?1696518295",
    "current_price": 3976.15,
    "market_cap": 13931408814,
    "market_cap_rank": 14,
    "fully_diluted_valuation": 13931408814,
    "total_volume": 56856553,
    "high_24h": 4048.13,
    "low_24h": 3972.34,
    "price_change_24h": -38.01283616880846,
    "price_change_percentage_24h": -0.94697,
    "market_cap_change_24h": -127322214.29390335,
    "market_cap_change_percentage_24h": -0.90565,
    "circulating_supply": 3501751.206270385,
    "total_supply": 3501751.206270385,
    "max_supply": null,
    "ath": 7256.02,
    "ath_change_percentage": -45.17089,
    "ath_date": "2022-05-13T15:09:54.509Z",
    "atl": 558.54,
    "atl_change_percentage": 612.2876,
    "atl_date": "2022-05-13T01:36:45.053Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:29.925Z"
  },
  {
    "id": "chainlink",
    "symbol": "link",
    "name": "Chainlink",
    "image": "https://coin-images.coingecko.com/coins/images/877/large/chainlink-new-logo.png?1696502009",
    "current_price": 21.23,
    "market_cap": 13419488442,
    "market_cap_rank": 15,
    "fully_diluted_valuation": 21263649233,
    "total_volume": 653582904,
    "high_24h": 22.24,
    "low_24h": 21.2,
    "price_change_24h": -0.49885603299026826,
    "price_change_percentage_24h": -2.29591,
    "market_cap_change_24h": -283358497.4777298,
    "market_cap_change_percentage_24h": -2.06788,
    "circulating_supply": 631099972.3083414,
    "total_supply": 1000000000,
    "max_supply": 1000000000,
    "ath": 52.7,
    "ath_change_percentage": -59.64858,
    "ath_date": "2021-05-10T00:13:57.214Z",
    "atl": 0.148183,
    "atl_change_percentage": 14249.68635,
    "atl_date": "2017-11-29T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:31.071Z"
  },
  {
    "id": "shiba-inu",
    "symbol": "shib",
    "name": "Shiba Inu",
    "image": "https://coin-images.coingecko.com/coins/images/11939/large/shiba.png?1696511800",
    "current_price": 0.00002172,
    "market_cap": 12814896208,
    "market_cap_rank": 16,
    "fully_diluted_valuation": 12820400529,
    "total_volume": 353538571,
    "high_24h": 0.00002235,
    "low_24h": 0.00002168,
    "price_change_24h": -4.12044001504e-7,
    "price_change_percentage_24h": -1.86156,
    "market_cap_change_24h": -246144598.4585247,
    "market_cap_change_percentage_24h": -1.88457,
    "circulating_supply": 589255410319455.5,
    "total_supply": 589508510351898.2,
    "max_supply": null,
    "ath": 0.00008616,
    "ath_change_percentage": -74.75293,
    "ath_date": "2021-10-28T03:54:55.568Z",
    "atl": 5.6366e-11,
    "atl_change_percentage": 38591282.97621,
    "atl_date": "2020-11-28T11:26:25.838Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:29.159Z"
  },
  {
    "id": "wrapped-bitcoin",
    "symbol": "wbtc",
    "name": "Wrapped Bitcoin",
    "image": "https://coin-images.coingecko.com/coins/images/7598/large/wrapped_bitcoin_wbtc.png?1696507857",
    "current_price": 93724,
    "market_cap": 12459680560,
    "market_cap_rank": 17,
    "fully_diluted_valuation": 12459680560,
    "total_volume": 207552810,
    "high_24h": 95110,
    "low_24h": 93553,
    "price_change_24h": -868.9347665223904,
    "price_change_percentage_24h": -0.9186,
    "market_cap_change_24h": -105794140.76957893,
    "market_cap_change_percentage_24h": -0.84194,
    "circulating_supply": 132852.42992381,
    "total_supply": 132852.42992381,
    "max_supply": 132852.42992381,
    "ath": 107645,
    "ath_change_percentage": -12.92091,
    "ath_date": "2024-12-17T15:02:56.539Z",
    "atl": 3139.17,
    "atl_change_percentage": 2886.03001,
    "atl_date": "2019-04-02T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:29.246Z"
  },
  {
    "id": "sui",
    "symbol": "sui",
    "name": "Sui",
    "image": "https://coin-images.coingecko.com/coins/images/26375/large/sui-ocean-square.png?1727791290",
    "current_price": 4.1,
    "market_cap": 12032924849,
    "market_cap_rank": 18,
    "fully_diluted_valuation": 41100827189,
    "total_volume": 718099552,
    "high_24h": 4.26,
    "low_24h": 4.11,
    "price_change_24h": -0.03553539631378566,
    "price_change_percentage_24h": -0.85852,
    "market_cap_change_24h": -70875182.54945183,
    "market_cap_change_percentage_24h": -0.58556,
    "circulating_supply": 2927660018.558888,
    "total_supply": 10000000000,
    "max_supply": 10000000000,
    "ath": 4.91,
    "ath_change_percentage": -16.14547,
    "ath_date": "2024-12-16T00:50:33.515Z",
    "atl": 0.364846,
    "atl_change_percentage": 1028.39847,
    "atl_date": "2023-10-19T10:40:30.078Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:29.474Z"
  },
  {
    "id": "hedera-hashgraph",
    "symbol": "hbar",
    "name": "Hedera",
    "image": "https://coin-images.coingecko.com/coins/images/3688/large/hbar.png?1696504364",
    "current_price": 0.280693,
    "market_cap": 10746612011,
    "market_cap_rank": 19,
    "fully_diluted_valuation": 14047064655,
    "total_volume": 806506177,
    "high_24h": 0.30101,
    "low_24h": 0.280729,
    "price_change_24h": -0.00587382437295364,
    "price_change_percentage_24h": -2.04972,
    "market_cap_change_24h": -200124353.09091187,
    "market_cap_change_percentage_24h": -1.82816,
    "circulating_supply": 38252162550.09767,
    "total_supply": 50000000000,
    "max_supply": 50000000000,
    "ath": 0.569229,
    "ath_change_percentage": -50.63892,
    "ath_date": "2021-09-15T10:40:28.318Z",
    "atl": 0.00986111,
    "atl_change_percentage": 2749.35008,
    "atl_date": "2020-01-02T17:30:24.852Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:21.865Z"
  },
  {
    "id": "polkadot",
    "symbol": "dot",
    "name": "Polkadot",
    "image": "https://coin-images.coingecko.com/coins/images/12171/large/polkadot.png?1696512008",
    "current_price": 6.92,
    "market_cap": 10538144203,
    "market_cap_rank": 20,
    "fully_diluted_valuation": 10538144203,
    "total_volume": 216552249,
    "high_24h": 7.14,
    "low_24h": 6.9,
    "price_change_24h": -0.105105413453205,
    "price_change_percentage_24h": -1.49678,
    "market_cap_change_24h": -155070180.8438778,
    "market_cap_change_percentage_24h": -1.45017,
    "circulating_supply": 1522267060,
    "total_supply": 1522267060,
    "max_supply": null,
    "ath": 54.98,
    "ath_change_percentage": -87.4047,
    "ath_date": "2021-11-04T14:10:09.301Z",
    "atl": 2.7,
    "atl_change_percentage": 156.72386,
    "atl_date": "2020-08-20T05:48:11.359Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:30.129Z"
  }
]

"""
    .data(using: .utf8)!


// invalid Test Json data
let invalidCoinsTestData = """

[
  {
    "id": "bitcoin",
    "symbo": "btc",
    "name": "Bitcoin",
    "image": "https://coin-images.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
    "current_price": 93652,
    "market_cap": 1856182000818,
    "market_cap_rank": 1,
    "fully_diluted_valuation": 1968388685580,
    "total_volume": 22285222188,
    "high_24h": 95276,
    "low_24h": 93551,
    "price_change_24h": -1054.7999282746605,
    "price_change_percentage_24h": -1.11376,
    "market_cap_change_24h": -18760420665.328125,
    "market_cap_change_percentage_24h": -1.00059,
    "circulating_supply": 19802909,
    "total_supply": 21000000,
    "max_supply": 21000000,
    "ath": 108135,
    "ath_change_percentage": -13.31892,
    "ath_date": "2024-12-17T15:02:41.429Z",
    "atl": 67.81,
    "atl_change_percentage": 138129.91867,
    "atl_date": "2013-07-06T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:18.197Z"
  },
  {
    "id": "ethereum",
    "symbol": "eth",
    "name": "Ethereum",
    "image": "https://coin-images.coingecko.com/coins/images/279/large/ethereum.png?1696501628",
    "current_price": 3347.41,
    "market_cap": 403611981183,
    "market_cap_rank": 2,
    "fully_diluted_valuation": 403611981183,
    "total_volume": 12258111364,
    "high_24h": 3410.29,
    "low_24h": 3341.42,
    "price_change_24h": -32.18649366356567,
    "price_change_percentage_24h": -0.95238,
    "market_cap_change_24h": -3384595370.8845825,
    "market_cap_change_percentage_24h": -0.8316,
    "circulating_supply": 120468720.1737614,
    "total_supply": 120468720.1737614,
    "max_supply": null,
    "ath": 4878.26,
    "ath_change_percentage": -31.31856,
    "ath_date": "2021-11-10T14:24:19.604Z",
    "atl": 0.432979,
    "atl_change_percentage": 773715.94242,
    "atl_date": "2015-10-20T00:00:00.000Z",
    "roi": {
      "times": 46.78650752948414,
      "currency": "btc",
      "percentage": 4678.650752948414
    },
    "last_updated": "2024-12-29T17:04:20.482Z"
  },
  {
    "id": "tether",
    "symbol": "usdt",
    "name": "Tether",
    "image": "https://coin-images.coingecko.com/coins/images/325/large/Tether.png?1696501661",
    "current_price": 0.997803,
    "market_cap": 138763990105,
    "market_cap_rank": 3,
    "fully_diluted_valuation": 138763990105,
    "total_volume": 27492485129,
    "high_24h": 1,
    "low_24h": 0.995145,
    "price_change_24h": -0.000037153848280402,
    "price_change_percentage_24h": -0.00372,
    "market_cap_change_24h": 13321783,
    "market_cap_change_percentage_24h": 0.0096,
    "circulating_supply": 139005076766.8021,
    "total_supply": 139005076766.8021,
    "max_supply": null,
    "ath": 1.32,
    "ath_change_percentage": -24.54684,
    "ath_date": "2018-07-24T00:00:00.000Z",
    "atl": 0.572521,
    "atl_change_percentage": 74.37215,
    "atl_date": "2015-03-02T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:24.468Z"
  },
  {
    "id": "ripple",
    "symbol": "xrp",
    "name": "XRP",
    "image": "https://coin-images.coingecko.com/coins/images/44/large/xrp-symbol-white-128.png?1696501442",
    "current_price": 2.14,
    "market_cap": 123134648876,
    "market_cap_rank": 4,
    "fully_diluted_valuation": 214453639353,
    "total_volume": 2242904122,
    "high_24h": 2.2,
    "low_24h": 2.14,
    "price_change_24h": -0.04140045681869209,
    "price_change_percentage_24h": -1.89534,
    "market_cap_change_24h": -2375188202.22435,
    "market_cap_change_percentage_24h": -1.89243,
    "circulating_supply": 57410227039,
    "total_supply": 99986740020,
    "max_supply": 100000000000,
    "ath": 3.4,
    "ath_change_percentage": -36.88126,
    "ath_date": "2018-01-07T00:00:00.000Z",
    "atl": 0.00268621,
    "atl_change_percentage": 79754.5664,
    "atl_date": "2014-05-22T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:30.389Z"
  },
  {
    "id": "binancecoin",
    "symbol": "bnb",
    "name": "BNB",
    "image": "https://coin-images.coingecko.com/coins/images/825/large/bnb-icon2_2x.png?1696501970",
    "current_price": 703.28,
    "market_cap": 102604108906,
    "market_cap_rank": 5,
    "fully_diluted_valuation": 102604108906,
    "total_volume": 732275630,
    "high_24h": 728.75,
    "low_24h": 702.67,
    "price_change_24h": -22.02555461607949,
    "price_change_percentage_24h": -3.03675,
    "market_cap_change_24h": -3172288572.8017883,
    "market_cap_change_percentage_24h": -2.99905,
    "circulating_supply": 145887575.79,
    "total_supply": 145887575.79,
    "max_supply": 200000000,
    "ath": 788.84,
    "ath_change_percentage": -10.83533,
    "ath_date": "2024-12-04T10:35:25.220Z",
    "atl": 0.0398177,
    "atl_change_percentage": 1766375.40618,
    "atl_date": "2017-10-19T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:30.068Z"
  },
  {
    "id": "solana",
    "symbol": "sol",
    "name": "Solana",
    "image": "https://coin-images.coingecko.com/coins/images/4128/large/solana.png?1718769756",
    "current_price": 192.63,
    "market_cap": 92459221255,
    "market_cap_rank": 6,
    "fully_diluted_valuation": 113940012749,
    "total_volume": 2758767988,
    "high_24h": 196.76,
    "low_24h": 192.26,
    "price_change_24h": 0.164219,
    "price_change_percentage_24h": 0.08532,
    "market_cap_change_24h": 97774902,
    "market_cap_change_percentage_24h": 0.10586,
    "circulating_supply": 479630052.0373696,
    "total_supply": 591061156.4997994,
    "max_supply": null,
    "ath": 263.21,
    "ath_change_percentage": -26.74721,
    "ath_date": "2024-11-23T15:05:59.896Z",
    "atl": 0.500801,
    "atl_change_percentage": 38399.63489,
    "atl_date": "2020-05-11T19:35:23.449Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:28.670Z"
  },
  {
    "id": "dogecoin",
    "symbol": "doge",
    "name": "Dogecoin",
    "image": "https://coin-images.coingecko.com/coins/images/5/large/dogecoin.png?1696501409",
    "current_price": 0.315555,
    "market_cap": 46517778531,
    "market_cap_rank": 7,
    "fully_diluted_valuation": 46546103294,
    "total_volume": 1687548248,
    "high_24h": 0.328815,
    "low_24h": 0.314629,
    "price_change_24h": -0.005568943370278079,
    "price_change_percentage_24h": -1.7342,
    "market_cap_change_24h": -803606149.2471619,
    "market_cap_change_percentage_24h": -1.69819,
    "circulating_supply": 147314376383.7052,
    "total_supply": 147404076383.7052,
    "max_supply": null,
    "ath": 0.731578,
    "ath_change_percentage": -56.8348,
    "ath_date": "2021-05-08T05:08:23.458Z",
    "atl": 0.0000869,
    "atl_change_percentage": 363275.74624,
    "atl_date": "2015-05-06T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:20.951Z"
  },
  {
    "id": "usd-coin",
    "symbol": "usdc",
    "name": "USDC",
    "image": "https://coin-images.coingecko.com/coins/images/6319/large/usdc.png?1696506694",
    "current_price": 0.999479,
    "market_cap": 43620985968,
    "market_cap_rank": 8,
    "fully_diluted_valuation": 43618305889,
    "total_volume": 2576309243,
    "high_24h": 1.002,
    "low_24h": 0.996929,
    "price_change_24h": -0.00050175526288887,
    "price_change_percentage_24h": -0.05018,
    "market_cap_change_24h": 18521063,
    "market_cap_change_percentage_24h": 0.04248,
    "circulating_supply": 43615473461.88669,
    "total_supply": 43612793721.08485,
    "max_supply": null,
    "ath": 1.17,
    "ath_change_percentage": -14.71434,
    "ath_date": "2019-05-08T00:40:28.300Z",
    "atl": 0.877647,
    "atl_change_percentage": 13.95819,
    "atl_date": "2023-03-11T08:02:13.981Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:30.208Z"
  },
  {
    "id": "staked-ether",
    "symbol": "steth",
    "name": "Lido Staked Ether",
    "image": "https://coin-images.coingecko.com/coins/images/13442/large/steth_logo.png?1696513206",
    "current_price": 3345.6,
    "market_cap": 32348744836,
    "market_cap_rank": 9,
    "fully_diluted_valuation": 32348744836,
    "total_volume": 54047808,
    "high_24h": 3406.12,
    "low_24h": 3339.1,
    "price_change_24h": -30.988300537326268,
    "price_change_percentage_24h": -0.91774,
    "market_cap_change_24h": -292206051.1919136,
    "market_cap_change_percentage_24h": -0.89521,
    "circulating_supply": 9664077.784522412,
    "total_supply": 9664077.784522412,
    "max_supply": null,
    "ath": 4829.57,
    "ath_change_percentage": -30.67881,
    "ath_date": "2021-11-10T14:40:47.256Z",
    "atl": 482.9,
    "atl_change_percentage": 593.29921,
    "atl_date": "2020-12-22T04:08:21.854Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:27.661Z"
  },
  {
    "id": "cardano",
    "symbol": "ada",
    "name": "Cardano",
    "image": "https://coin-images.coingecko.com/coins/images/975/large/cardano.png?1696502090",
    "current_price": 0.867994,
    "market_cap": 31145321287,
    "market_cap_rank": 10,
    "fully_diluted_valuation": 39106792154,
    "total_volume": 647981419,
    "high_24h": 0.907935,
    "low_24h": 0.868588,
    "price_change_24h": -0.013442439040201036,
    "price_change_percentage_24h": -1.52506,
    "market_cap_change_24h": -434629750.3976135,
    "market_cap_change_percentage_24h": -1.37628,
    "circulating_supply": 35838773285.35924,
    "total_supply": 45000000000,
    "max_supply": 45000000000,
    "ath": 3.09,
    "ath_change_percentage": -71.84592,
    "ath_date": "2021-09-02T06:00:10.474Z",
    "atl": 0.01925275,
    "atl_change_percentage": 4414.11566,
    "atl_date": "2020-03-13T02:22:55.044Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:30.534Z"
  },
  {
    "id": "tron",
    "symbol": "trx",
    "name": "TRON",
    "image": "https://coin-images.coingecko.com/coins/images/1094/large/tron-logo.png?1696502193",
    "current_price": 0.259057,
    "market_cap": 22360229042,
    "market_cap_rank": 11,
    "fully_diluted_valuation": 22360228389,
    "total_volume": 681011566,
    "high_24h": 0.262666,
    "low_24h": 0.256489,
    "price_change_24h": 0.00189933,
    "price_change_percentage_24h": 0.73858,
    "market_cap_change_24h": 196280437,
    "market_cap_change_percentage_24h": 0.88558,
    "circulating_supply": 86202012314.14804,
    "total_supply": 86202009798.02617,
    "max_supply": null,
    "ath": 0.431288,
    "ath_change_percentage": -39.85898,
    "ath_date": "2024-12-04T00:10:40.323Z",
    "atl": 0.00180434,
    "atl_change_percentage": 14275.3936,
    "atl_date": "2017-11-12T00:00:00.000Z",
    "roi": {
      "times": 135.3459288288883,
      "currency": "usd",
      "percentage": 13534.592882888832
    },
    "last_updated": "2024-12-29T17:04:29.632Z"
  },
  {
    "id": "avalanche-2",
    "symbol": "avax",
    "name": "Avalanche",
    "image": "https://coin-images.coingecko.com/coins/images/12559/large/Avalanche_Circle_RedWhite_Trans.png?1696512369",
    "current_price": 36.22,
    "market_cap": 14855599758,
    "market_cap_rank": 12,
    "fully_diluted_valuation": 16245072834,
    "total_volume": 274124523,
    "high_24h": 37.99,
    "low_24h": 36.19,
    "price_change_24h": -1.2164070297510605,
    "price_change_percentage_24h": -3.2495,
    "market_cap_change_24h": -508266576.9304199,
    "market_cap_change_percentage_24h": -3.30819,
    "circulating_supply": 409873547.6082966,
    "total_supply": 448209815.9697876,
    "max_supply": 720000000,
    "ath": 144.96,
    "ath_change_percentage": -74.98625,
    "ath_date": "2021-11-21T14:18:56.538Z",
    "atl": 2.8,
    "atl_change_percentage": 1194.51646,
    "atl_date": "2020-12-31T13:15:21.540Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:29.546Z"
  },
  {
    "id": "the-open-network",
    "symbol": "ton",
    "name": "Toncoin",
    "image": "https://coin-images.coingecko.com/coins/images/17980/large/photo_2024-09-10_17.09.00.jpeg?1725963446",
    "current_price": 5.7,
    "market_cap": 14570383512,
    "market_cap_rank": 13,
    "fully_diluted_valuation": 29218199564,
    "total_volume": 155534184,
    "high_24h": 5.83,
    "low_24h": 5.69,
    "price_change_24h": -0.12200706634850089,
    "price_change_percentage_24h": -2.09463,
    "market_cap_change_24h": -291636016.6400871,
    "market_cap_change_percentage_24h": -1.96229,
    "circulating_supply": 2552500301.188177,
    "total_supply": 5118565556.171782,
    "max_supply": null,
    "ath": 8.25,
    "ath_change_percentage": -30.83916,
    "ath_date": "2024-06-15T00:36:51.509Z",
    "atl": 0.519364,
    "atl_change_percentage": 999.08769,
    "atl_date": "2021-09-21T00:33:11.092Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:29.255Z"
  },
  {
    "id": "wrapped-steth",
    "symbol": "wsteth",
    "name": "Wrapped stETH",
    "image": "https://coin-images.coingecko.com/coins/images/18834/large/wstETH.png?1696518295",
    "current_price": 3976.15,
    "market_cap": 13931408814,
    "market_cap_rank": 14,
    "fully_diluted_valuation": 13931408814,
    "total_volume": 56856553,
    "high_24h": 4048.13,
    "low_24h": 3972.34,
    "price_change_24h": -38.01283616880846,
    "price_change_percentage_24h": -0.94697,
    "market_cap_change_24h": -127322214.29390335,
    "market_cap_change_percentage_24h": -0.90565,
    "circulating_supply": 3501751.206270385,
    "total_supply": 3501751.206270385,
    "max_supply": null,
    "ath": 7256.02,
    "ath_change_percentage": -45.17089,
    "ath_date": "2022-05-13T15:09:54.509Z",
    "atl": 558.54,
    "atl_change_percentage": 612.2876,
    "atl_date": "2022-05-13T01:36:45.053Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:29.925Z"
  },
  {
    "id": "chainlink",
    "symbol": "link",
    "name": "Chainlink",
    "image": "https://coin-images.coingecko.com/coins/images/877/large/chainlink-new-logo.png?1696502009",
    "current_price": 21.23,
    "market_cap": 13419488442,
    "market_cap_rank": 15,
    "fully_diluted_valuation": 21263649233,
    "total_volume": 653582904,
    "high_24h": 22.24,
    "low_24h": 21.2,
    "price_change_24h": -0.49885603299026826,
    "price_change_percentage_24h": -2.29591,
    "market_cap_change_24h": -283358497.4777298,
    "market_cap_change_percentage_24h": -2.06788,
    "circulating_supply": 631099972.3083414,
    "total_supply": 1000000000,
    "max_supply": 1000000000,
    "ath": 52.7,
    "ath_change_percentage": -59.64858,
    "ath_date": "2021-05-10T00:13:57.214Z",
    "atl": 0.148183,
    "atl_change_percentage": 14249.68635,
    "atl_date": "2017-11-29T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:31.071Z"
  },
  {
    "id": "shiba-inu",
    "symbol": "shib",
    "name": "Shiba Inu",
    "image": "https://coin-images.coingecko.com/coins/images/11939/large/shiba.png?1696511800",
    "current_price": 0.00002172,
    "market_cap": 12814896208,
    "market_cap_rank": 16,
    "fully_diluted_valuation": 12820400529,
    "total_volume": 353538571,
    "high_24h": 0.00002235,
    "low_24h": 0.00002168,
    "price_change_24h": -4.12044001504e-7,
    "price_change_percentage_24h": -1.86156,
    "market_cap_change_24h": -246144598.4585247,
    "market_cap_change_percentage_24h": -1.88457,
    "circulating_supply": 589255410319455.5,
    "total_supply": 589508510351898.2,
    "max_supply": null,
    "ath": 0.00008616,
    "ath_change_percentage": -74.75293,
    "ath_date": "2021-10-28T03:54:55.568Z",
    "atl": 5.6366e-11,
    "atl_change_percentage": 38591282.97621,
    "atl_date": "2020-11-28T11:26:25.838Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:29.159Z"
  },
  {
    "id": "wrapped-bitcoin",
    "symbol": "wbtc",
    "name": "Wrapped Bitcoin",
    "image": "https://coin-images.coingecko.com/coins/images/7598/large/wrapped_bitcoin_wbtc.png?1696507857",
    "current_price": 93724,
    "market_cap": 12459680560,
    "market_cap_rank": 17,
    "fully_diluted_valuation": 12459680560,
    "total_volume": 207552810,
    "high_24h": 95110,
    "low_24h": 93553,
    "price_change_24h": -868.9347665223904,
    "price_change_percentage_24h": -0.9186,
    "market_cap_change_24h": -105794140.76957893,
    "market_cap_change_percentage_24h": -0.84194,
    "circulating_supply": 132852.42992381,
    "total_supply": 132852.42992381,
    "max_supply": 132852.42992381,
    "ath": 107645,
    "ath_change_percentage": -12.92091,
    "ath_date": "2024-12-17T15:02:56.539Z",
    "atl": 3139.17,
    "atl_change_percentage": 2886.03001,
    "atl_date": "2019-04-02T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:29.246Z"
  },
  {
    "id": "sui",
    "symbol": "sui",
    "name": "Sui",
    "image": "https://coin-images.coingecko.com/coins/images/26375/large/sui-ocean-square.png?1727791290",
    "current_price": 4.1,
    "market_cap": 12032924849,
    "market_cap_rank": 18,
    "fully_diluted_valuation": 41100827189,
    "total_volume": 718099552,
    "high_24h": 4.26,
    "low_24h": 4.11,
    "price_change_24h": -0.03553539631378566,
    "price_change_percentage_24h": -0.85852,
    "market_cap_change_24h": -70875182.54945183,
    "market_cap_change_percentage_24h": -0.58556,
    "circulating_supply": 2927660018.558888,
    "total_supply": 10000000000,
    "max_supply": 10000000000,
    "ath": 4.91,
    "ath_change_percentage": -16.14547,
    "ath_date": "2024-12-16T00:50:33.515Z",
    "atl": 0.364846,
    "atl_change_percentage": 1028.39847,
    "atl_date": "2023-10-19T10:40:30.078Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:29.474Z"
  },
  {
    "id": "hedera-hashgraph",
    "symbol": "hbar",
    "name": "Hedera",
    "image": "https://coin-images.coingecko.com/coins/images/3688/large/hbar.png?1696504364",
    "current_price": 0.280693,
    "market_cap": 10746612011,
    "market_cap_rank": 19,
    "fully_diluted_valuation": 14047064655,
    "total_volume": 806506177,
    "high_24h": 0.30101,
    "low_24h": 0.280729,
    "price_change_24h": -0.00587382437295364,
    "price_change_percentage_24h": -2.04972,
    "market_cap_change_24h": -200124353.09091187,
    "market_cap_change_percentage_24h": -1.82816,
    "circulating_supply": 38252162550.09767,
    "total_supply": 50000000000,
    "max_supply": 50000000000,
    "ath": 0.569229,
    "ath_change_percentage": -50.63892,
    "ath_date": "2021-09-15T10:40:28.318Z",
    "atl": 0.00986111,
    "atl_change_percentage": 2749.35008,
    "atl_date": "2020-01-02T17:30:24.852Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:21.865Z"
  },
  {
    "id": "polkadot",
    "symbol": "dot",
    "name": "Polkadot",
    "image": "https://coin-images.coingecko.com/coins/images/12171/large/polkadot.png?1696512008",
    "current_price": 6.92,
    "market_cap": 10538144203,
    "market_cap_rank": 20,
    "fully_diluted_valuation": 10538144203,
    "total_volume": 216552249,
    "high_24h": 7.14,
    "low_24h": 6.9,
    "price_change_24h": -0.105105413453205,
    "price_change_percentage_24h": -1.49678,
    "market_cap_change_24h": -155070180.8438778,
    "market_cap_change_percentage_24h": -1.45017,
    "circulating_supply": 1522267060,
    "total_supply": 1522267060,
    "max_supply": null,
    "ath": 54.98,
    "ath_change_percentage": -87.4047,
    "ath_date": "2021-11-04T14:10:09.301Z",
    "atl": 2.7,
    "atl_change_percentage": 156.72386,
    "atl_date": "2020-08-20T05:48:11.359Z",
    "roi": null,
    "last_updated": "2024-12-29T17:04:30.129Z"
  }
]

"""
    .data(using: .utf8)!