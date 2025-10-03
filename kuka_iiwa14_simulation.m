
myRobot = loadrobot('kukaIiwa14');
showdetails(myRobot);
myRobot.DataFormat = 'column';

gripper = importrobot('THWSGripper.URDF');

addSubtree(myRobot,'iiwa_link_ee_kuka',gripper);

myFigure = interactiveRigidBodyTree(myRobot);

worktop = collisionBox(1.8,1.8,0.1);
worktop.Pose = trvec2tform([0.8 0 -0.05])
[axes,patchObjworktop] = show(worktop);
patchObjworktop.FaceColor = [0.7 0.7 0.7]

cuboid = collisionBox(0.08,0.08,0.25);
cuboid.Pose = trvec2tform([0.5 -0.2 0.125])
[axes,patchObjcuboid] = show(cuboid);
patchObjcuboid.FaceColor = [1 0 0]





addConfiguration(myFigure);
myFigure.StoredConfigurations


myFigure.Configuration=[-1.022981895378009;0.501229293773682;0.945606911992096;-1.483269484596995;-0.413549664734418;1.355890266950741;-0.038109050562828;0;0]
addConfiguration(myFigure);


myFigure.Configuration=[-0.929828499622859;0.726079366224970;0.801858194813698;-1.677687723615655;-0.600432002554991;0.997889380759266;0.087779379312788;0;0]
addConfiguration(myFigure);

myFigure.Configuration=[-1.002342319407426;0.552320272352725;0.920115634612125;-1.529229271214277;-0.449368825175919;1.277180715763716;-0.022821165323822;0;0]
addConfiguration(myFigure);

myPose=myFigure.MarkerBodyPose;

myPose(1,4)=0.5;
myPose(2,4)=0.3;
myPose(3,4)=0.3;
myIK = inverseKinematics('RigidBodyTree',myRobot);
weights = [1 1 1 1 1 1];
initguess = myRobot.homeConfiguration;
[config,Info] = myIK('TCP',myPose,weights,initguess)
myFigure.Configuration=config;

addConfiguration(myFigure);

myPose=myFigure.MarkerBodyPose;
myPose(1,4)=0.5;
myPose(2,4)=0.3;
myPose(3,4)=0.2;
myIK = inverseKinematics('RigidBodyTree',myRobot);
weights = [1 1 1 1 1 1];
initguess = myRobot.homeConfiguration;
[config,Info] = myIK('TCP',myPose,weights,initguess)
myFigure.Configuration=config;
addConfiguration(myFigure);

myPose(1,4)=0.5;
myPose(2,4)=0.3;
myPose(3,4)=0.5;
myIK = inverseKinematics('RigidBodyTree',myRobot);
weights = [1 1 1 1 1 1];
initguess = myRobot.homeConfiguration;
[config,Info] = myIK('TCP',myPose,weights,initguess)
myFigure.Configuration=config;
addConfiguration(myFigure);

myFigure.Configuration=[0;0;0;0;0;0;0;0;0];
addConfiguration(myFigure);

Nconfig = size(myFigure.StoredConfigurations,2);
Nsamples = 100*(Nconfig-1)
[q,qd,qdd,tSamp] = trapveltraj(myFigure.StoredConfigurations,Nsamples);

rateController = rateControl(Nsamples/(max(tSamp) - tSamp(2)));
for i = 1:Nsamples
myFigure.Configuration = q(:,i);

waitfor(rateController);
end


showdetails(myRobot)



minimum_distance_object = nan(1, Nsamples);
myRobot.DataFormat = "column";
for i = 1:Nsamples
[~, sepDist, ~] = ...
 checkCollision(myRobot, q(:,i), {cuboid}, ...
 "IgnoreSelfCollision", "on", "Exhaustive", "on");
 minimum_distance_object(i) = mean(sepDist(12:13))*100;
 
end
figure
plot(tSamp, minimum_distance_object);
xlabel("t in s"); ylabel("Abstand in cm");
title("Abstand der Greiferfinger zum Greifobjekt")