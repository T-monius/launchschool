## Insert Data for Parts and Devices

### Understanding
- Infrastructure for workshop set up
- Need data

### Task
- Add data
  + Two devices
    * Part numbers between 1 and 10000
    * "Accelorometer"
      - 3 parts
    * "Gyroscope"
      - 5 parts
    * 3 parts not belonging to any device

### Implementation
- Use `INSERT INTO`
  + Specify the table in question
  + Create the two devices
  + There are at least 11 parts
    * Create the parts after the devices since they can be associated with a device
    * 5 for the "Gyroscope"
    * 3 for the "Accelerometer"
    * 3 parts that are unassociated with a device
    * It doesn't seem that we can have a part used in many devices as of now
      - Perhaps we'd need a many to many relationship for that
