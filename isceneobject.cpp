#include "isceneobject.h"

using namespace d3Projection;

void ISceneObject::clean() {
    locatingPointsProjected.clear();
}

void ISceneObject::pushLocatingPointProjected(const cv::Vec2d &point) {
    locatingPointsProjected.push_back(point);
}

const std::vector<cv::Vec3d>& ISceneObject::getLocatingPoints() const {
    return locatingPoints;
}