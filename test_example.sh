# Test using example data provided by authors
# Fetch data, save in examples folder
wget http://rpg.ifi.uzh.ch/datasets/davis/shapes_translation.zip -P examples/test_example

# Unzip the file
unzip examples/test_example/shapes_translation.zip -d examples/test_example

# Remove zip file
rm examples/test_example/shapes_translation.zip

# Run the example
./build/tracking_app_gui --events_file=examples/test_example/events.txt --camera_params_file=examples/test_example/calib.txt

