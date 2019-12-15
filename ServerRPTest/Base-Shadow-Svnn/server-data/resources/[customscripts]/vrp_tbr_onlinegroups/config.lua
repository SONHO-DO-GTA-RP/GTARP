cfg = {}

--Refresh interval in seconds
--anything from 1 to 5 is probably fine
cfg.refresh_interval = 1

--Translation table
cfg.lang = {
	online = "Players Online",
	still_loading = "Loading list...<br>Try again in a few seconds"
	--Carregando lista...<br>Tente novamente em alguns segundos
}

--The key that will activate the function
--Default key is [HOME]
--https://docs.fivem.net/game-references/controls/
cfg.key = {
	input_group = 1,
	control_index = 213
}

--The groups to show to the players in the following format:
--[DISPLAY NAME] = {vRP GROUPS LIST}
cfg.groups = {
    ["Policia Militar"] = {
        "police-recruit",
        "police-sergeant",
        "police-lieutenant",
      },
    ["Paramédico"] = {
	    "samu-paramedico",
		"samu-medico",
        "samu-diretor",
    },
    ["Mecânico"] = {"mechanic"},
    ["Taxi"] = {"taxi"},
    ["Admin"] = {"admin"},
}