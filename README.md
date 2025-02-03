# Face Recognition Project

## Overview
This project is a facial recognition system developed using MATLAB, designed to identify and differentiate between multiple individuals based on their facial features. The system combines the probabilities of three neural networks DenseNet-201, ResNet-50, and DarkNet-53—to leverage their strengths and compensate for individual weaknesses. This ensemble approach achieves an accuracy of 94%.

## Features
- **Multi-Network Architecture:** Utilizes DenseNet-201, ResNet-50, and DarkNet-53 for robust recognition.
- **Ensemble Learning:** Combines the probabilities of the three networks to improve accuracy and reliability.
- **Efficient Performance:** Optimized for high accuracy and low latency.
- **Scalability:** The system can be expanded to include more facial data for additional users.

## Requirements
### Software
- MATLAB (Tested on version compatible with Neural Network Toolbox)
- Octave (as an open-source alternative to MATLAB, for loading and processing .mat files)

### Dependencies
- MATLAB Neural Network Toolbox
- Image Processing Toolbox

### Files Included
1. `all3Networks.mat` - Contains the three trained neural networks.
2. `demoRecognitionRateDeep.m` - The main script for running the facial recognition process.
3. Sample images and data for testing the recognition system.

## Setup Instructions
1. Clone the repository:
   ```bash
   git clone https://github.com/shm0m/Face-ID.git
   ```

2. Navigate to the project directory:
   ```bash
   cd Face-ID
   ```

3. Run the main script:
   ```matlab
   run('demoRecognitionRateDeep.m');
   ```

## How It Works
1. The system captures or loads facial images.
2. Preprocessing is applied to the images (resizing, grayscale conversion, normalization).
3. The processed images are passed through DenseNet-201, ResNet-50, and DarkNet-53.
4. The probabilities from the three networks are combined to determine the final prediction.

## Future Enhancements
- Implementing real-time face recognition with a webcam.
- Enhancing the model’s robustness against different lighting conditions and angles.
- Integrating with cloud storage for scalable user data.

## Contributing
Contributions are welcome! If you wish to improve the project, feel free to fork the repository and submit a pull request.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Contact
For questions or further information, please contact:
- **Shaima Derouich**
- GitHub: [shm0m](https://github.com/shm0m)
- Email: shaimaderouich18@gmail.com

