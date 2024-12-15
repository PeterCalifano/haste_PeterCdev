# Get args from command line
#--events_file=examples/test_example/events.txt
# Format: t x y polarity (1 event per line)
events_txt_data=$1

#--camera_params_file=examples/test_example/calib.txt
# Format: fx fy cx cy k1 k2 p1 p2 k3
calib_txt_data=$2



# Tracking program instructions
#"usage: ./tracking_app_gui \n"
#                          "                           -events_file=path/to/file            # Plain text file with events. [Required]\n"
#                          "                           -num_events=n                        # Load only the first n-events in the event file.\n"
#                          "                           -camera_params_file=path/to/file     # Load pinhole camera calibration model\n"
#                          "                           -camera_size=WIDTHxHEIGHT            # Set image sensor resolution.\n"
#                          "\n"
#                          "\n"
#                          "\n"
#                          "Detailed explanation:\n"
#                          "\n"
#                          "-events_file=path/to/file\n"
#                          "* Description: Specifies a path to a plain text file from which are loaded. Each line in file represents an event with format: t x y polarity. \n"
#                          "* Note: This flag must be specified.\n"
#                          "\n"
#                          "-num_events=n\n"
#                          "* Description: Only the first n-events from the event file are loaded.\n"
#                          "* Default: inf\n"
#                          "\n"
#                          "-camera_params_file=path/to/file     \n"
#                          "* Description: Specifies the path to a plain text file from which the pinhole camera with rad-tan distortion model will be loaded. The file contains a single line with format: fx fy cx cy k1 k2 p1 p2 k3. Specifying this file, loaded events would be undistorted as pre-processing step.\n"
#                          "\n"
#                          "-camera_size=WIDTHxHEIGHT            \n"
#                          "* Description: Specifies image resolution.\n"
#                          "* Default: 240x180 (DAVIS240c resolution)\n";

# Run the tracking app with the GUI
./build/tracking_app_gui --events_file=${events_txt_data} \
                         --camera_params_file=${calib_txt_data}
