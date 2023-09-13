
<div id="top"></div>
<br />
<div align="center">
<img  src="./images/logo.png" width="200" height="200"/>

## **BD Result**
  <p align="center">
"BD Result" is an Android app designed to assist you in quickly accessing your Board Exam results and producing a printable PDF document
    <div>
  <img src="https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white" alt="Android" width="130" height="40" >
      <img src="https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=ios&logoColor=white" alt="Android" width="130" height="40" >
</div>
    <a href="https://github.com/RootHex200/BD_Result/issues">Report Bug</a>
    ·
    <a href="https://github.com/RootHex200/BD_Result/issues">Request Feature</a>
  </p>

</div>



<!-- TABLE OF CONTENTS -->
<details open >
  <summary style="cursor: pointer;">Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#features-with-snapshots">Features with Snapshots</a></li>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    <li><a href="#roadmap">Roadmap</a></li>
   
  </ol>
</details>



## About The Project
<div align="center">
<img src="./images/header.png">
</div><br>
"BD Result" is a mobile version of "educationboardresults.gov.bd" and "Bangladesh Technical Education Board result"
<br>
<br>
The "BD Result" app is a mobile application developed to provide users with swift and convenient access to Bangladesh's education board exam results. This app simplifies the process of checking exam results by allowing users to easily view and download their scorecards. Additionally, it offers the functionality to generate printable PDF files of the results for users' convenience. With the BD Result app, obtaining and sharing board exam results has become more accessible and efficient for students and their families.

<p align="right">(<a href="#top">back to top</a>)</p>

## Features with Snapshots

1. Choose your exam board, year of examination, and the name of the exam. Also, enter your board roll registration semester using the classic user interface
   <details ><summary>snapshot</summary>

    <img src="./images/intersechome.png" width="200" height="400" />  <img src="./images/groupinterface.png" width="200" height="400" /> <img src="./images/single_interface.jpeg" width="200" height="400" />
   </details>
3. The results are neatly arranged with GPAs and the ability to create PDFs 
   <details ><summary>snapshot</summary>

   <img src="./images/gov_result.png" width="200" height="400" /> <img src="./images/singleresult.png" width="200" height="400" /> <img src="./images/group.png" width="200" height="400" />

   </details>
4. After clicking the download button, the PDF will be saved in your download folder 
   <details ><summary>snapshot</summary>

   <img src="./images/gov_result_pdf.png" width="200" height="400" /> <img src="./images/group_result_pdf.png" width="200" height="400" />
   </details>
## Built With 
#### Frontend Technology  
* [Flutter](https://flutter.dev/?gclsrc=ds&gclsrc=ds) <br>
Features and Plugins I've used: 
   - Dio
   - pdf
   - path_provider
   - Riverpod
   
   
* APK link: https://drive.google.com/file/d/1PPwtvpRI0SmI0c1w9Oyx5Uc9-wHULdLW/view?usp=drive_link

<p align="right">(<a href="#top">back to top</a>)</p>


## Prerequisites
There are some prerequisites to run this app and server

######
* **Flutter**

  Flutter has a greate [documentation](https://docs.flutter.dev/get-started/install) for enviroment setup 
## Installation
1. Clone the repository to your local machine.
2. Open the project in your preferred IDE.
3. Run `flutter pub get` to install the required dependencies.

## Usage
- entrypoint in `src/`
- add your token in `CLIENT_ID` and `CLIENT_SECRET` varible in `/lib/src/constants/secret.dart` for html to pdf conversion [aspose](https://products.aspose.cloud/words/dart/conversion/html-to-pdf/)
- You can run the project on console using the command `flutter run`.

<!-- ## Roadmap
#### Frontend
data -->

<p align="right">(<a href="#top">back to top</a>)</p>

