plot3(worldPoints(:,1),worldPoints(:,2),zeros(size(worldPoints, 1),1),"*");
hold on
rotationMatrix = eye(3);
translationVector = [0 0 -10];
tform = rigidtform3d(rotationMatrix,translationVector);
absPose = extr2pose(tform);
cam = plotCamera(AbsolutePose=absPose,Size=1);
rotationMatrix = eye(3);
translationVector = [0 0 10];
tform = rigidtform3d(rotationMatrix,translationVector);
absPose = extr2pose(tform);
cam = plotCamera(AbsolutePose=absPose,Size=1);
set(gca,CameraUpVector=[0 0 -1]);
camorbit(gca,-110,60,data=[0 0 1]);
axis equal
grid on