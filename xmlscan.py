#!/usr/bin/python
import xml.etree.ElementTree as ET 
import sys 
import os


def parseXML(fname) :
    tree = ET.parse(fname)
    root = tree.getroot()
    for resource  in root.iter('Resource') :
        print  resource.tag, resource.attrib.get("name") ," maxActive ", resource.attrib.get("maxActive")


def main() :
    if len(sys.argv) ==2 :
        if os.path.isfile(sys.argv[1]) :
            parseXML(sys.argv[1]) 



if __name__ == "__main__" :
    main()

