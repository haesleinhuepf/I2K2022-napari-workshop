# I2K2022 napari workshop

This is a joint effort by the [napari](https://napari.org) community. Napari is a tool gaining more and more attention in the bio-image analysis community. Beyond giving a general introduction to napari and its plugin ecosystem, we would like to demonstrate its current capabilities and some plugins we are working on and with.

## Provisional program
* Introduction to napari (15 min, Dannielle)
* Using napari from Jupyter notebooks (15 min, Marcelo Zoccoler)
* [Accelerated pixel and object classification](https://www.napari-hub.org/plugins/napari-accelerated-pixel-and-object-classification) (15 min, Robert)
    <img src="images/apoc.png" width="400"/>
    * Interactive classifier training in napari
    * Application in python
* Labeling with overlapping labels (~30 minutes, Tom + Joran(maybe))
    * Plugin presentation for overlapping labels and labelset creation
    * I/O in a transferable format compatible with ImgLib2/Fiji
    * Outlook to use-cases and possible workflows
* Restoration and Measurement (20 minutes, Brian + ? ) 
    <img src="images/decon_star.png" width="400"/>  
    * Atendees should be comfortable programming short Python code segments in IPython Notebook
    * Briefly introduce Deconvolution and Background Subtraction
    * Talk about important of Point Spread Function, how to compute it. 
    * Deconvolve and/or apply background subtration to real images.
    * Perform segmentation, watershed and then morphological and intensity measurements
    * Show how Restoration can improve downstream measurements.   Show how to explore input images and processed images using Napari and Matplotlib.
* Different use cases for segmentation in VollSeg Napari plugin (30 min, Varun)
    * A short intro to VollSeg Napari plugin and jupyter notebooks for differnet use cases.
    * Demonstrate the plugin on different test cases as outlined [here](https://github.com/Kapoorlabs-CAPED/CAPED-AI-vollseg-napari).
    * Show the UX features like cancelling jobs running in background threads, displaying results of interest and other options to choose from.
    * A future outlook on how the plugin will link to other plugins and tools to build complete workflows that include tracking, dynamic instability measurment for microtubules and doing auto track correction using action event classification tool Oneat. 

* 3D interactivity in napari (30 mins, can be made shorter if needed, Alister + Kevin)
    * (5 mins) introduction and motivation behind 3D interactivity, show 3D interactivity docs
        * Large 3D datasets (fluorescence, EM), multiple existing solutions for vis
        * Annotation in 3D is non-trivial but essential for analysis (e.g. deep learning)
        * Also, exploring 3D data along axis not aligned with the data axes is difficult
        * implementing custom modes of interacting with data in 3D currently requires development of an entire application
    * (10 mins) introduce napari-threedee
        * Use case 1: using built-in widget plugins to interact with your data
        * Use case 2: using the manipulators/annotators in your own application
    * (5 mins) Interactive demo of use case 1
        * Highlight a couple of cases of interactive with 3D data using the built-in manipulators and annotators
    * (5 mins) Interactive demo of use case 2
        * We will make a plugin ahead of time that consumes napari-threedee and show the code as well as demo the usage
    * (5 mins) Wrap up
* How to make napari plugins (30 min, Draga)

## Installation instructions

We would like to ask attendees of the workshop to setup conda on their computers before the session. If you have never used conda before, please [read this guide first](https://biapol.github.io/blog/johannes_mueller/anaconda_getting_started/).

Afterwards, please create a couple of environments

### Basic napari + jupyter lab

    conda create --name basic-napari python=3.9
    conda activate basic-napari
    conda install -c conda-forge napari jupyterlab

### developmental biology napari

[See also](https://github.com/haesleinhuepf/devbio-napari#installation)

    conda create --name devbio-napari python=3.9
    conda activate devbio-napari
    conda install -c conda-forge pyopencl==2021.2.6 hdbscan numba=0.55.1
    pip install devbio-napari

Mac-users please also install this:

    conda install -c conda-forge ocl_icd_wrapper_apple

Linux users please also install this:

    conda install -c conda-forge ocl-icd-system

### Deep learning napari ?


## License

The materials in this repository are licensed [CC-BY 4.0](https://github.com/haesleinhuepf/I2K2022-napari-workshop/blob/main/LICENSE-CC-BY) by the [contributors](https://github.com/haesleinhuepf/I2K2022-napari-workshop/graphs/contributors) unless mentioned otherwise.
