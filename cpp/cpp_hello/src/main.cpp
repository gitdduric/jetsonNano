#include <iostream>
#include <opencv2/opencv.hpp>


int main() {

     std::cout << "Hello world!" << std::endl;
    // Kamera öffnen (0 = Standard-USB-Kamera)
    cv::VideoCapture cap(0);

    if (!cap.isOpened()) {
        std::cerr << "Kamera konnte nicht geöffnet werden!" << std::endl;
        return -1;
    }

    cv::Mat frame;

    while (true) {
        cap >> frame;

        if (frame.empty()) {
            std::cerr << "Leeres Frame erhalten!" << std::endl;
            break;
        }

        cv::imshow("Jetson Nano Kamera", frame);

        // Mit 'q' beenden
        if (cv::waitKey(1) == 'q') {
            break;
        }
    }

    cap.release();
    cv::destroyAllWindows();
    return 0;
}