/*checkFuel takes an argument (argument0), which defines the fuel burn rate.
Different tasks (thrusting, braking, turning, etc) will take up more or less fuel.
*/
if self.fuel > argument0
{
    self.fuel = (max((self.fuel-self.argument0),0)); //Reduces fuel by the burn rate
    show_debug_message(string(self.fuel));
    return true;
}
else
    return false;
