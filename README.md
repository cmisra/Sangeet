# Sangeet
An XML Dataset for Hindustani Classical Music

## Organization of the Dataset
The dataset is a collection of XML files. Each XML file corresponds to a composition. Each XML file is named as <code>[raag-name]-[composition index belonging to the raag]-[page number of the book Kramik Pustak Malika].xml</code>.

Currently the dataset consits of 116 XML files belonging to raag _Bhairav_, _Todi_, and _Poorvi_. The frequencies of compositions for each of these three rags are 42, 39, and 35 respectively.

## Music-sheet Visualization
The music-sheets of the compositions is rendered using [Ome Swarlipi](https://omenad.github.io/fonts/ome-swarlipi/) fonts and style engine. A sample HTML music-sheet is given in <code>Visualization</code> directory. It also contains a converter to transform XML file to music-sheet HTML file. You will <code>notation.css</code> file in the directory as the HTML music-sheet file in order to visualize it in Devanagari script. This file is also included in the directory.


## Query the Dataset using XQuery
There are four queries written in XQuery inside <code>XQuery Files</code>. In order to run the queries an XML database needs to be created from the XML files. We have used BaseX for that. The queries can be written and run the BaseX editor itself.

## Machine Learning
To use the dataset to build ML classifiers for raag classification problem, we have transformed the dataset into a csv file which contains the frequency distribution of the notes for each composition and the raag of the same. The csv file can be found inside <code>Machine Learning</code> directory. The name of the csv file is <code>Bhatkhande-Dataset.csv</code>. The csv file can also be generated using the XQuery file <code>freq-dist-notes-to-csv.xq</code> present inside <code>XQuery Files</code> directory. We have also included the Python code to upload the dataset and run ML algoritms on it as <code>.ipynb</code> file.
