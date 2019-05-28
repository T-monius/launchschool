## Insert Data for Parts and Devices

### Understanding
- 2 devices
  + 'Accelerometer'
  + 'Gyroscope'
- Parts
  + 3 parts for 'Accelerometer'
  + 5 parts for 'Gyroscope'
  + 3 parts not associated w/ a device
  + Random numbers between 1 and 10,000

### Task
- Now that we have the infrastructure for our workshop set up, let's start adding in some data. Add in two different devices. One should be named, "Accelerometer". The other should be named, "Gyroscope".

The first device should have 3 parts (this is grossly simplified). The second device should have 5 parts. The part numbers may be any number between 1 and 10000. There should also be 3 parts that don't belong to any device yet.

### Implementation
- Use an `INSERT` to add data into `devices` by name
- Choose 11 random numbers and add them into `parts` associated by devices
