Config = {}


Config.framework = "network" -- vrpex, network, creativev4, creativev5 ou extended
Config.Mysql = "oxmysql" -- mysql-async ou oxmysql
Config.webhook = ""

Config.Craft = {
        -- [1] = {coords = vector3(2306.89, 4881.82, 41.8082), perm = "admin.permissao", category = "weapon"},
        -- [2] = {coords = vector3(2314.16, 4888.55, 41.81), perm = "ammo.permissao", category = "contrabando"},
        -- [3] = {coords = vector3(4242.16, 4888.55, 41.81), perm = "desmanche.permissao", category = "desmanche"},
        -- [4] = {coords = vector3(4241.16, 4888.55, 41.81), perm = "ammo.permissao", category = "ammo"},

    [1] = {coords = vector3(2305.18,4879.97,41.8), perm = "Admin", category = "weapon"}, --CREATIVE / NETWORK
    [2] = {coords = vector3(-3281.39,580.44,6.13), perm = "Admin", category = "drogas"}, --CREATIVE / NETWORK
    [3] = {coords = vector3(1403.87,1150.42,114.33), perm = "Admin", category = "ammo"}, --CREATIVE / NETWORK
    [4] = {coords = vector3(93.53,-1295.48,29.32), perm = "Vanilla", category = "contrabando"}, --CREATIVE / NETWORK
    [5] = {coords = vector3(-1576.29,2978.87,43.37), perm = "Muamba", category = "contrabando"}, --CREATIVE / NETWORK  -- MODIFICAR
    [6] = {coords = vector3(2224.66,5103.75,50.67), perm = "Makiavek", category = "weapon"}, --CREATIVE / NETWORK
    -- [7] = {coords = vector3(-3281.39,580.44,6.13), perm = "Admin", category = "drogas"}, --CREATIVE / NETWORK -- MODIFICAR



  
    --- [1] = {coords = vector3(2306.89, 4881.82, 41.8082), perm = "admin.permissao", category = "weapon"}, VRPEX
}

Config.Categories = {
    {
        name = "weapon", -- CATEGORIA
        label = "Todos", -- NOME DA CATEGORIA NA FABRICAÇÃO
        
        sub = {
            { name = "weapon", label = "Todos" },
            { name = "pistol", label = "Pistola" },
            { name = "subs", label = "Sub" },
            { name = "rifles", label = "Rifle" },
             { name = "especiais", label = "Especiais" },
        }
    },
    {
        name = "ammo",
        label = "Munição",
        sub = {
            { name = "ammo", label = "Munição" },
        }
    },
    {
        name = "contrabando", -- CATEGORIA
        label = "Todos", -- NOME DA CATEGORIA NA FABRICAÇÃO

        sub = {
            { name = "contrabando", label = "Todos" },
            { name = "roubo", label = "Roubo" },
            { name = "diversos", label = "Diversos" },
        }
    },
    {
        name = "contrabando2", -- CATEGORIA
        label = "Todos", -- NOME DA CATEGORIA NA FABRICAÇÃO

        sub = {
            { name = "contrabando2", label = "Todos" },
        }
    },
    {
        name = "desmanche", --- CATEGORIA
        label = "Todos", -- NOME DA CATEGORIA NA FABRICAÇÃO
    },
    {
        name = "drogas",
        label = "Drogas",
        sub = {
            { name = "drogas", label = "Drogas" },
        }
    },
}

Config.CraftItem = {
    {
        itemName = 'WEAPON_SNSPISTOL',
        itemLabel = 'HK',
        minute = 1,
        level = 0,
        xp = 10,
        qtd = 1,
        category = 'weapon',
        subcategory = 'pistol',
        required = {
            -- { label = 'water', name = "water", amount = 1}, -- Imagem dos itens são na pasta (itemimages)
            { label = 'Placa', name = "placademetal", amount = 1},
            { label = 'Ferro', name = "ferro", amount = 1},
            { label = 'Mola', name = "mola", amount = 1},
        },
        imagesname = 'SNS-Pistol-Big',
    },
    {
        itemName = 'WEAPON_PISTOL_MK2',
        itemLabel = 'FIVE',
        minute = 2,
        level = 0,
        xp = 15,
        qtd = 1,
        category = 'weapon',
        subcategory = 'pistol',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 4},
            { label = 'Placa', name = "placademetal", amount = 2},
            { label = 'Ferro', name = "ferro", amount = 2},
            { label = 'Mola', name = "mola", amount = 3},
        },
        imagesname = 'Pistol-MK-II-Big',
    },
    {
        itemName = 'WEAPON_MACHINEPISTOL',
        itemLabel = 'TEC-9',
        minute = 3 ,
        level = 1,
        xp = 20,
        qtd = 1,
        category = 'weapon',
        subcategory = 'subs',
        required = {
            { label = 'Agua', name = "agua", amount = 1}, -- Imagem dos itens são na pasta (itemimages)
            { label = 'Placa', name = "placademetal", amount = 1},
            { label = 'Ferro', name = "ferro", amount = 1},
            { label = 'Mola', name = "mola", amount = 1},
        },
        imagesname = 'Machine-Pistol-Big',
    },
    {
        itemName = 'WEAPON_MINISMG',
        itemLabel = 'ŠKORP',
        minute = 3,
        level = 1,
        xp = 25,
        qtd = 1,
        category = 'weapon',
        subcategory = 'subs',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 5},
            { label = 'Placa', name = "placademetal", amount = 5},
            { label = 'Ferro', name = "ferro", amount = 5},
            { label = 'Mola', name = "mola", amount = 5},
        },
        imagesname = 'Mini-SMG-Big',
    },
    {
        itemName = 'WEAPON_MICROSMG',
        itemLabel = 'UZI',
        minute = 4,
        level = 1,
        xp = 25,
        qtd = 1,
        category = 'weapon',
        subcategory = 'subs',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 8},
            { label = 'Placa', name = "placademetal", amount = 8},
            { label = 'Ferro', name = "ferro", amount = 8},
            { label = 'Mola', name = "mola", amount = 8},
        },
        imagesname = 'Micro-SMG-Big',
    },
    {
        itemName = 'WEAPON_GUSENBERG',
        itemLabel = 'TOMPSON',
        minute = 4,
        level = 2,
        xp = 30,
        qtd = 1,
        category = 'weapon',
        subcategory = 'subs',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 10},
            { label = 'Placa', name = "placademetal", amount = 10},
            { label = 'Ferro', name = "ferro", amount = 10},
            { label = 'Mola', name = "mola", amount = 10},
        },
        imagesname = 'Gusenberg-Sweeper-Big',
    },
    {
        itemName = 'WEAPON_BULLPUPRIFLE',
        itemLabel = 'FAMAS',
        minute = 5,
        level = 2,
        xp = 35,
        qtd = 1,
        category = 'weapon',
        subcategory = 'rifles',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 12},
            { label = 'Placa', name = "placademetal", amount = 12},
            { label = 'Ferro', name = "ferro", amount = 12},
            { label = 'Mola', name = "mola", amount = 12},
        },
        imagesname = 'Bullpup-Rifle-Big',
    },
    {
        itemName = 'WEAPON_ASSAULTRIFLE_MK2',
        itemLabel = 'AK-47',
        minute = 6,
        level = 3,
        xp = 40,
        qtd = 1,
        category = 'weapon',
        subcategory = 'rifles',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 16},
            { label = 'Placa', name = "placademetal", amount = 16},
            { label = 'Ferro', name = "ferro", amount = 16},
            { label = 'Mola', name = "mola", amount = 16},
        },
        imagesname = 'Assault-Rifle-MK-II-Big',
    },
    {
        itemName = 'WEAPON_SPECIALCARBINE_MK2',
        itemLabel = 'G36',
        minute = 7,
        level = 3,
        xp = 40,
        qtd = 1,
        category = 'weapon',
        subcategory = 'rifles',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 16},
            { label = 'Placa', name = "placademetal", amount = 16},
            { label = 'Ferro', name = "ferro", amount = 16},
            { label = 'Mola', name = "mola", amount = 16},
        },
        imagesname = 'Special-Carbine-MK-II-Big',
        -- ---------------------------------------------------------------
    },
    {
        itemName = 'pastabase',
        itemLabel = 'Pasta Base Cocaine',
        minute = 4,
        level = 0,
        xp = 25,
        qtd = 1,
        category = 'drogas',
        subcategory = 'drogas',
        required = {
            { label = 'Folha', name = "cokeleaf", amount = 2},
            { label = 'Ácido', name = "sulfuric", amount = 1},
        },
        imagesname = 'pastabase',
   },
    {
        itemName = 'tijolomaconha',
        itemLabel = 'Tijolo de Maconha',
        minute = 4,
        level = 0,
        xp = 25,
        qtd = 1,
        category = 'drogas',
        subcategory = 'drogas',
        required = {
            { label = 'Pano', name = "pano", amount = 10},
            { label = 'Placa', name = "placademetal", amount = 5},
            { label = 'Ferro', name = "ferro", amount = 5},
            { label = 'Fibra', name = "fibra", amount = 10},
        },
        imagesname = 'tijolomaconha',
    },
    {
        itemName = 'haxixe',
        itemLabel = 'Haxixe',
        minute = 7,
        level = 0,
        xp = 30,
        qtd = 1,
        category = 'drogas',
        subcategory = 'drogas',
        required = {
            { label = 'Plastico', name = "plastico", amount = 5},
            { label = 'Placa', name = "placademetal", amount = 10},
            { label = 'Ferro', name = "ferro", amount = 10},
            { label = 'Borracha', name = "borracha", amount = 5},
        },
        imagesname = 'haxixe',
    },
    {
        itemName = 'morfina',
        itemLabel = 'Morfina',
        minute = 7,
        level = 1,
        xp = 40,
        qtd = 1,
        category = 'drogas',
        subcategory = 'drogas',
        required = {
            { label = 'Vidro', name = "vidro", amount = 5},
            { label = 'Placa', name = "placademetal", amount = 2},
            { label = 'Ferro', name = "ferro", amount = 2},
            { label = 'Tinta', name = "tinta", amount = 5},
        },
        imagesname = 'morfina',
    },
    {
        itemName = 'respingo',
        itemLabel = 'Respingo de Solda',
        minute = 6,
        level = 1,
        xp = 40,
        qtd = 1,
        category = 'drogas',
        subcategory = 'drogas',
        required = {
            { label = 'Vidro', name = "vidro", amount = 5},
            { label = 'Placa', name = "placademetal", amount = 5},
            { label = 'Ferro', name = "ferro", amount = 5},
            { label = 'Eletronico', name = "kiteletronico", amount = 10},
        },
        imagesname = 'respingo',
    },
    {
        itemName = 'tijolomaconha',
        itemLabel = 'Tijolo de Maconha',
        minute = 5,
        level = 2,
        xp = 40,
        qtd = 1,
        category = 'drogas',
        subcategory = 'drogas',
        required = {
            { label = 'Pano', name = "pano", amount = 10},
            { label = 'Fibra', name = "fibra", amount = 10},
        },
        imagesname = 'tijolomaconha',
            },
    {
        itemName = 'meth',
        itemLabel = 'Metanfetamina',
        minute = 5,
        level = 2,
        xp = 40,
        qtd = 1,
        category = 'drogas',
        subcategory = 'drogas',
        required = {
            { label = 'Salina', name = "saline", amount = 1},
            { label = 'Acetona', name = "acetone", amount = 1},
        },
        imagesname = 'meth',
        },
    {
        itemName = 'codeine',
        itemLabel = 'Codeína',
        minute = 5,
        level = 2,
        xp = 40,
        qtd = 1,
        category = 'drogas',
        subcategory = 'drogas',
        required = {
            { label = 'Vidro', name = "vidro", amount = 5},
            { label = 'Tinta', name = "tinta", amount = 2},
            { label = 'Água', name = "agua", amount = 2},
        },
        imagesname = 'codeine',
    },
    {
        itemName = 'joint',
        itemLabel = 'Baseado',
        minute = 2,
        level = 0,
        xp = 15,
        qtd = 2,
        category = 'drogas',
        subcategory = 'drogas',
        required = {
            { label = 'Seda', name = "silk", amount = 1},
            { label = 'Folha', name = "weedleaf", amount = 1},
        },
        imagesname = 'weed_pooch',
    },
    {
        itemName = 'cocaine',
        itemLabel = 'Cocaína',
        minute = 3,
        level = 1,
        xp = 20,
        qtd = 2,
        category = 'drogas',
        subcategory = 'drogas',
        required = {
            { label = 'Ácido', name = "sulfuric", amount = 1},
            { label = 'Folha', name = "cokeleaf", amount = 1},
        },
        imagesname = 'cocaine',
    },
         -- ---------------------------------------------------------------
    {
        itemName = 'Alicate',
        itemLabel = 'Alicate',
        minute = 4,
        level = 0,
        xp = 25,
        qtd = 1,
        category = 'desmanche',
        subcategory = 'desmanche',
        required = {
            { label = 'Metal', name = "placademetal", amount = 2},
            { label = 'Borracha', name = "rubber", amount = 1},
        },
        imagesname = 'alicate',
   },
    {
        itemName = 'Rastreador',
        itemLabel = 'Rastreador',
        minute = 4,
        level = 0,
        xp = 25,
        qtd = 1,
        category = 'desmanche',
        subcategory = 'desmanche',
        required = {
            { label = 'Pano', name = "pano", amount = 10},
            { label = 'Leds', name = "leds", amount = 5},
        },
        imagesname = 'Rastreador',
    },
    {
        itemName = 'Macarico',
        itemLabel = 'Macarico',
        minute = 7,
        level = 0,
        xp = 30,
        qtd = 1,
        category = 'desmanche',
        subcategory = 'desmanche',
        required = {
            { label = 'Caneta', name = "macarico", amount = 5},
            { label = 'Cilindro', name = "cilindro", amount = 10},
        },
        imagesname = 'Macarico',
    },
    {
        itemName = 'morfina',
        itemLabel = 'Morfina',
        minute = 7,
        level = 1,
        xp = 40,
        qtd = 1,
        category = 'drogas',
        subcategory = 'drogas',
        required = {
            { label = 'Vidro', name = "vidro", amount = 5},
            { label = 'Placa', name = "placademetal", amount = 2},
            { label = 'Ferro', name = "ferro", amount = 2},
            { label = 'Tinta', name = "tinta", amount = 5},
        },
        imagesname = 'morfina',
    },
    {
        itemName = 'respingo',
        itemLabel = 'Respingo de Solda',
        minute = 6,
        level = 1,
        xp = 40,
        qtd = 1,
        category = 'drogas',
        subcategory = 'drogas',
        required = {
            { label = 'Vidro', name = "vidro", amount = 5},
            { label = 'Placa', name = "placademetal", amount = 5},
            { label = 'Ferro', name = "ferro", amount = 5},
            { label = 'Eletronico', name = "kiteletronico", amount = 10},
        },
        imagesname = 'respingo',
    },
    {
        itemName = 'tijolomaconha',
        itemLabel = 'Tijolo de Maconha',
        minute = 5,
        level = 2,
        xp = 40,
        qtd = 1,
        category = 'drogas',
        subcategory = 'drogas',
        required = {
            { label = 'Pano', name = "pano", amount = 10},
            { label = 'Fibra', name = "fibra", amount = 10},
        },
        imagesname = 'tijolomaconha',
            },
    {
        itemName = 'meth',
        itemLabel = 'Metanfetamina',
        minute = 5,
        level = 2,
        xp = 40,
        qtd = 1,
        category = 'drogas',
        subcategory = 'drogas',
        required = {
            { label = 'Salina', name = "saline", amount = 1},
            { label = 'Acetona', name = "acetone", amount = 1},
        },
        imagesname = 'meth',
        },
    {
        itemName = 'codeine',
        itemLabel = 'Codeína',
        minute = 5,
        level = 2,
        xp = 40,
        qtd = 1,
        category = 'drogas',
        subcategory = 'drogas',
        required = {
            { label = 'Vidro', name = "vidro", amount = 5},
            { label = 'Tinta', name = "tinta", amount = 2},
            { label = 'Água', name = "agua", amount = 2},
        },
        imagesname = 'codeine',
    },
    {
        itemName = 'joint',
        itemLabel = 'Baseado',
        minute = 2,
        level = 0,
        xp = 15,
        qtd = 2,
        category = 'drogas',
        subcategory = 'drogas',
        required = {
            { label = 'Seda', name = "silk", amount = 1},
            { label = 'Folha', name = "weedleaf", amount = 1},
        },
        imagesname = 'weed_pooch',
    },
    {
        itemName = 'cocaine',
        itemLabel = 'Cocaína',
        minute = 3,
        level = 1,
        xp = 20,
        qtd = 2,
        category = 'drogas',
        subcategory = 'drogas',
        required = {
            { label = 'Ácido', name = "sulfuric", amount = 1},
            { label = 'Folha', name = "cokeleaf", amount = 1},
        },
        imagesname = 'cocaine',
            },
    -- ------------------------------------------------------------------------------
    -- ------------------------------------------------------------------------------

    {
        itemName = 'colete',
        itemLabel = 'COLETE',
        minute = 4,
        level = 0,
        xp = 25,
        qtd = 1,
        category = 'contrabando',
        subcategory = 'roubo',
        required = {
            { label = 'Pano', name = "pano", amount = 10},
            { label = 'Placa', name = "placademetal", amount = 5},
            { label = 'Ferro', name = "ferro", amount = 5},
            { label = 'Fibra', name = "fibra", amount = 10},
        },
        imagesname = 'colete2',
    },
    {
        itemName = 'algema',
        itemLabel = 'ALGEMA',
        minute = 7,
        level = 0,
        xp = 30,
        qtd = 1,
        category = 'contrabando',
        subcategory = 'roubo',
        required = {
            { label = 'Plastico', name = "plastico", amount = 5},
            { label = 'Placa', name = "placademetal", amount = 10},
            { label = 'Ferro', name = "ferro", amount = 10},
            { label = 'Borracha', name = "borracha", amount = 5},
        },
        imagesname = 'algema2',
    },
    {
        itemName = 'attachs',
        itemLabel = 'ATTACHS',
        minute = 7,
        level = 1,
        xp = 40,
        qtd = 1,
        category = 'contrabando',
        subcategory = 'diversos',
        required = {
            { label = 'Vidro', name = "vidro", amount = 5},
            { label = 'Placa', name = "placademetal", amount = 2},
            { label = 'Ferro', name = "ferro", amount = 2},
            { label = 'Tinta', name = "tinta", amount = 5},
        },
        imagesname = 'attachs2',
    },
    {
        itemName = 'c4',
        itemLabel = 'C4',
        minute = 6,
        level = 1,
        xp = 40,
        qtd = 1,
        category = 'contrabando',
        subcategory = 'roubo',
        required = {
            { label = 'Vidro', name = "vidro", amount = 5},
            { label = 'Placa', name = "placademetal", amount = 5},
            { label = 'Ferro', name = "ferro", amount = 5},
            { label = 'Eletronico', name = "kiteletronico", amount = 10},
        },
        imagesname = 'c42',
    },
    {
        itemName = 'capuz',
        itemLabel = 'CAPUZ',
        minute = 5,
        level = 2,
        xp = 40,
        qtd = 1,
        category = 'contrabando',
        subcategory = 'roubo',
        required = {
            { label = 'Pano', name = "pano", amount = 10},
            { label = 'Fibra', name = "fibra", amount = 10},
        },
        imagesname = 'capuz2',
    },
    {
        itemName = 'pendrive',
        itemLabel = 'PENDRIVE',
        minute = 7,
        level = 2,
        xp = 40,
        qtd = 1,
        category = 'contrabando',
        subcategory = 'diversos',
        required = {
            { label = 'Plastico', name = "plastico", amount = 15},
            { label = 'Borracha', name = "borracha", amount = 10},
            { label = 'Eletronico', name = "kiteletronico", amount = 10},
        },
        imagesname = 'pendrive2',
          },
    ------------------------------------------------------------------------------
    ------------------------------------------------------------------------------

    {
        itemName = 'AMMO_9',
        itemLabel = 'Munição 9mm',
        minute = 1,
        level = 0,
        xp = 5,
        qtd = 30,
        category = 'ammo',
        subcategory = 'ammo',
        required = {
            { label = 'Pólvora', name = "gunpowder", amount = 2},
            { label = 'Placa', name = "placademetal", amount = 1}
        },
        imagesname = 'ammo-9-big',
    },
    {
        itemName = 'AMMO_45',
        itemLabel = '.45 Sub',
        minute = 1,
        level = 0,
        xp = 5,
        qtd = 30,
        category = 'ammo',
        subcategory = 'ammo',
        required = {
            { label = 'Pólvora', name = "gunpowder", amount = 3},
            { label = 'Placa', name = "placademetal", amount = 2}
        },
        imagesname = 'np_sub-ammo',
    },
    {
        itemName = 'AMMO_12',
        itemLabel = 'Calibre 12',
        minute = 2,
        level = 0,
        xp = 8,
        qtd = 12,
        category = 'ammo',
        subcategory = 'ammo',
        required = {
            { label = 'Pólvora', name = "gunpowder", amount = 4},
            { label = 'Placa', name = "placademetal", amount = 3},
            { label = 'Plástico', name = "plastico", amount = 1}
        },
        imagesname = 'ammo-shotgun-big',
    },
    {
        itemName = 'AMMO_556',
        itemLabel = '5.56 Rifle',
        minute = 2,
        level = 1,
        xp = 10,
        qtd = 30,
        category = 'ammo',
        subcategory = 'ammo',
        required = {
            { label = 'Pólvora', name = "gunpowder", amount = 4},
            { label = 'Placa', name = "placademetal", amount = 3},
            { label = 'Ferro', name = "ferro", amount = 2}
        },
        imagesname = 'ammo-rifle-big',
    },
    {
        itemName = 'AMMO_762',
        itemLabel = '7.62 Rifle',
        minute = 2,
        level = 1,
        xp = 12,
        qtd = 30,
        category = 'ammo',
        subcategory = 'ammo',
        required = {
            { label = 'Pólvora', name = "gunpowder", amount = 5},
            { label = 'Placa', name = "placademetal", amount = 3},
            { label = 'Ferro', name = "ferro", amount = 3}
        },
        imagesname = 'ammo-rifle-big',
    },
    {
        itemName = 'AMMO_308',
        itemLabel = '.308 Rifle',
        minute = 3,
        level = 2,
        xp = 15,
        qtd = 20,
        category = 'ammo',
        subcategory = 'ammo',
        required = {
            { label = 'Pólvora', name = "gunpowder", amount = 6},
            { label = 'Placa', name = "placademetal", amount = 4},
            { label = 'Ferro', name = "ferro", amount = 4}
        },
        imagesname = 'ammo-rifle-big',
    },
    {
        itemName = 'WEAPON_PISTOL',
        itemLabel = 'Pistola',
        minute = 2,
        level = 0,
        xp = 12,
        qtd = 1,
        category = 'weapon',
        subcategory = 'pistol',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 4},
            { label = 'Placa', name = "placademetal", amount = 2},
            { label = 'Ferro', name = "ferro", amount = 2},
            { label = 'Mola', name = "mola", amount = 2}
        },
        imagesname = 'Pistol-Big',
    },
    {
        itemName = 'WEAPON_COMBATPISTOL',
        itemLabel = 'Combat Pistol',
        minute = 3,
        level = 1,
        xp = 18,
        qtd = 1,
        category = 'weapon',
        subcategory = 'pistol',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 6},
            { label = 'Placa', name = "placademetal", amount = 3},
            { label = 'Ferro', name = "ferro", amount = 3},
            { label = 'Mola', name = "mola", amount = 3}
        },
        imagesname = 'Combat-Pistol-Big',
    },
    {
        itemName = 'WEAPON_HEAVYPISTOL',
        itemLabel = 'Heavy Pistol',
        minute = 3,
        level = 1,
        xp = 20,
        qtd = 1,
        category = 'weapon',
        subcategory = 'pistol',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 7},
            { label = 'Placa', name = "placademetal", amount = 4},
            { label = 'Ferro', name = "ferro", amount = 4},
            { label = 'Mola', name = "mola", amount = 3}
        },
        imagesname = 'Heavy-Pistol-Big',
    },
    {
        itemName = 'WEAPON_REVOLVER',
        itemLabel = 'Revolver',
        minute = 4,
        level = 1,
        xp = 25,
        qtd = 1,
        category = 'weapon',
        subcategory = 'pistol',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 8},
            { label = 'Placa', name = "placademetal", amount = 5},
            { label = 'Ferro', name = "ferro", amount = 5},
            { label = 'Mola', name = "mola", amount = 4}
        },
        imagesname = 'Heavy-Revolver-Big',
    },
    {
        itemName = 'WEAPON_SMG',
        itemLabel = 'SMG',
        minute = 4,
        level = 2,
        xp = 28,
        qtd = 1,
        category = 'weapon',
        subcategory = 'subs',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 10},
            { label = 'Placa', name = "placademetal", amount = 6},
            { label = 'Ferro', name = "ferro", amount = 6},
            { label = 'Mola', name = "mola", amount = 5}
        },
        imagesname = 'SMG-Big',
    },
    {
        itemName = 'WEAPON_ASSAULTSMG',
        itemLabel = 'Assault SMG',
        minute = 4,
        level = 2,
        xp = 30,
        qtd = 1,
        category = 'weapon',
        subcategory = 'subs',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 12},
            { label = 'Placa', name = "placademetal", amount = 6},
            { label = 'Ferro', name = "ferro", amount = 6},
            { label = 'Mola', name = "mola", amount = 6}
        },
        imagesname = 'Assault-SMG-Big',
    },
    {
        itemName = 'WEAPON_COMBATPDW',
        itemLabel = 'Combat PDW',
        minute = 4,
        level = 2,
        xp = 28,
        qtd = 1,
        category = 'weapon',
        subcategory = 'subs',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 10},
            { label = 'Placa', name = "placademetal", amount = 6},
            { label = 'Ferro', name = "ferro", amount = 6},
            { label = 'Mola', name = "mola", amount = 5}
        },
        imagesname = 'Combat-PDW-Big',
    },
    {
        itemName = 'WEAPON_CARBINERIFLE',
        itemLabel = 'Carbine Rifle',
        minute = 5,
        level = 2,
        xp = 35,
        qtd = 1,
        category = 'weapon',
        subcategory = 'rifles',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 14},
            { label = 'Placa', name = "placademetal", amount = 8},
            { label = 'Ferro', name = "ferro", amount = 8},
            { label = 'Mola', name = "mola", amount = 8}
        },
        imagesname = 'Carbine-Rifle-Big',
    },
    {
        itemName = 'WEAPON_ASSAULTRIFLE',
        itemLabel = 'Assault Rifle',
        minute = 6,
        level = 3,
        xp = 40,
        qtd = 1,
        category = 'weapon',
        subcategory = 'rifles',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 16},
            { label = 'Placa', name = "placademetal", amount = 10},
            { label = 'Ferro', name = "ferro", amount = 10},
            { label = 'Mola', name = "mola", amount = 10}
        },
        imagesname = 'Assault-Rifle-Big',
    },
    {
        itemName = 'WEAPON_SPECIALCARBINE',
        itemLabel = 'Special Carbine',
        minute = 6,
        level = 3,
        xp = 40,
        qtd = 1,
        category = 'weapon',
        subcategory = 'rifles',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 16},
            { label = 'Placa', name = "placademetal", amount = 10},
            { label = 'Ferro', name = "ferro", amount = 10},
            { label = 'Mola', name = "mola", amount = 10}
        },
        imagesname = 'Special-Carbine-Big',
    },
    {
        itemName = 'WEAPON_ADVANCEDRIFLE',
        itemLabel = 'Advanced Rifle',
        minute = 5,
        level = 2,
        xp = 35,
        qtd = 1,
        category = 'weapon',
        subcategory = 'rifles',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 14},
            { label = 'Placa', name = "placademetal", amount = 8},
            { label = 'Ferro', name = "ferro", amount = 8},
            { label = 'Mola', name = "mola", amount = 8}
        },
        imagesname = 'Advanced-Rifle-Big',
    },
    {
        itemName = 'WEAPON_COMPACTRIFLE',
        itemLabel = 'Compact Rifle',
        minute = 5,
        level = 2,
        xp = 30,
        qtd = 1,
        category = 'weapon',
        subcategory = 'rifles',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 12},
            { label = 'Placa', name = "placademetal", amount = 8},
            { label = 'Ferro', name = "ferro", amount = 8},
            { label = 'Mola', name = "mola", amount = 8}
        },
        imagesname = 'Compact-Rifle-Big',
    },
    {
        itemName = 'WEAPON_PUMPSHOTGUN',
        itemLabel = 'Pump Shotgun',
        minute = 4,
        level = 2,
        xp = 30,
        qtd = 1,
        category = 'weapon',
        subcategory = 'rifles',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 12},
            { label = 'Placa', name = "placademetal", amount = 6},
            { label = 'Ferro', name = "ferro", amount = 6},
            { label = 'Mola', name = "mola", amount = 6}
        },
        imagesname = 'Pump-Shotgun-Big',
    },
    {
        itemName = 'WEAPON_SAWNOFFSHOTGUN',
        itemLabel = 'Sawed-Off Shotgun',
        minute = 4,
        level = 2,
        xp = 28,
        qtd = 1,
        category = 'weapon',
        subcategory = 'rifles',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 10},
            { label = 'Placa', name = "placademetal", amount = 6},
            { label = 'Ferro', name = "ferro", amount = 6},
            { label = 'Mola', name = "mola", amount = 6}
        },
        imagesname = 'Sawed-off-Shotgun-Big',
    },
    {
        itemName = 'WEAPON_MUSKET',
        itemLabel = 'Musket',
        minute = 5,
        level = 2,
        xp = 35,
        qtd = 1,
        category = 'weapon',
        subcategory = 'rifles',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 12},
            { label = 'Placa', name = "placademetal", amount = 8},
            { label = 'Ferro', name = "ferro", amount = 8},
            { label = 'Mola', name = "mola", amount = 8}
        },
        imagesname = 'Musket-Big',
    },
    {
        itemName = 'WEAPON_RAILGUN',
        itemLabel = 'Railgun',
        minute = 9,
        level = 5,
        xp = 70,
        qtd = 1,
        category = 'weapon',
        subcategory = 'especiais',
        required = {
            { label = 'Placa', name = "placademetal", amount = 20},
            { label = 'Ferro', name = "ferro", amount = 20},
            { label = 'Alumínio', name = "aluminum", amount = 15},
            { label = 'Eletrônico', name = "kiteletronico", amount = 20}
        },
        imagesname = 'WEAPON_RAILGUN',
    },
    {
        itemName = 'WEAPON_GRENADELAUNCHER',
        itemLabel = 'Lança Granadas',
        minute = 7,
        level = 4,
        xp = 60,
        qtd = 1,
        category = 'weapon',
        subcategory = 'especiais',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 20},
            { label = 'Placa', name = "placademetal", amount = 15},
            { label = 'Ferro', name = "ferro", amount = 12},
            { label = 'Pólvora', name = "gunpowder", amount = 12},
            { label = 'Eletrônico', name = "kiteletronico", amount = 10},
            { label = 'Plástico', name = "plastico", amount = 8}
        },
        imagesname = 'WEAPON_GRENADELAUNCHER',
    },
    {
        itemName = 'WEAPON_RAYPISTOL',
        itemLabel = 'Ray Pistol',
        minute = 6,
        level = 3,
        xp = 45,
        qtd = 1,
        category = 'weapon',
        subcategory = 'especiais',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 10},
            { label = 'Placa', name = "placademetal", amount = 8},
            { label = 'Eletrônico', name = "kiteletronico", amount = 10},
            { label = 'Alumínio', name = "aluminum", amount = 8}
        },
        imagesname = 'WEAPON_RAYPISTOL',
    },
    {
        itemName = 'WEAPON_MINIGUN',
        itemLabel = 'Minigun',
        minute = 9,
        level = 5,
        xp = 75,
        qtd = 1,
        category = 'weapon',
        subcategory = 'especiais',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 30},
            { label = 'Placa', name = "placademetal", amount = 25},
            { label = 'Ferro', name = "ferro", amount = 20},
            { label = 'Eletrônico', name = "kiteletronico", amount = 20},
            { label = 'Plástico', name = "plastico", amount = 15}
        },
        imagesname = 'WEAPON_MINIGUN',
    },
    {
        itemName = 'WEAPON_RPG',
        itemLabel = 'Bazuca',
        minute = 8,
        level = 4,
        xp = 65,
        qtd = 1,
        category = 'weapon',
        subcategory = 'especiais',
        required = {
            { label = 'Peça', name = "pecadearma", amount = 25},
            { label = 'Placa', name = "placademetal", amount = 20},
            { label = 'Ferro', name = "ferro", amount = 15},
            { label = 'Pólvora', name = "gunpowder", amount = 15},
            { label = 'Eletrônico', name = "kiteletronico", amount = 12},
            { label = 'Plástico', name = "plastico", amount = 10}
        },
        imagesname = 'WEAPON_RPG',
    },
}

function DrawText3D(x, y, z, text)
    local onScreen,_x,_y=World3dToScreen2d(x, y, z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.3, 0.3)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 90)
end


Config.Notifications = { -- Notifications
    ["success"] = {
        message = 'Item colocado na lista.',
        type = "succes",
        time = 2500,
    },
  
    ["error"] = {
        message = 'Itens insuficientes.',
        type = "error",
        time = 2500,
    },

}
