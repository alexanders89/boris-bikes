Objects | Messages
------------ | -------------
User            |
Bike            | bike_is_working?
                | bike_is_docked?
Docking Station | release_a_bike
                | dock_a_bike




Bike <-- bike_is_working? --> true/false

Docking Station <-- release_a_bike --> Bike

Bike <-- bike_is_docked? --> true/false

Docking Station <-- dock_a_bike --> Bike
