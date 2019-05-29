## Delete Accelerometer

### Understanding
- Use a select statement to test before deleting...
- Delete "Accelerometer"
  + This includes parts
  + Delete the device identified by the name and id
  + Delete the part identified by the device's id
    * I don't remember if the `device_id` is on a delete cascade, so this might not be necessary
### Task
- Our workshop has decided to not make an Accelerometer after all. Delete any data related to "Accelerometer", this includes the parts associated with an Accelerometer.

### Implementation
- Select from `devices` based on device id
- Separate selection from `parts` mathing device id
  + I needed to do this *first*
  + The foreign key constrain of the `device_id` column impeded deleting of the device if parts referenced it
   * This is backwards as it would mean a device could exist without parts which is a conundrum...
   * If the existing foreign key was set up on a delete cascade, the paradox would be handled