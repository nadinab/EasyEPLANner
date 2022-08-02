-- В Phoenix Contact особенность, адресное пространство
-- кратно 32, в связи с этим, увеличивается цифра DO/DI count
-- в два раза в отличие от WAGO.
-- При добавлении модуля учитывать, что первый [0] индекс
-- массива только для Phoenix, а в WAGO его необходимо
-- ставить -1.

-- constructor description:
-- n - номер модуля ввода-вывода IO (например: 860).
-- name - имя модуля ввода-вывода IO (серия-номер, например: 750-860).
-- description - описание модуля ввода-вывода IO.
-- adressSpacetype - тип адресного пространства модуля ввода-вывода IO.
-- typeName - имя типа (дискретный выход, аналоговый выход, ...).
-- groupName - имя серии модуля ввода-вывода IO (например 750-800).
-- channelClamps - клеммы каналов ввода-вывода.
-- channelAddressesIn - адреса каналов ввода.
-- channelAddressesOut - адреса каналов вывода.
-- DO_count - количество дискретных выходов.
-- DI_count - количество дискретных входов.
-- AO_count - количество аналоговых выходов.
-- AI_count - количество аналоговых входов.
-- Color - физический цвет модуля.

-- adressSpacetype enumeration:
-- NONE - 0
-- DO - 1
-- DI - 2
-- AO - 3
-- AI - 4
-- AOAI - 5
-- DODI - 6
-- AOAIDODI - 7

local io_modules =
    {
    [ 1 ] = {
            n = 1504,
            name = '750-1504',
            description = '16-Channel Digital Output Module 24 V DC',
            addressSpaceType = 1,
            typeName = 'Дискретный выход',
            groupName = '750-1500',
            channelClamps = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
                            16},
            channelAddressesIn = { },
            channelAddressesOut = {-1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11,
                            12, 13, 14, 15},
            DO_count = 16,
            DI_count = 0,
            AO_count = 0,
            AI_count = 0,
            Color = 'Red',
            },

    [ 2 ] = {
            n = 1515,
            name = '750-1515',
            description = '8-Channel Digital Output Module 24 V DC',
            addressSpaceType = 1,
            typeName = 'Дискретный выход',
            groupName = '750-1500',
            channelClamps = {1, 2, 3, 4, 5, 6, 7, 8},
            channelAddressesIn = { },
            channelAddressesOut = {-1, 0, 1, 2, 3, 4, 5, 6, 7},
            DO_count = 8,
            DI_count = 0,
            AO_count = 0,
            AI_count = 0,
            Color = 'Red',
            },

    [ 3 ] = {
            n = 504,
            name = '750-504',
            description = '4-Channel Digital Output Module DC 24 V',
            addressSpaceType = 1,
            typeName = 'Дискретный выход',
            groupName = '750-500',
            channelClamps = {1, 5, 4, 8},
            channelAddressesIn = { },
            channelAddressesOut = {-1, 0, -1, -1, 2, 1, -1, -1, 3},
            DO_count = 4,
            DI_count = 0,
            AO_count = 0,
            AI_count = 0,
            Color = 'Red',
            },

    [ 4 ] = {
            n = 512,
            name = '750-512',
            description = '2-Channel Relay Output Module 230 V AC, 30 V DC',
            addressSpaceType = 1,
            typeName = 'Дискретный выход',
            groupName = '750-500',
            channelClamps = {1, 5},
            channelAddressesIn = { },
            channelAddressesOut = {-1, 0, -1, -1, -1, 1, -1, -1, -1},
            DO_count = 4,
            DI_count = 0,
            AO_count = 0,
            AI_count = 0,
            Color = 'Red',
            },

    [ 5 ] = {
            n = 530,
            name = '750-530',
            description = '8-Channel Digital Output Module DC 24 V',
            addressSpaceType = 1,
            typeName = 'Дискретный выход',
            groupName = '750-500',
            channelClamps = {1, 5, 2, 6, 3, 7, 4, 8},
            channelAddressesIn = { },
            channelAddressesOut = {-1, 0, 2, 4, 6, 1, 3, 5, 7},
            DO_count = 8,
            DI_count = 0,
            AO_count = 0,
            AI_count = 0,
            Color = 'Red',
            },

    [ 6 ] = {
            n = 402,
            name = '750-402',
            description = '4-Channel Digital Input Module 24 V DC',
            addressSpaceType = 2,
            typeName = 'Дискретный вход',
            groupName = '750-400',
            channelClamps = {1, 5, 4, 8},
            channelAddressesIn = {-1, 0, -1, -1, 2, 1, -1, -1, 3},
            channelAddressesOut = { },
            DO_count = 0,
            DI_count = 4,
            AO_count = 0,
            AI_count = 0,
            Color = 'Yellow',
            },

    [ 7 ] = {
            n = 430,
            name = '750-430',
            description = '8-Channel Digital Input Module 24 V DC',
            addressSpaceType = 2,
            typeName = 'Дискретный вход',
            groupName = '750-400',
            channelClamps = {1, 5, 2, 6, 3, 7, 4, 8},
            channelAddressesIn = {-1, 0, 2, 4, 6, 1, 3, 5, 7},
            channelAddressesOut = { },
            DO_count = 0,
            DI_count = 8,
            AO_count = 0,
            AI_count = 0,
            Color = 'Yellow',
            },

    [ 8 ] = {
            n = 1405,
            name = '750-1405',
            description = '16-Channel Digital Input Module 24 V DC',
            addressSpaceType = 2,
            typeName = 'Дискретный вход',
            groupName = '750-1400',
            channelClamps = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
                            16},
            channelAddressesIn = {-1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12,
                            13, 14, 15},
            channelAddressesOut = { },
            DO_count = 0,
            DI_count = 16,
            AO_count = 0,
            AI_count = 0,
            Color = 'Yellow',
            },

    [ 9 ] = {
            n = 1415,
            name = '750-1415',
            description = '8-Channel Digital Input Module 24 V DC',
            addressSpaceType = 2,
            typeName = 'Дискретный вход',
            groupName = '750-1400',
            channelClamps = {1, 2, 3, 4, 5, 6, 7, 8},
            channelAddressesIn = {-1, 0, 1, 2, 3, 4, 5, 6, 7},
            channelAddressesOut = { },
            DO_count = 0,
            DI_count = 8,
            AO_count = 0,
            AI_count = 0,
            Color = 'Yellow',
            },

    [ 10 ] = {
            n = 1420,
            name = '750-1420',
            description = '4-Channel Digital Input Module 24 V DC',
            addressSpaceType = 2,
            typeName = 'Дискретный вход',
            groupName = '750-1400',
            channelClamps = {1, 6, 9, 14},
            channelAddressesIn = {-1, 0, -1, -1, -1, -1, 1, -1, -1, 2, -1, -1,
                            -1, -1, 3, -1, -1},
            channelAddressesOut = { },
            DO_count = 0,
            DI_count = 4,
            AO_count = 0,
            AI_count = 0,
            Color = 'Yellow',
            },

    [ 11 ] = {
            n = 554,
            name = '750-554',
            description = '2-Channel Analog Output Module 4-20mA',
            addressSpaceType = 3,
            typeName = 'Аналоговый выход',
            groupName = '750-500',
            channelClamps = {1, 5},
            channelAddressesIn = { },
            channelAddressesOut = {-1, 0, -1, -1, -1, 1, -1, -1, -1},
            DO_count = 0,
            DI_count = 0,
            AO_count = 2,
            AI_count = 0,
            Color = 'Blue',
            },

    [ 12 ] = {
            n = 555,
            name = '750-555',
            description = '4-Channel Analog Output Module 4-20mA',
            addressSpaceType = 3,
            typeName = 'Аналоговый выход',
            groupName = '750-500',
            channelClamps = {1, 5, 3, 7},
            channelAddressesIn = { },
            channelAddressesOut = {-1, 0, -1, 2, -1, 1, -1, 3, -1},
            DO_count = 0,
            DI_count = 0,
            AO_count = 4,
            AI_count = 0,
            Color = 'Blue',
            },

    [ 13 ] = {
            n = 638,
            name = '750-638',
            description = '2-Channel Up/Down Counter 24 V DC, 500 Hz',
            addressSpaceType = 4,
            typeName = 'Счетчик',
            groupName = '750-600',
            channelClamps = {1, 5},
            channelAddressesIn = {-1, 0, -1, -1, -1, 1, -1, -1, -1},
            channelAddressesOut = { },
            DO_count = 0,
            DI_count = 0,
            AO_count = 2,
            AI_count = 2,
            Color = 'Gray',
            },

    [ 14 ] = {
            n = 450,
            name = '750-450',
            description = '4-Channel Analog Input Module for RTDs',
            addressSpaceType = 4,
            typeName = 'Аналоговый вход',
            groupName = '750-400',
            channelClamps = {1, 3, 5, 7},
            channelAddressesIn = {-1, 0, -1, 1, -1, 2, -1, 3, -1},
            channelAddressesOut = { },
            DO_count = 0,
            DI_count = 0,
            AO_count = 0,
            AI_count = 4,
            Color = 'Lime',
            },

    [ 15 ] = {
            n = 461,
            name = '750-461',
            description = '2-Channel Analog Input Module for RTDs',
            addressSpaceType = 4,
            typeName = 'Аналоговый вход',
            groupName = '750-400',
            channelClamps = {1, 5},
            channelAddressesIn = {-1, 0, -1, -1, -1, 1, -1, -1, -1},
            channelAddressesOut = { },
            DO_count = 0,
            DI_count = 0,
            AO_count = 0,
            AI_count = 2,
            Color = 'Lime',
            },

    [ 16 ] = {
            n = 466,
            name = '750-466',
            description = '2-Channel Analog Input Module for RTDs',
            addressSpaceType = 4,
            typeName = 'Аналоговый вход',
            groupName = '750-400',
            channelClamps = {1, 5},
            channelAddressesIn = {-1, 0, -1, -1, -1, 1, -1, -1, -1},
            channelAddressesOut = { },
            DO_count = 0,
            DI_count = 0,
            AO_count = 0,
            AI_count = 2,
            Color = 'Lime',
            },

    [ 17 ] = {
            n = 496,
            name = '750-496',
            description = '8-Channel Analog Input Module 4-20 mA',
            addressSpaceType = 4,
            typeName = 'Аналоговый вход',
            groupName = '750-400',
            channelClamps = {1, 2, 3, 4, 5, 6, 7, 8},
            channelAddressesIn = {-1, 0, 1, 2, 3, 4, 5, 6, 7, -1, -1, -1, -1,
                            -1, -1, -1, -1},
            channelAddressesOut = { },
            DO_count = 0,
            DI_count = 0,
            AO_count = 0,
            AI_count = 8,
            Color = 'Lime',
            },

    [ 18 ] = {
            n = 655,
            name = '750-655',
            description = 'AS-Interface Master',
            addressSpaceType = 5,
            typeName = 'AS-интерфейс мастер',
            groupName = '750-600',
            channelClamps = {3},
            channelAddressesIn = {-1, -1, -1, 0, -1, -1, -1, -1, -1},
            channelAddressesOut = {-1, -1, -1, 0, -1, -1, -1, -1, -1},
            DO_count = 0,
            DI_count = 0,
            AO_count = 20,
            AI_count = 20,
            Color = 'Gray',
            },

    [ 19 ] = {
            n = 657,
            name = '750-657',
            description = 'IO-Link Master',
            addressSpaceType = 5,
            typeName = 'AS-интерфейс мастер',
            groupName = '750-600',
            channelClamps = {1, 6, 9, 14},
            channelAddressesIn = {-1, 0, -1, -1, -1, -1, 1, -1, -1, 2, -1,
                            -1, -1, -1, 3, -1, -1},
            channelAddressesOut = {-1, 0, -1, -1, -1, -1, 1, -1, -1, 2, -1, -1,
                            -1, -1, 3, -1, -1},
            DO_count = 0,
            DI_count = 0,
            AO_count = 12,
            AI_count = 12,
            Color = 'Gray',
            },

    [ 20 ] = {
            n = 600,
            name = '750-600',
            description = 'End Module',
            addressSpaceType = 0,
            typeName = 'Терминатор',
            groupName = '750-600',
            channelClamps = { },
            channelAddressesIn = { },
            channelAddressesOut = { },
            DO_count = 0,
            DI_count = 0,
            AO_count = 0,
            AI_count = 0,
            Color = 'Gray',
            },

    [ 21 ] = {
            n = 602,
            name = '750-602',
            description = 'Supply Module DC 24 V / AC/DC 230 V',
            addressSpaceType = 0,
            typeName = 'Питание',
            groupName = '750-600',
            channelClamps = { },
            channelAddressesIn = { },
            channelAddressesOut = { },
            DO_count = 0,
            DI_count = 0,
            AO_count = 0,
            AI_count = 0,
            Color = 'Gray',
            },

    [ 22 ] = {
            n = 612,
            name = '750-612',
            description = 'Supply Module 24 V DC / 230 V AC/DC',
            addressSpaceType = 0,
            typeName = 'Питание',
            groupName = '750-600',
            channelClamps = { },
            channelAddressesIn = { },
            channelAddressesOut = { },
            DO_count = 0,
            DI_count = 0,
            AO_count = 0,
            AI_count = 0,
            Color = 'Gray',
            },

    [ 23 ] = {
            n = 627,
            name = '750-627',
            description = 'Internal Data Bus Extension End Module',
            addressSpaceType = 0,
            typeName = 'Расширение шины',
            groupName = '750-600',
            channelClamps = { },
            channelAddressesIn = { },
            channelAddressesOut = { },
            DO_count = 0,
            DI_count = 0,
            AO_count = 0,
            AI_count = 0,
            Color = 'Gray',
            },

    [ 24 ] = {
            n = 628,
            name = '750-628',
            description = 'Internal Data Bus Extension Coupler Module',
            addressSpaceType = 0,
            typeName = 'Расширение шины',
            groupName = '750-600',
            channelClamps = { },
            channelAddressesIn = { },
            channelAddressesOut = { },
            DO_count = 0,
            DI_count = 0,
            AO_count = 0,
            AI_count = 0,
            Color = 'Gray',
            },

    [ 25 ] = {
            n = 491,
            name = '750-491',
            description = '1-channel Resistance measuring bridge',
            addressSpaceType = 4,
            typeName = 'Аналоговый вход',
            groupName = '750-400',
            channelClamps = {1, 5},
            channelAddressesIn = {-1, 0, -1, -1, -1, 1, -1, -1, -1},
            channelAddressesOut = { },
            DO_count = 0,
            DI_count = 0,
            AO_count = 0,
            AI_count = 2,
            Color = 'Gray',
            },

    [ 26 ] = {
            n = 1027843,
            name = 'AXL F IOL8 2H',
            description = 'IO-Link Master',
            addressSpaceType = 7,
            typeName = 'IO-Link Master',
            groupName = 'AXL F',
            channelClamps = {30, 31, 32, 33, 70, 71, 72, 73},
            channelAddressesIn = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, 4, 5, 6, 7},
            channelAddressesOut = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, 4, 5, 6, 7},
            DO_count = 512,
            DI_count = 512,
            AO_count = 32,
            AI_count = 32,
            Color = 'Orange',
            },

    [ 27 ] = {
            n = 2701916, -- Big Endian bytes sequence
            name = 'AXL F DI8/1 DO8/1 1H',
            description = '8-channel Digital I/O module 24V DC, 1-wire',
            addressSpaceType = 6,
            typeName = 'Цифровой вход/выход',
            groupName = 'AXL F',
            channelClamps = {00, 01, 02, 03, 10, 11, 12, 13, 20, 21, 22, 23,
                            30, 31, 32, 33},
            channelAddressesIn = {8, 9, -1, -1, -1, -1, -1, -1, -1, -1, 10, 11,
                            -1, -1, -1, -1, -1, -1, -1, -1, 12, 13, -1, -1, -1,
                            -1, -1, -1, -1, -1, 14, 15, -1, -1},
            channelAddressesOut = {-1, -1, 8, 9, -1, -1, -1, -1, -1, -1, -1, -1,
                            10, 11, -1, -1, -1, -1, -1, -1, -1, -1, 12, 13, -1,
                            -1, -1, -1, -1, -1, -1, -1, 14, 15},
            DO_count = 16,
            DI_count = 16,
            AO_count = 1,
            AI_count = 1,
            Color = 'Violet',
            },

    [ 28 ] = {
            n = 2702071, -- Big Endian bytes sequence
            name = 'AXL F DI8/3 DO8/3 2H',
            description = '8-channel Digital I/O Module 24V DC, 3-wire',
            addressSpaceType = 6,
            typeName = 'Цифровой вход/выход',
            groupName = 'AXL F',
            channelClamps = {00, 01, 02, 03, 20, 21, 22, 23, 40, 41, 42,
                            43, 60, 61, 62, 63},
            channelAddressesIn = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, 8, 9, 10, 11, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 12, 13, 14,
                            15, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1},
            channelAddressesOut = {8, 9, 10, 11, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, 12, 13, 14, 15,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1},
            DO_count = 16,
            DI_count = 16,
            AO_count = 1,
            AI_count = 1,
            Color = 'Violet',
            },

    [ 29 ] = {
            n = 2688491,
            name = 'AXL F AI4 I 1H',
            description = '4-channel Analog Input Module',
            addressSpaceType = 4,
            typeName = 'Аналоговый вход',
            groupName = 'AXL F',
            channelClamps = {00, 01, 02, 03},
            channelAddressesIn = {0, 1, 2, 3, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1},
            channelAddressesOut = { },
            DO_count = 64,
            DI_count = 64,
            AO_count = 4,
            AI_count = 4,
            Color = 'Green',
            },

    [ 30 ] = {
            n = 2688527,
            name = 'AXL F AO4 1H',
            description = '4-channel Analog Output Module',
            addressSpaceType = 3,
            typeName = 'Аналоговый выход',
            groupName = 'AXL F',
            channelClamps = {10, 11, 12, 13},
            channelAddressesIn = { },
            channelAddressesOut = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0,
                            1, 2, 3, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1},
            DO_count = 64,
            DI_count = 64,
            AO_count = 4,
            AI_count = 4,
            Color = 'Yellow',
            },

    [ 31 ] = {
            n = 2688048,
            name = 'AXL F DO16/3 2F',
            description = '16-channel Digital Output Module',
            addressSpaceType = 1,
            typeName = 'Цифровой выход',
            groupName = 'AXL F',
            channelClamps = { 00, 01, 02, 03, 04, 05, 06, 07, 40, 41, 42,
                            43, 44, 45, 46, 47},
            channelAddressesIn = { },
            channelAddressesOut = {0, 1, 2, 3, 4, 5, 6, 7, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, 8, 9, 10, 11, 12, 13, 14, 15, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1},
            DO_count = 16,
            DI_count = 16,
            AO_count = 1,
            AI_count = 1,
            Color = 'Red',
            },

    [ 32 ] = {
            n = 2688556,
            name = 'AXL F RTD4 1H',
            description = '4-channel Analog Input Module for RTDs',
            addressSpaceType = 4,
            typeName = 'Аналоговый вход',
            groupName = 'AXL F',
            channelClamps = { 00, 01, 02, 03},
            channelAddressesIn = {0, 1, 2, 3, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1},
            channelAddressesOut = { },
            DO_count = 64,
            DI_count = 64,
            AO_count = 4,
            AI_count = 4,
            Color = 'Green',
            },

    [ 33 ] = {
            n = 2688022,
            name = 'AXL F DI16/4 2F',
            description = '16-channel Digital Input Module 24V DC',
            addressSpaceType = 2,
            typeName = 'Цифровой вход',
            groupName = 'AXL F',
            channelClamps = {00, 01, 02, 03, 04, 05, 06, 07, 40, 41, 42, 43,
                            44, 45, 46, 47},
            channelAddressesIn = {0, 1, 2, 3, 4, 5, 6, 7, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, 8, 9, 10, 11, 12, 13, 14, 15, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1,	-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1},
            channelAddressesOut = { },
            DO_count = 16,
            DI_count = 16,
            AO_count = 1,
            AI_count = 1,
            Color = 'Red',
            },

    [ 34 ] = {
            n = 2688093,
            name = 'AXL F CNT2 INC2 1F',
            description = '2-Channel Up/Down Counter, 24V DC',
            addressSpaceType = 4,
            typeName = 'Счетчик',
            groupName = 'AXL F',
            channelClamps = {00, 04},
            channelAddressesIn = {3, -1, -1, -1, 5, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1},
            channelAddressesOut = { },
            DO_count = 224,
            DI_count = 224,
            AO_count = 14,
            AI_count = 14,
            Color = 'Orange',
            },

    [ 35 ] = {
            n = 1088127,
            name = 'AXL SE DI16/1',
            description = '16-Channel digital input',
            addressSpaceType = 2,
            typeName = 'Цифровой вход',
            groupName = 'AXL SE',
            channelClamps = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14,
                            15},
            channelAddressesIn = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12,
                            13, 14, 15},
            channelAddressesOut = { },
            DO_count = 16,
            DI_count = 16,
            AO_count = 1,
            AI_count = 1,
            Color = 'Red',
            },

    [ 36 ] = {
            n = 1088129,
            name = 'AXL SE DO16/1',
            description = '16-Channel digital input',
            addressSpaceType = 1,
            typeName = 'Цифровой выход',
            groupName = 'AXL SE',
            channelClamps = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14,
                            15},
            channelAddressesIn = { },
            channelAddressesOut = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12,
                            13, 14, 15},
            DO_count = 16,
            DI_count = 16,
            AO_count = 1,
            AI_count = 1,
            Color = 'Red',
            },

    [ 37 ] = {
            n = 1088062,
            name = 'AXL SE AI4 I 4-20',
            description = '4-Channel analog input',
            addressSpaceType = 4,
            typeName = 'Аналоговый вход',
            groupName = 'AXL SE',
            channelClamps = {0, 2, 4, 6},
            channelAddressesIn = {0, -1, 1, -1, 2, -1, 3, -1},
            channelAddressesOut = { },
            DO_count = 64,
            DI_count = 64,
            AO_count = 4,
            AI_count = 4,
            Color = 'Green',
            },

    [ 38 ] = {
            n = 1088123,
            name = 'AXL SE AO4 I 4-20',
            description = '4-Channel analog output',
            addressSpaceType = 3,
            typeName = 'Аналоговый выход',
            groupName = 'AXL SE',
            channelClamps = {0, 2, 4, 6},
            channelAddressesIn = { },
            channelAddressesOut = {0, -1, 1, -1, 2, -1, 3, -1},
            DO_count = 64,
            DI_count = 64,
            AO_count = 4,
            AI_count = 4,
            Color = 'Yellow',
            },

    [ 39 ] = {
            n = 1088106,
            name = 'AXL SE RTD4 PT100',
            description = '4-channel Analog Input Module for RTDs',
            addressSpaceType = 4,
            typeName = 'Аналоговый вход',
            groupName = 'AXL SE',
            channelClamps = {0, 4, 8, 12},
            channelAddressesIn = {0, -1, -1, -1, 1, -1, -1, -1, 2, -1, -1, -1,
                            3, -1, -1, -1},
            channelAddressesOut = { },
            DO_count = 64,
            DI_count = 64,
            AO_count = 4,
            AI_count = 4,
            Color = 'Green',
            },

    [ 40 ] = {
            n = 1088132,
            name = 'AXL SE IOL4',
            description = 'IO-Link Master',
            addressSpaceType = 7,
            typeName = 'IO-Link Master',
            groupName = 'AXL SE',
            channelClamps = {0, 4, 8, 12},
            channelAddressesIn = {0, -1, -1, -1, 1, -1, -1, -1, 2, -1, -1, -1,
                            3, -1, -1, -1},
            channelAddressesOut = {0, -1, -1, -1, 1, -1, -1, -1, 2, -1, -1, -1,
                            3, -1, -1, -1},
            DO_count = 512,
            DI_count = 512,
            AO_count = 32,
            AI_count = 32,
            Color = 'Orange',
            },

    [ 41 ] = {
            n = 1088131, -- Сдвиг в 2 слова для входа (Low word)
            name = 'AXL SE CNT1',
            description = '1-Channel Up/Down Counter',
            addressSpaceType = 4,
            typeName = 'Счетчик',
            groupName = 'AXL SE',
            channelClamps = {0},
            channelAddressesIn = {2, -1, -1, -1, -1, -1, -1, -1},
            channelAddressesOut = { },
            DO_count = 48,
            DI_count = 48,
            AO_count = 3,
            AI_count = 3,
            Color = 'Orange',
            },

    [ 42 ] = {
            n = 1088134,
            name = 'AXL SE SC-A',
            description = 'Stub Module',
            addressSpaceType = 0,
            typeName = 'Заглушка',
            groupName = 'AXL SE',
            channelClamps = { },
            channelAddressesIn = { },
            channelAddressesOut = { },
            DO_count = 0,
            DI_count = 0,
            AO_count = 0,
            AI_count = 0,
            Color = 'Gray',
            },

    [ 43 ] = {
            n = 2702072,
            name = 'AXL F AI2 AO2 1H',
            description = '2-Channel analog input 2-Channel analog output',
            addressSpaceType = 5,
            typeName = 'Аналоговый вход/выход',
            groupName = 'AXL F',
            channelClamps = {0, 1, 2, 3},
            channelAddressesIn = {0, 1, -1, -1},
            channelAddressesOut = {-1,-1, 0, 1},
            DO_count = 32,
            DI_count = 32,
            AO_count = 2,
            AI_count = 2,
            Color = 'Green',
            },

    [ 44 ] = {
            n = 2688666,
            name = 'AXL F RS UNI 1H',
            description = 'Axioline F XC, communication module,'..
                          'interface: RS-232, RS-485, RS-422',
            addressSpaceType = 5,
            typeName = 'Коммуникационный модуль',
            groupName = 'AXL F',
            channelClamps = {02},
            channelAddressesIn = {-1,-1,0,-1,-1,-1,-1,-1,-1,-1,
                                  -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
                                  -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
                                  -1,-1,-1,-1},
            channelAddressesOut = {-1,-1,0,-1,-1,-1,-1,-1,-1,-1,
                                  -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
                                  -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
                                  -1,-1,-1,-1},
            DO_count = 0,
            DI_count = 0,
            AO_count = 10,
            AI_count = 10,
            Color = 'Gray',
            },

    [ 45 ] = {
            n = 1088126,
            name = 'AXL SE AO4 U 0-10',
            description = '4-Channel analog output',
            addressSpaceType = 3,
            typeName = 'Аналоговый выход',
            groupName = 'AXL SE',
            channelClamps = {0, 2, 4, 6},
            channelAddressesIn = { },
            channelAddressesOut = {0, -1, 1, -1, 2, -1, 3, -1},
            DO_count = 0,
            DI_count = 0,
            AO_count = 4,
            AI_count = 0,
            Color = 'Orange',
            },
    }

return io_modules
