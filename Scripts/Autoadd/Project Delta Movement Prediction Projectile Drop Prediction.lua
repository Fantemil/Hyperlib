-- // Physics
    local Physics = {}; Physics.__index = Physics; do  
        function Physics.MovementPrediction(Origin, Destination, DestinationVelocity, ProjectileSpeed)
            local Distance = (Destination - Origin).Magnitude;
            local TimeToHit = (Distance / ProjectileSpeed);
            local Predicted = Destination + DestinationVelocity * TimeToHit;
            local Delta = (Predicted - Origin).Magnitude / ProjectileSpeed;
           
            ProjectileSpeed = ProjectileSpeed - 0.013 * ProjectileSpeed ^ 2 * TimeToHit ^ 2;
            TimeToHit += (Delta / ProjectileSpeed);

            local Actual = Destination + DestinationVelocity * TimeToHit;
            return Actual;
        end;

        function Physics.Trajectory(Origin, Destination, ProjectileSpeed, ProjectileDrop)
            local Distance = (Destination - Origin).Magnitude;
            local TimeToHit = (Distance / ProjectileSpeed);
            local ProperSpeed = ProjectileSpeed - 0.013 * ProjectileSpeed ^ 2 * TimeToHit ^ 2;
            TimeToHit += (Distance / ProperSpeed);
           
            local DropTime = ProjectileDrop * TimeToHit ^ 2;
            if tostring(DropTime):find("nan") or (Distance <= 100) then
                return 0
            end;
            return DropTime
        end;
    end;