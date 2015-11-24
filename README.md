# 3D Projection
![Demo](demo.png)

```c++
    SphereObject s1(Vec<double, 3>(0, 0, 0), 1.0, Scalar(255, 0, 0));
    SphereObject s2(Vec<double, 3>(2, 0, 0), 1.0, Scalar(0, 255, 0));
    SphereObject s3(Vec<double, 3>(0, 2, 0), 1.0, Scalar(0, 0, 255));
    SphereObject s4(Vec<double, 3>(0, 10, 0), 1.0, Scalar(255, 255, 255));

    scene.addObject(&s1);
    scene.addObject(&s2);
    scene.addObject(&s3);
    scene.addObject(&s4);

    Camera cam(90, 90, 700, 700);
    cam.setPosition(Vec<double, 3>(x, y, z));
    cam.setAngle(0, 3.14159/2);

    x=y=z=theta=phi=0;

    cam.setOrbit([](Camera *thisCam, double theta) -> Vec3d {
        thisCam->setAngle(theta + CV_PI, 0);
        return Vec3d(5*cos(theta), 5*sin(theta), 0.0);
    }, make_pair(0.0, 2*CV_PI), 0.0, 0.01);

    while(true) {
        cv::Mat tmp = cam.capture(scene);
        imshow("output", tmp);
        
        char c = waitKey(1);

        if(!cam.updateOrbitPosition()) {
            cam.updateOrbitParam(0.0);
        }
    }
```