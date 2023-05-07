# Sangeet
An XML Dataset for Hindustani Classical Music

## Organization of the Dataset
The dataset is a collection of XML files. Each XML file corresponds to a composition. Each XML file is named as <code>[raag-name]-[composition index belonging to the raag]-[page number of the book Kramik Pustak Malika].xml</code>.

Currently the dataset consits of 116 XML files belonging to raag _Bhairav_, _Todi_, and _Poorvi_. The frequencies of compositions for each of these three rags are 42, 39, and 35 respectively.

## Music-sheet Visualization

## Query the Dataset using XQuery

## Machine Learning
To use the dataset to build ML classifiers for raag classification problem, we have transformed the dataset into a csv file which contains the frequency distribution of the notes for each composition and the raag of the same. The csv file can be found inside <code>Machine Learning</code> directory. The name of the csv file is <code>Bhatkhande-Dataset.csv</code>. The csv file can also be generated using the XQuery file <code>freq-dist-notes-to-csv.xq</code> present inside <code>XQuery Files</code> directory. We have also included the Python code to upload the dataset and run ML algoritms on it as <code>.ipynb</code> file.
