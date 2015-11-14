if self.fuel > 0
{
    self.fuel = (max((self.fuel-self.fuelrate),0))
    show_debug_message(string(self.fuel))
    return true
}
else
    return false
