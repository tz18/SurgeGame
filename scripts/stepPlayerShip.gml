if self.fuel < self.fuelMax{
    self.fuelRegenCell += self.fuelRegenRate //regenerates some fuel into the regen chamber
    if self.fuelRegenCell >= self.fuelRegenCellSize{ //is the cell full
        self.fuel = (min((self.fuelRegenCellSize+self.fuel),self.fuelMax)) //moves the fuel from the chamber into the main tank
        self.fuelRegenCell -= self.fuelRegenCellSize
    }
}
