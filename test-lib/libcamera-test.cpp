#include <iomanip>
#include <iostream>
#include <memory>
#include <thread>

#include <libcamera/libcamera.h>

using namespace libcamera;
using namespace std::chrono_literals;
static std::shared_ptr<Camera> camera;
int main()
{
    std::unique_ptr<CameraManager> cm = std::make_unique<CameraManager>();
    cm->start();
    std::cout << "Libcamera is installed and works!" << std::endl;
    for (auto const &camera : cm->cameras())
    std::cout << camera->id() << std::endl;
    return 0;
}
