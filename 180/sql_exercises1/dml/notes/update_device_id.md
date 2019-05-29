## UPDATE device_id

### Understanding
- I'm not sure what the idea is, 'the last two parts'
  + Does this refer to the order of the `device_id`?
  + I can find the parts for the 'Gyroscope' that have the highest `device_id`s and associate them with the 'Accelerometer'

### Task
- We've realized that the last two parts we're using for device number 2, "Gyroscope", actually belong to an "Accelerometer". Write an SQL statement that will associate the last two parts from our parts table with an "Accelerometer" instead of a "Gyroscope".

### Implementation
- Use a subquery to change the device where the device ids are in the subquery
