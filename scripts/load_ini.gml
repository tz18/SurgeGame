INI_FILE = "SURGE.ini"
INI_CONTROLS = "controls"

INI_UPKEY = 'upKey'
INI_DOWNKEY = 'downKey'
INI_LEFTKEY = 'leftKey'
INI_RIGHTKEY = 'rightKey'

if not(file_exists(INI_FILE))
{
    ini_open(INI_FILE) //Creates the file once we begin writing to it.
    ini_write_real(INI_CONTROLS,INI_LEFTKEY,vk_left) //These are our defaults. We can change these later.
    ini_write_real(INI_CONTROLS,INI_RIGHTKEY,vk_right)
    ini_write_real(INI_CONTROLS,INI_UPKEY,vk_up)
    ini_write_real(INI_CONTROLS,INI_DOWNKEY,vk_down)
    ini_close() //It's important to always close files when we're done.
}

if (file_exists(INI_FILE)) //Once we've established that we've at least got the default
{
    ini_open(INI_FILE) //Opens the INI file for reading
    global.leftKey  = ini_read_real(INI_CONTROLS,INI_LEFTKEY,vk_left) //Begin reading the player controls to globals
    global.rightKey = ini_read_real(INI_CONTROLS,INI_RIGHTKEY,vk_right)
    global.upKey    = ini_read_real(INI_CONTROLS,INI_UPKEY,vk_up)
    global.downKey  = ini_read_real(INI_CONTROLS,INI_DOWNKEY,vk_down)
    ini_close()
}
