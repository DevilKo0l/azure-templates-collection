<div align="center"> 

  <h3 align="center">Azure ARM Template Collection</h3>

  <p align="center">
    Easy template for deploying azure resources
    <br />
    <a href="#"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="#">View Demo</a>   
    
  </p>
</div>

<!-- ABOUT THE PROJECT -->
## About The Project
This repository is a collection of ARM templates used for deploying custom resources and architecture design by me.

<!-- GETTING STARTED -->
## Getting Started
This is an example of how you may give instructions on setting up your project locally. To get a local copy up and running follow these simple example steps.

### Prerequisites
You need to install [AZ Module](https://learn.microsoft.com/en-us/powershell/azure/install-azps-windows?view=azps-12.2.0&tabs=powershell&pivots=windows-psgallery)
and supported version of [Powershell](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.4)
```sh
Get-ExecutionPolicy -List
```
```sh
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```
```sh
Install-Module -Name Az.Resources -AllowClobber -Scope CurrentUser
```
### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/DevilKo0l/azure-arm-collection
   ```
   
2. Login Azure account
   ```sh
   Connect-AzAccount
   ```
    
3. Deploy the template
   a. Deploy using custom template deployment
      * Choose the template you want and copy everything in resourceTemplate.json
      * In azure portal search for "Deploy custom template", choose "Build your own template in the editor"
      * Paste the tempate you coppy and fill all the parameter and deploy
   
   b. Deploy the template using powershell
      * In powershell, you open the path of template's folder you want to deploy
      * Run the script by using command below
         ```
         ./<yourscript>.ps1    
         ```
   c. Execute the template using cloudshell
      * Upload json file to cloudshell
      * rg='<your RG name>'
      * az group create -n $rg -l westeurope
      * az group deployment create -g $rg --template-file 'storage.json'
