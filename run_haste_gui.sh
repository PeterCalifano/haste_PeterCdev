# Get args from command line
#--events_file=examples/test_example/events.txt
events_txt_data=$1

#--camera_params_file=examples/test_example/calib.txt
calib_txt_data=$2

# Run the tracking app with the GUI
./build/tracking_app_gui --events_file=${events_txt_data} \
                         --camera_params_file=${calib_txt_data}
