library(tidyverse)
library(stringr)
library(dplyr)
#This chapter introducs to string manipulation in R. 
# You can either create strings with either single quote or double quote.

string1 <- "this is a string"
string2 <- 'to put a "quote" inside a string, use single quotes'
string1
string2
string3 <- "to put a 'quote' inside a string, use single quotes"
string3
#Combining String
str_c("a", "b")
#subsetting strings
 x<- c("Apple", "Banana", "peer")
 str_sub(x, 1,3)
 str_sub(x, -3,-1)
 #upper case and lower case
 str_to_lower(x)
str_to_upper(x)
 
#Matching patterns with regular expression

dataset <- read_xlsx(file.choose(new=FALSE))
View(dataset)

str_view(dataset, "PM")
array <- c("DP", "DCS", "IOP", "low", "jam", "trip", "leak", "high", "hard", "diff", "slow", "fail", "badly", "SMELL", "stuck", "noise", "dirty", "delta", "sound", "wrong", "block", "FAULT", "loose", "spike", "Major", "FALSE", "broken", "change", "faulty", "jammed", "damage", "failed", "leaked", "triped", "forced", "alaram", "leaking", "passing", "leakage", "reading", "damaged", "tripped", "pumping", "blocked", "loosing", "several", "SEEPAGE", "hunting", "choking", "stopped", "Failure", "rupture", "BLOWING", "dripping", "PRESSURE", "frequent", "ruptured", "abnormal", "spillage", "tripping", "Amperage", "corroded", "corrosion", "vibration", "permisive", "saturated", "frequently", "permissive", "fluctuating", "discrepancy", "flactuating", "accumulated", "FLUCTUATION", "discrepency", "highreading", "differential", "disconnected", "delta P high", "discrepancy.", "Severe","OMS", "wind", "Door", "minor", "socks", "empty", "clean", "house", "reset", "flush", "daily", "GSPIR", "assist", "remove", "shower", "grease", "update", "review", "cleand", "provide", "cleaned", "Missing", "isolate", "keeping", "greased", "flushed", "Shutdown", "strainer", "cleaning", "slightly", "shifting", "provided", "greasing", "Windsock", "unwanted", "flushing", "Document", "calibrate", "REINSTALL", "deisolate", "Boroscope", "fabricate", "windsocks", "INSPECTION", "assistance", "Calibrated", "Scaffolding", "housekeeping", "Verification", "Comissioning", "commissioning", "documentation", "Eyewash", "Inspection,", "Assistace","N2", "O2", "STS", "nut", "U/S", "H2S", "oil", "NRV", "air", "VSD", "D/S", "STH", "IGV", "So2", "D.P", "LINE", "ring", "trap", "drum", "seal", "Plug", "lube", "vent", "valv", "gear", "hose", "COIL", "bolt", "sump", "nuts", "Flue", "alarm", "INLET", "drain", "valve", "steam", "water", "gland", "guard", "sight", "glass", "PROBE", "BOLTS", "plugs", "Rotor", "flame", "pilot", "shaft", "vapor", "elbow", "flange", "handle", "stream", "THREAD", "bypass", "outlet", "header", "casing", "gasket", "valves", "FILTER", "Carbon", "HOLDER", "socket", "sleeve", "burner", "damper", "dosing", "liquid", "bellow", "manway", "Boiler", "during", "monitor", "tracing", "bearing", "barrier", "gearbox", "housing", "winding", "lubeoil", "scanner", "sulphur", "bellows", "sealant", "Airline", "indicat", "starter", "MANIFOLD", "upstream", "coupling", "actuator", "charcoal", "breather", "Diaphram", "silencer", "Magnetic", "cathodic", "Pulsejet", "discharge", "regulator", "injection", "cartridge", "hydraulic","condensate", "condenser", "Insulation", "monitoring", "economizer", "economiser", "evaporator", "indicating", "transmitter", "Accumulator", "NRV passing", "Flange leak", "Threads", "Lube oil", "oily", "Thermowell", "Pilots", "Blower", "Transmitters", "HANDLES","failure", "details", "action", "taken", "recommendation")
array
dataset <- read_xlsx(file.choose())
View(dataset)
dataset_description <-  dataset %>%
  select(WONUM:LOCATION)
View(dataset_description)
dataset_description <- dataset_description %>%
  select(-PARENT)
View(dataset_description)
View(description)
description <- dataset$DESCRIPTION
str_view(dataset_description$DESCRIPTION, array)
sum(str_detect(dataset$DESCRIPTION, "hard"))
str_view(dataset$DESCRIPTION, "hard")
str_view(description, "hard")
library(stringi)
