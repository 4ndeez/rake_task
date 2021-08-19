### Folder tree
````
test_data
├── app
│   ├── app.class
│   └── app.rb
├── docs
│   ├── 234.doc
│   └── 23.doc
├── img
│   ├── image111.jpg
│   ├── image1.png
│   ├── image2.png
│   ├── image3.png
│   ├── image4.png
│   ├── image5.png
│   └── image.jpg
├── main.class
├── secret
│   ├── 1.doc
│   ├── 1.txt
│   ├── 2.doc
│   ├── 2.txt
│   ├── 3.txt
│   └── another_one
│       ├── test12345.txt
│       ├── test1234.txt
│       ├── test123.txt
│       └── test12.rb
├── src.class
└── test
    ├── test1.rb
    ├── test.rb
    └── test.txt

6 directories, 25 files

````

### Output result
````
$ rails custom_command:top_five[test_data]
Top 5 file formats in test_data folder
.txt           7
.png           5
.doc           4
.rb            4
.class         3
````
