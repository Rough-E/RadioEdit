-- resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'
fx_version 'adamant'
game 'gta5'
description 'radiostations'

local ROCk = "sounds/darksignal.mp3"
local PoP = "https://streams.ilovemusic.de/iloveradio14.mp3"
local HipNew = "https://streams.ilovemusic.de/iloveradio1.mp3"
local PUNK = "http://ebm-radio.org:9000/ebm.ogg"
local classic = "http://streaming.cuacfm.org/cuacfm.ogg"
local Cntry = "http://stream.theradio.cc:8000/trcc-stream.ogg"
local dance = "http://streaming.fueralle.org:8000/bermudafunk.ogg"
local eastls = "http://94.130.11.225:9510/stream.ogg"
local HipOld = "https://stream.nightride.fm/rektify.ogg"
local CrO = "http://amp2.cesnet.cz:8000/cro2.ogg"
local eastside = "http://46.252.154.133:8000/stream.ogg"
local daydream = "http://streams.christianindustrial.net/radio.ogg"
local country = "http://ais-sa2-dal01-1.cdnstream.com/2123_128.mp3"
local slvlake = "https://stream.nightride.fm/rekt.ogg"
local Fnk = "http://live.helsinki.at:8088/live160.ogg"
local jermain = "http://stream.fsk-hh.org:8000/fsk.ogg"
local bermuda = "http://mp3.radiox.ch:8000/standard.ogg"
local nullzwei = 0.2
local nulldrei = 0.3
local nullvier = 0.4
local dreifuenf = 0.35
local clasro = "[CLASSIC & ROCK]"
local poop80 = "[POP 80s]"
local hipho = "[HiHop]"
local pank = "[PUNK]"
local clsc = "[CLASSICS]"
local kss = "[KISS GARAGE]"

supersede_radio "RADIO_01_CLASS_ROCK" { url = ROCk, volume = nulldrei, name= "[CLASSIC & ROCK]" }
supersede_radio "RADIO_02_POP" { url = PoP, volume = nulldrei, name= "[POP 80s]" }
supersede_radio "RADIO_03_HIPHOP_NEW" { url = HipNew, volume = nulldrei, name= "[HiHop]" }
supersede_radio "RADIO_04_PUNK" { url = PUNK, volume = nulldrei, name= "[PUNK]" }
supersede_radio "RADIO_05_TALK_01" { url = classic, volume = nulldrei, name= "[CLASSICS]" }
supersede_radio "RADIO_06_COUNTRY" { url = Cntry, volume = nulldrei, name= "[KISS GARAGE]" }
supersede_radio "RADIO_07_DANCE_01" { url = dance, volume = nullvier, name= "[DANCE]" }
supersede_radio "RADIO_08_MEXICAN" { url = eastls, volume = nullzwei, name= "[EAST LS]" }
supersede_radio "RADIO_09_HIPHOP_OLD" { url = HipOld, volume = nulldrei, name= "[LoHop]" }
supersede_radio "RADIO_11_TALK_02" { url = CrO, volume = nulldrei, name= "[CRO]" }
supersede_radio "RADIO_13_JAZZ" { url = eastside, volume = dreifuenf, name = "[EASTSIDE]" }
supersede_radio "RADIO_14_DANCE_02" { url = daydream, volume = nullzwei, name = "[DAYDREAM]" }
supersede_radio "RADIO_15_MOTOWN" { url = country, volume = dreifuenf, name = "[COUNTRY]" }
supersede_radio "RADIO_16_SILVERLAKE" { url = slvlake, volume = dreifuenf, name = "[SILVERLAKE]" }
supersede_radio "RADIO_17_FUNK" { url = Fnk, volume = dreifuenf, name = "[FUNK]" }
supersede_radio "RADIO_18_90S_ROCK" { url = jermain, volume = nulldrei, name= "[JERMAIN ROCK]" }
supersede_radio "RADIO_20_THELAB" { url = bermuda, volume = nulldrei, name = "[BERMUDA]" }

ui_page 'index.html'

files {
	'index.html',
	'sounds/darksignal.mp3',
}

client_scripts {
	'data.js',
	'client.js'
}