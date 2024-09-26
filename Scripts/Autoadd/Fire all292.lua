function xds(dd)
    for i,v in next,dd:children''do
        if(v:IsA'BasePart')then
            f=Instance.new('Fire',v);
            f.Size=19;
            f.Heat=22;
        end;
        if #(v:GetChildren())>0 then
            xds(v) 
        end
    end
end

xds(game.Workspace)