# Textile Fabric Image Dataset

## Overview

This dataset comprises a wide array of fabric images, originally categorized by fabric types such as Artificial Fur, Corduroy, Denim, and more. Each category contained folders identified by unique IDs, with each folder housing a set of images (`im_1.png` to `im_4.png`) representing different views or details of the fabric samples. This README details the process of reorganizing these images into a single directory, streamlining the dataset for easier access and application in various analytical or machine learning projects.

## Dataset Structure

Originally, the dataset was organized as follows:

```
/Fabrics
    /Acrylic
    /Blended
    ...
        /<ID>
            im_1.png
            im_2.png
            im_3.png
            im_4.png
            tag.txt
```

After reorganization, the structure has been simplified to:

```
/AllFabricImages
    1.png
    2.png
    ...
```

## Reorganization Process

A script was developed to automate the reorganization process. This script performed the following steps:

1. **Navigated** through each fabric type directory within `/Users/zul/Downloads/Fabrics`.
2. **Accessed** each ID'd subdirectory to extract the images.
3. **Copied and renamed** each image sequentially from `1.png` upwards, placing them into a new directory located at `/Users/zul/Downloads/AllFabricImages`.

This process ensured that each image across the entire dataset was assigned a unique identifier, making the dataset uniform and significantly more accessible for processing and analysis.

## Usage

The consolidated dataset in `/Users/zul/Downloads/AllFabricImages` is now ready for use in various applications, including but not limited to:

- **Machine Learning**: Training models to recognize different types of fabrics.
- **Image Analysis**: Analyzing fabric textures and patterns.
- **Educational Purposes**: Serving as a resource for teaching materials science or fashion design.

## Acknowledgments

This dataset was sourced from the [iBUG website](https://ibug.doc.ic.ac.uk/resources/fabrics/), a repository of various datasets useful for benchmarking and testing in the field of machine learning and computer vision.

## Contact Information

For further inquiries or contributions to this dataset, please contact the maintainer

---
