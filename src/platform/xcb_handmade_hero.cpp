#include <X11/Xlib.h>
#include <X11/Xlib-xcb.h>
#include <xcb/xcb.h>

#define UNUSED(x) (void)x

int main(int argc, char* argv[])
{
	UNUSED(argc);
	UNUSED(argv);

	Display *display = XOpenDisplay(nullptr);
	xcb_connection_t *connection = XGetXCBConnection(display);

	UNUSED(connection);
  
	XCloseDisplay(display);
	
	return 0;
} 
