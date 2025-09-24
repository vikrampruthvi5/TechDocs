[**Why helm? 4**](#why-helm)

[**Install Helm 4**](#install-helm)

[**Connecting HELM to K8s 4**](#connecting-helm-to-k8s)

[**HELM Basics 4**](#helm-basics)

> [Basic Commands 4](#basic-commands)
>
> [Practicing Installation of MySQL with HELM 6](#practicing-installation-of-mysql-with-helm)
>
> [Namespace-specific Installation 8](#namespace-specific-installation)
>
> [Passing custom configuration to helm 9](#passing-custom-configuration-to-helm)
>
> [Helm Upgrade 10](#helm-upgrade)
>
> [Reusing Values 11](#reusing-values)
>
> [Release Records 11](#release-records)

[**Assignment 1: Install Tomcat using custom configuration 12**](#assignment-1-install-tomcat-using-custom-configuration)

[**Advanced Commands 14**](#advanced-commands)

> [What happens in the background 14](#what-happens-in-the-background)
>
> [HELM Dry run 14](#helm-dry-run)
>
> [Helm Template Command 14](#helm-template-command)
>
> [Helm Get-Command 14](#helm-get-command)
>
> [Helm History 15](#helm-history)
>
> [Helm Rollback 16](#helm-rollback)
>
> [Create Namespace during new installation 16](#create-namespace-during-new-installation)
>
> [Helm Upgrade or Install 17](#helm-upgrade-or-install)
>
> [Generate name for releases 17](#generate-name-for-releases)
>
> [Helm Wait 18](#helm-wait)
>
> [Helm Timeout 19](#helm-timeout)
>
> [Helm Atomic Install 19](#helm-atomic-install)
>
> [Helm Forceful Upgrades 20](#helm-forceful-upgrades)
>
> [Helm Cleanup on failure 21](#helm-cleanup-on-failure)

[**Assignment 2: 21**](#assignment-2)

[**Working with own Charts 22**](#working-with-own-charts)

> [Create Helm Charts 22](#create-helm-charts)
>
> [Folder/File Structure 22](#folderfile-structure)
>
> [Installing the chart using the custom chart 23](#installing-the-chart-using-the-custom-chart)
>
> [How Notes is rendered? 24](#how-notes-is-rendered)
>
> [Understanding Files/Folders 24](#understanding-filesfolders)
>
> [Understand Chart.yaml 24](#understand-chart.yaml)
>
> [Templates Folder 25](#templates-folder)
>
> [Understand Helpers.tpl file 26](#understand-helpers.tpl-file)
>
> [Understand Values.yaml file 27](#understand-values.yaml-file)
>
> [Helm Packaging 28](#helm-packaging)
>
> [Package dependency update 28](#package-dependency-update)
>
> [Package Location 29](#package-location)
>
> [Other Options for packaging 29](#other-options-for-packaging)
>
> [Helm Lint 30](#helm-lint)
>
> [Helm Ignore 31](#helm-ignore)

[**Helm Template & Go Lang 31**](#helm-template-go-lang)

> [Template Actions 31](#template-actions)
>
> [Action element - White space removal 31](#action-element---white-space-removal)
>
> [Action element - String concat 31](#action-element---string-concat)
>
> [Template Information 32](#template-information)
>
> [Template Info: .Values object 32](#template-info-.values-object)
>
> [Template info: .Chart object 33](#template-info-.chart-object)
>
> [Template Info: .Release 34](#template-info-.release)
>
> [Template Info: .Template 34](#template-info-.template)
>
> [Template Info: Pipelines 34](#template-info-pipelines)
>
> [Template Functions 35](#template-functions)
>
> [Default function 35](#default-function)
>
> [Upper function 35](#upper-function)
>
> [Lower function 35](#lower-function)
>
> [Quote function 36](#quote-function)
>
> [Template Conditions 36](#template-conditions)
>
> [Conditions: IF ELSE 36](#conditions-if-else)
>
> [Conditions: With 37](#conditions-with)
>
> [Conditions: Variables 38](#conditions-variables)
>
> [Template Loops 40](#template-loops)
>
> [Loops: For loop 40](#loops-for-loop)
>
> [Loops: Dict types 40](#loops-dict-types)
>
> [Debugging the Templates 40](#debugging-the-templates)
>
> [Helm Get Manifests 41](#helm-get-manifests)
>
> [Helpers.tpl file 41](#helpers.tpl-file)
>
> [Define custom Template 42](#define-custom-template)
>
> [Use the template 42](#use-the-template)
>
> [Passing Default Value 43](#passing-default-value)

[**Advanced Chart 44**](#advanced-chart)

> [Dependencies 44](#dependencies)
>
> [Dependency Version Range 45](#dependency-version-range)
>
> [Chart Lock 46](#chart-lock)
>
> [Using RepoName instead of URL 46](#using-reponame-instead-of-url)
>
> [Conditional Dependency 47](#conditional-dependency)
>
> [Multiple Conditional Dependencies 48](#multiple-conditional-dependencies)
>
> [Passing Values to Dependencies 49](#passing-values-to-dependencies)
>
> [Read Values from Child Chart 51](#read-values-from-child-chart)
>
> [Explicit export and import 51](#explicit-export-and-import)
>
> [Use values that are not exported 51](#use-values-that-are-not-exported)
>
> [Hooks 52](#hooks)
>
> [Options: 53](#options)
>
> [Create and use hook 54](#create-and-use-hook)
>
> [Testing your chart 55](#testing-your-chart)
>
> [Perform testing on a chart 56](#perform-testing-on-a-chart)

[**Assignment 3 56**](#assignment-3)

[**Repositories 57**](#repositories)

> [How to host local chart repository 58](#how-to-host-local-chart-repository)
>
> [Host webserver using python 59](#host-webserver-using-python)
>
> [Using the local repository 60](#using-the-local-repository)
>
> [Installing using HELM PULL 61](#installing-using-helm-pull)
>
> [Update Repositories 61](#update-repositories)
>
> [Github Pages for hosting your charts 62](#github-pages-for-hosting-your-charts)
>
> [OCI Experimental 64](#oci-experimental)

[**Chart Security 65**](#chart-security)

> [PGP Installation 66](#pgp-installation)
>
> [Generate the key 66](#generate-the-key)
>
> [Signing Charts 68](#signing-charts)
>
> [Verify Signature of chart 69](#verify-the-signature-of-the-chart)

The most used helm package repository: [<u>https://bitnami.com/stacks/helm</u>](https://bitnami.com/stacks/helm)

# Why helm?

1.  Revision history

2.  Consistency

# Install Helm

There are 3 ways to install HELM

1.  Using Binaries

2.  Using script. Download the script and run it

3.  Using package managers

    1.  \$ brew install helm

    2.  \$ choco install kubernetes-helm

    3.  USING APT/YUM

Check Installation: \$ helm --help

# Connecting HELM to K8s

HELM uses the same kube config file as kubectl to connect to the cluster.

# HELM Basics

## Basic Commands

<table>
<colgroup>
<col style="width: 41%" />
<col style="width: 58%" />
</colgroup>
<thead>
<tr>
<th style="text-align: left;">Show repo list</th>
<th style="text-align: left;">$ helm repo list</th>
</tr>
<tr>
<th style="text-align: left;">Add new repository</th>
<th style="text-align: left;">$ helm repo add myrepo <a href="https://charts.com/bitnami"><u>https://charts.bitnami.com/bitnami</u></a></th>
</tr>
<tr>
<th style="text-align: left;">Search the repo</th>
<th style="text-align: left;">$ helm search repo mysql</th>
</tr>
<tr>
<th style="text-align: left;">List all versions</th>
<th style="text-align: left;"><p>$ helm search repo mysql --version</p>
<h6 id="by-default-the-latest-version-of-the-chart-is-shown.">By default the latest version of the chart is shown.</h6></th>
</tr>
<tr>
<th style="text-align: left;">Remove repository</th>
<th style="text-align: left;">$ helm repo remove myrepo</th>
</tr>
<tr>
<th style="text-align: left;">Install a chart</th>
<th style="text-align: left;"><p>$ helm install mysql myrepo/mysql</p>
<h6 id="mysql-name-is-unique-in-a-namespace.">mysql name is unique in a namespace.</h6></th>
</tr>
<tr>
<th style="text-align: left;">Check the installation status</th>
<th style="text-align: left;">$ helm status mysql</th>
</tr>
<tr>
<th style="text-align: left;">List releases</th>
<th style="text-align: left;"><p>$ helm list</p>
<p>$ helm list --namespace mysql</p>
<h6 id="by-default-revisions-are-listed-from-default-ns.-use---namespace-or--n-to-specify-a-specific-namespace">By default revisions are listed from default ns. Use --namespace or -n to specify a specific namespace</h6></th>
</tr>
<tr>
<th style="text-align: left;">Remove an installed release</th>
<th style="text-align: left;"><p>$ helm uninstall mysql</p>
<p>$ helm uninstall -n mysql mysql</p>
<h6 id="without-namespace-the-uninstallation-happens-from-default-namespace">Without namespace, the uninstallation happens from default namespace</h6></th>
</tr>
<tr>
<th style="text-align: left;">To upgrade the existing repository</th>
<th style="text-align: left;"><p>$ helm repo update</p>
<h6 id="it-will-connect-to-the-remote-repository-and-pull-the-latest-updates.">It will connect to the remote repository and pull the latest updates.</h6></th>
</tr>
<tr>
<th style="text-align: left;">To update an installed chart</th>
<th style="text-align: left;">$ helm upgrade mysql bitnami/mysql --values /Users/pvikram/Documents/Learning/HELM/mysql/properties.yaml</th>
</tr>
</thead>
<tbody>
</tbody>
</table>

## <img src="docs/helm/img/media/image43.png" style="width:6.5in;height:4.61111in" />Practicing Installation of MySQL with HELM

Adding repo and listing repos

<img src="docs/helm/img/media/image69.png" style="width:5.88542in;height:1.22917in" />

Search for mysql in repos

<img src="docs/helm/img/media/image36.png" style="width:5.94792in;height:1.64583in" />

Installing mysql from bitnami repo

<img src="docs/helm/img/media/image38.png" style="width:5.91667in;height:2.75in" />

Check the status of installation

<img src="docs/helm/img/media/image90.png" style="width:5.90625in;height:1.16667in" />

Get helm installation status

(There will be some instructions to configure mysql or any other chart. Use the below command to get the status and instructions)

<img src="docs/helm/img/media/image112.png" style="width:5.91667in;height:3.27083in" />

Remove installed chart/release

<img src="docs/helm/img/media/image14.png" style="width:5.9375in;height:1.5in" />

## Namespace-specific Installation

Names for installed releases must have a unique name in a namespace. Same name can be used in different namespaces.

<img src="docs/helm/img/media/image130.png" style="width:5.52083in;height:1.71875in" />

<img src="docs/helm/img/media/image72.png" style="width:5.89583in;height:1.78125in" />

<img src="docs/helm/img/media/image41.png" style="width:5.8125in;height:0.85417in" />

## Passing custom configuration to helm

Example: When installing mysql using helm, a password is generated by helm chart. But we can pass the configuration to take the default password.

There are two ways in which custom config is passed.

1.  Using --set

2.  Using YAML property file

Using --set

<img src="docs/helm/img/media/image58.png" style="width:5.9375in;height:1.83333in" />

Using property file

Create a property yaml file and place all your configurations in that file. Pass the file which installing a chart.

<img src="docs/helm/img/media/image71.png" style="width:3.7394in;height:1.20452in" />

<img src="docs/helm/img/media/image129.png" style="width:5.96875in;height:1.8125in" />

<img src="docs/helm/img/media/image53.png" style="width:5.95833in;height:0.76042in" />

## Helm Upgrade

Updating the repository:

\$ helm repo update

This command downloads the latest chart versions from the remote repository.

To update a chart, run the below command. Usually the commands to upgrade a particular chart is already available in the chart documentation.

\$ helm upgrade mysql bitnami/mysql --values \<path to values file\>.

This command will upgrade the installed chart with the latest version if available. You can also see that chart revision is updated.

<img src="docs/helm/img/media/image86.png" style="width:5.32292in;height:0.63542in" />

<img src="docs/helm/img/media/image97.png" style="width:5.94792in;height:1.01042in" />

<img src="docs/helm/img/media/image54.png" style="width:5.90625in;height:0.78125in" />

Helm is smart enough to send just the updates that are required. It wont send all the changes.

## Reusing Values

When performing an upgrade, helm requires same values to be passed again that were used during first installation. When same values are not passed, the helm uses the default values to perform the upgrade.

To avoid this, use --reuse-values option

\$ helm upgrade mysql bitnami/mysql --reuse-values

This command ensures that the same values are used.

## Release Records

Helm maintains release records as secrets in kubernetes. To check the records, use the kubectl get secrets command.

<img src="docs/helm/img/media/image17.png" style="width:5.90625in;height:1.39583in" />

<img src="docs/helm/img/media/image11.png" style="width:5.84375in;height:2.39583in" />

Even after uninstallation, you can store the history

\$ helm uninstall mysql --keep-history

# Assignment 1: Install Tomcat using custom configuration

Created below custom configuration for tomcat server.

tomcatPassword: "testpassword"

service:

type: NodePort

nodePorts:

http: 30007

pdb:

create: true

minAvailable: 2

Other configuration details can be found in the below links.  
[<u>https://github.com/bitnami/charts/tree/main/bitnami/tomcat/#installing-the-chart</u>](https://github.com/bitnami/charts/tree/main/bitnami/tomcat/#installing-the-chart)

[<u>https://artifacthub.io/packages/helm/bitnami/tomcat/10.3.5</u>](https://artifacthub.io/packages/helm/bitnami/tomcat/10.3.5)

<img src="docs/helm/img/media/image94.png" style="width:6.5in;height:3.125in" />

<img src="docs/helm/img/media/image101.png" style="width:6.5in;height:3.66667in" />

# 

# Advanced Commands

## What happens in the background

Focus on what happens during the installation of a helm chart

1.  Load the chart templates and dependencies (if local, else downloads the chart and loads them)

2.  Parses the default values.yaml

3.  Generates the final YAML files by replacing the placeholders

4.  Validates the generated Yaml

5.  Generates the final YAML and sends it to Kube

## HELM Dry run

The dry run helps you check if the templates, values, and everything are properly created and the final YAML is validated.

With a dry-run, 5th phase from above will not be performed.

\$ helm install mydb bitnami/mysql –values \<path\> --dry-run

## Helm Template Command

Several projects require templates as dry-run include non-yaml format code.

\$ helm template mysql bitnami/mysql --namespace mysql --values /Users/pvikram/Documents/Learning/HELM/tomcat/values.yaml

Template command does not just send yaml to kube but also doesn’t validate the code.

## Helm Get-Command

Helm get allows you to do few things

1.  Get release notes: helm get notes mysql

2.  Get Values used: helm get values mysql (only used values)

    1.  helm get values mysql --all (Gives all values even not used.)

    2.  helm get values mysql --revision 2 (Values of a special revision)

3.  Get manifests: helm get manifest mysql (can be used with revision)

## Helm History

This allows you to track all changes made on the chart. It includes not only the upgrade information, and revision information, but also provides the error information. For example, if you install Apache webserver and upgrade with an invalid value, the upgrade fails and that information is also stored in the history.

<img src="docs/helm/img/media/image105.png" style="width:6.42708in;height:1.75in" />

Let’s try to upgrade with an invalid value

<img src="docs/helm/img/media/image49.png" style="width:6.5in;height:0.55556in" />

Let’s check the history

<img src="docs/helm/img/media/image79.png" style="width:6.46875in;height:3.83333in" />

## Helm Rollback

Allows you to roll back during any failure. In the following scenario, the newly installed apache server is running as expected.

<img src="docs/helm/img/media/image37.png" style="width:5.70833in;height:0.47917in" />

Let’s upgrade it with an error

<img src="docs/helm/img/media/image77.png" style="width:6.5in;height:1.15278in" />

Let’s check the rollback function.

<img src="docs/helm/img/media/image5.png" style="width:6.5in;height:3.44444in" />

## Create Namespace during new installation

helm install by default does not create a new namespace and also fails if the namespace doesn’t exist. But, you can force the helm command to create the namespace for you.

\$ helm install mysql --namespace mysql --create-namespace bitnami/mysql

This will ensure that the namespace exists if not creates it.

<img src="docs/helm/img/media/image66.png" style="width:6.5in;height:2.34722in" />

## Helm Upgrade or Install

In CI/CD pipeline this will be very useful. This command will allow to select between install and upgrade operations

1.  If the chart is already installed, the upgrade is used.

2.  If the chart is not installed, the chart is installed with out making any changes to the command.

\$ helm upgrade **--install** mysql bitnami/mysql

## Generate name for releases

You can ask helm to create a name for the release by using the below option. So that you dont have to pass the name to the command. Helm also make sure that the names are not re used.

\$ helm install bitnami/mysql --generate-name

You can also control the name generation using below option.

\$ helm install bitnami/mysql --generate-name --name-template “webserver-**{{randAlpha 7 \| lower}}**”

{{}} - Go lang expression

randAlpha - Golang function

7 - attribute value to the function

lower - Upper case is not allowed by K8s in their names. Hence this golang func allows to convert to lowercase.

## Helm Wait

By default, helm doesn’t wait for the resources to be created. Once the YAML is sent to the Kube in the 5th phase, the helm operation will end. But we can change this functionality by passing the **--wait** option.

\$ helm install mysql bitnami/mysql --wait

This option ensures that the resources are created and the pods are up and running.

<img src="docs/helm/img/media/image6.png" style="width:6.40625in;height:1.02083in" />

<img src="docs/helm/img/media/image2.png" style="width:2.28125in;height:0.36458in" />

Let’s try installing with the wait option

<img src="docs/helm/img/media/image47.png" style="width:6.5in;height:2.84722in" />

You can compare the start and end time. Only when the requested pods are completely up and running, then only the helm operation exits.

<img src="docs/helm/img/media/image87.png" style="width:6.5in;height:3.08333in" />

## Helm Timeout

Wait option is a great way to ensure the successful creation of K8s resources. But what if the installation is held due to k8s resources not getting created successfully. Timeout option helps you to define the length of time you want to wait.

\$ helm install apache bitnami/apache --wait --timeout 10m5s

## Helm Atomic Install

Due to any reason, if the release fails, the --atomic option will roll it back to the previous successful release.

\$ helm install apache bitnami/apache --atomic

<img src="docs/helm/img/media/image12.png" style="width:6.5in;height:2.0625in" />

The rollback information is also recorded in the helm history with a new revision which is rolling back to revision 1.

<img src="docs/helm/img/media/image56.png" style="width:6.5in;height:3.76389in" />

You can also use timeout and wait with atomic releases.

## Helm Forceful Upgrades

With default upgrade, the helm only restarts pods whose values are changed rather than restarting all the pods. We can change this functionality by passing the force option.

\$ helm upgrade mysql bitnami/mysql --force

## Helm Cleanup on failure

During any failure, not all resources like config maps, etc are removed. You can pass --cleanup-on-failure option to remove them.

\$ helm upgrade --install apache bitnami/apache --cleanup-on-failure

This will ensure the upgrade or install cleans all the resources when failed to complete successfully.

This is not recommended as cleaning all will not allow us to debug the issue.

# Assignment 2: 

Install apache tomcat on the kubernetes cluster and write commands for all the below.

<img src="docs/helm/img/media/image125.png" style="width:2.64583in;height:1.54167in" />

<table>
<colgroup>
<col style="width: 24%" />
<col style="width: 75%" />
</colgroup>
<thead>
<tr>
<th>Generate Name</th>
<th><p>$ helm install bitnami/tomcat --generate-name --name-template “server-{{randAlpha 10 | lower}}”</p>
<h6 id="if-the-command-is-failing-make-sure-to-check-the-double-quotations">If the command is failing make sure to check the double-quotations</h6></th>
</tr>
<tr>
<th style="text-align: left;">Dry run</th>
<th><p>$ helm install bitnami/tomcat --generate-name --name-template “server-{{randAlpha 10 | lower}}” --dry-run</p>
<h6 id="if-the-command-is-failing-make-sure-to-check-the-double-quotations-1">If the command is failing make sure to check the double-quotations</h6></th>
</tr>
<tr>
<th style="text-align: left;">Templates</th>
<th><p>$ helm template bitnami/tomcat --generate-name --name-template "server-{{randAlpha 10|lower}}"</p>
<h6 id="if-the-command-is-failing-make-sure-to-check-the-double-quotations-2">If the command is failing make sure to check the double-quotations</h6></th>
</tr>
<tr>
<th style="text-align: left;">Get release notes</th>
<th>$ helm get notes server-hggblacjrz</th>
</tr>
<tr>
<th style="text-align: left;">Get release records</th>
<th>$ kubectl get secrets</th>
</tr>
</thead>
<tbody>
</tbody>
</table>

# Working with own Charts

## Create Helm Charts

To create your own helm chart use the below command to create the template. By default, the nginx chart is used to create the structure.

\$ helm create first-chart

But you can use a different chart as your starter chart.

### Folder/File Structure

By running the above command, the below structure is created under firstChart folder which is the name we passed in the command.

<img src="docs/helm/img/media/image70.png" style="width:4.98958in;height:2.29167in" />

| Name | Type | Description |
|----|----|----|
| Chart.yaml | File | Metadata of the chart |
| Charts | folder | Dependency charts are pulled and stored |
| templates | folder | All the yaml files to create the K8s resources are stored here |
| values.yaml | file | All the values to render the chart yaml is stored in this file |
| Notes.txt | file | Release notes for this chart is stored in this file |

### Installing the chart using the custom chart

In the previous step we created the custom chart. Now lets install the chart.

\$ helm install firstChart firstChart (Assuming that the firstChart is the name of the folder in pwd)

<img src="docs/helm/img/media/image74.png" style="width:6.5in;height:3.38889in" />

Installation failed because the kubernetes do not allow Capital letters in the names of the resources. To fix this, we need to re create the structure with firstchart instead of firstChart

<img src="docs/helm/img/media/image126.png" style="width:6.5in;height:2.73611in" />

#### How Notes is rendered?

The NOTES.txt holds the information with placeholders. The placeholders are replaced with the values from values.yaml.

<img src="docs/helm/img/media/image10.png" style="width:6.5in;height:4.70833in" />

.Values.service.type is rendered from the value in the values.yaml

<img src="docs/helm/img/media/image15.png" style="width:6.5in;height:0.77778in" />

## Understanding Files/Folders

### Understand Chart.yaml

apiVersion: v2

name: firstchart

description: A Helm chart for Kubernetes

type: application

version: 0.1.0

appVersion: "1.16.0"

Chart.yaml holds the metadata of the chart. Artifacthub and other artifact hubs use the information from this file.

There are three important elements

1.  apiVersion: Determines the format of the document. Helm 3.0 uses the v2 version.

2.  name: Name of the chart

3.  version: Version of the chart. Start from 0.1.0. When any change is made to the chart, value can be bumped.

Rest of the elements are optional.

1.  description: used to describe the chart

2.  type: Application / Library. When set to Library, only functions that can be used by other charts are defined. It won’t have any templates.

3.  appVersion: Version of the application that is packaged through this chart.

Optional Elements:

1.  icon: Link to image file remote or local

2.  keywords: List of keywords that define this project. Like db, mysql, etc…

3.  home: URL to the project on the internet. Like the home page, etc…

4.  sources: URLs to different source information. This is an YAML array

sources:

\- [<u>http://pruthvivikram.com/helm</u>](http://pruthvivikram.com/helm)

\- [<u>http://pruthvivikram.com</u>](http://pruthvivikram.com/helm)

5.  maintainers:

\- name: pruthvi

email: [<u>test@gmail.com</u>](mailto:test@gmail.com)

\- name: vikram

email: [<u>tes1t@gmail.com</u>](mailto:test@gmail.com)

### Templates Folder

Heart of Helm charts. Yaml files are included in this folder with placeholders whose values are replaced using the values.yaml file. This is the google go templating structure. Using this templating structure, you can also specify conditions as well.

<img src="docs/helm/img/media/image127.png" style="width:6.5in;height:3.30556in" />

### Understand Helpers.tpl file

If you want to define any methods that can be used across all the template files, you can define them in this \_helpers.tpl file

Sample function to expand the name of the chart.

<img src="docs/helm/img/media/image85.png" style="width:6in;height:3.125in" />

### Understand Values.yaml file

In the values.yaml default values are already present based on the chart. You can replace/change the defined values.

This is how the values are defined.

<img src="docs/helm/img/media/image63.png" style="width:6.5in;height:5.40625in" />

How defined values are used?

<img src="docs/helm/img/media/image121.png" style="width:5.60417in;height:3.40625in" />

This is how the values file are referred in the deployment files.

## Helm Packaging

This is the process of packaging the created chart to repositories, hubs, etc so that it can be install across different environments like QA, Staging, Production, etc… through CI/CD pipelines, etc…

\$ helm package firstchart

<img src="docs/helm/img/media/image34.png" style="width:6.5in;height:0.94444in" />

Being at the root level of the chart folder, run the above command. This will generate .tgz file which will have all the required files along with the version of the chart.

Helm install command also works with this .tgz file. Highlighted in orange is the format in which the command expects.

### Package dependency update

\$ helm package firstchart **--dependency-update**

\$ helm package firstchart **-u**

This command downloads the latest dependencies and updates the package. The latest version of the dependency charts are stored in the charts folder before packaging.

### Package Location

By default the final package (.tgz) file is stored inside the present working directory. If you want to change the location use -d flag.

<img src="docs/helm/img/media/image91.png" style="width:4.17708in;height:0.57292in" />

\$ helm package firstchart --destination \<path\>

\$ helm package firstchart -d \<path\>

<img src="docs/helm/img/media/image25.png" style="width:6.47917in;height:0.625in" />

### Other Options for packaging

Visit [<u>https://helm.sh/docs/helm/helm_package/</u>](https://helm.sh/docs/helm/helm_package/) for other packaging options.

<img src="docs/helm/img/media/image7.png" style="width:6.5in;height:1.72222in" />

<img src="docs/helm/img/media/image67.png" style="width:6.5in;height:3.31944in" />

## Helm Lint

This command scans through the code and fixes syntactic and indent issues with the templates or commands.

There are three types of errors

1.  INFO

2.  WARNING

3.  ERROR

INFO and WARNING returns 0 error code.

ERROR returns a non-zero error code.

<img src="docs/helm/img/media/image124.png" style="width:6.5in;height:1.55208in" />

<img src="docs/helm/img/media/image35.png" style="width:4.45833in;height:0.94792in" />

## Helm Ignore

If you want to ignore a file from packaging you can add those files or patterns in the .helmignore file

[<u>https://helm.sh/docs/chart_template_guide/helm_ignore_file</u>](https://helm.sh/docs/chart_template_guide/helm_ignore_file/)

# Helm Template & Go Lang

Template uses go lang to control what resources are created in clusters. Not whole golang is required to develop templates.

## Template Actions

Actions start and end with two flower brackets. We use these to define variables, invoking functions, etc. Anything outside the brackets are rendered as is. The content inside the brackets are evaluated and rendered.

{{ ACTION }}

{{ include “firstchart.fullname” . }}

### Action element - White space removal

{{- include “firstchart.fullname” . -}} : - is used to remove any leading or trailing spaces. Since yaml is stricts about spaces and indentation, hyphens are used to remove additional spaces.

Only one hyphen - is required for one set of braces. Either at the end or at the start. {{- “”}} or {{“” -}}.

### Action element - String concat

If you have two string in action block, you can separate them using a comma.

{{- “Hello ” }}, {{ “World” -}}

<img src="docs/helm/img/media/image92.png" style="width:4.80208in;height:1.875in" />

<img src="docs/helm/img/media/image16.png" style="width:5.92708in;height:0.60417in" />

<img src="docs/helm/img/media/image118.png" style="width:3.45833in;height:0.94792in" />

## Template Information

When helm renders, it passes all the information represented by a dot (.) object.

<img src="docs/helm/img/media/image80.png" style="width:3.32292in;height:0.94792in" />

### Template Info: .Values object

Ex: The value defined in the values.yaml can be accessed using the . object

<img src="docs/helm/img/media/image59.png" style="width:4.78125in;height:1.74453in" />

This my.custom.data value can be accessed using dot(.) object as follows.

{{.Values.my.custom.data}}

<img src="docs/helm/img/media/image39.png" style="width:5.83333in;height:2.03125in" />

##### .Values represents the values.yaml file and its contents.

### Template info: .Chart object

You can use the chart information from charts.yaml file using .Chart object.

<img src="docs/helm/img/media/image57.png" style="width:5.15625in;height:1.96875in" />

<img src="docs/helm/img/media/image78.png" style="width:6.5in;height:2.29167in" />

### Template Info: .Release

This will give the release information. This information can be used to display as information or in the conditional statements.<img src="docs/helm/img/media/image32.png" style="width:6.5in;height:1.81944in" />

### Template Info: .Template

You can get the template information using below

<img src="docs/helm/img/media/image44.png" style="width:6.5in;height:2.34722in" />

### Template Info: Pipelines

<img src="docs/helm/img/media/image42.png" style="width:3.10417in;height:0.59375in" />

Pipe symbol is used to pass the output of the previous function or variable to the next command/function

Here in the above example, toYaml . output is passed to nindent function with 8 as an attribute value.

## Template Functions

Functions are used to perform set of operations. They can be used anywhere in the template file. Some of the functions are nindent, toYaml, etc.

You can find the list of functions in the below URL.

[<u>https://helm.sh/docs/chart_template_guide/function_list/</u>](https://helm.sh/docs/chart_template_guide/function_list/)

### Default function

<img src="docs/helm/img/media/image107.png" style="width:6.5in;height:0.88889in" />

Custom.data has a value hence it is printed as “This is test value.”

Custom.data1 has no value, so it printed the “Default information” as output.

### Upper function

<img src="docs/helm/img/media/image3.png" style="width:6.125in;height:1.67708in" />

### Lower function

<img src="docs/helm/img/media/image3.png" style="width:6.125in;height:1.67708in" />

### Quote function

<img src="docs/helm/img/media/image45.png" style="width:6.1875in;height:1.52083in" />

## Template Conditions

### Conditions: IF ELSE

<img src="docs/helm/img/media/image52.png" style="width:4.54167in;height:2.53125in" />

<img src="docs/helm/img/media/image123.png" style="width:4.51484in;height:3.03709in" />

### Conditions: With

You can run each value from a Yaml array using with clause.

<img src="docs/helm/img/media/image104.png" style="width:3.0919in;height:2.56431in" /><img src="docs/helm/img/media/image111.png" style="width:2.94792in;height:2.5625in" />

You can also use else condition with with condition. If the array is empty, then the else clause kick in.

<img src="docs/helm/img/media/image106.png" style="width:3.80208in;height:1.66667in" />

Hare, if the podAnnotations array is present, then the annotations: is printed with each array value. If the array is empty, then the whole portion is skipped.

### Conditions: Variables

<img src="docs/helm/img/media/image40.png" style="width:4.3125in;height:1.79167in" />

Variable is created in {{\$VARNAME}} format.

To assign a value we use :=

To reassign a value we use =

<img src="docs/helm/img/media/image122.png" style="width:4.0625in;height:2.4375in" /><img src="docs/helm/img/media/image30.png" style="width:3.875in;height:2.26042in" />

## Template Loops

### Loops: For loop

<img src="docs/helm/img/media/image73.png" style="width:3.08333in;height:2.4375in" />

Range is used as for loop in Helm templates. Unlike with, range process one element at a time.

### Loops: Dict types

<img src="docs/helm/img/media/image96.png" style="width:6.5in;height:2.95833in" />

## Debugging the Templates

You can use --debug to check if there are any errors in the code or template. You can use the dry-run to validate the syntactical and semantical errors in the code.

You can also perform the same using the helm template. But, the only difference is that the template command doesn’t do the validation. For example, if you remove the **kind: Deployment** and run the helm template firstchart, It will print the data as it’s not performing any validation. But if you do the same with **helm install --dry-run firstchart**, It will fail.

## Helm Get Manifests

Very useful to get the manifest while doing the installation. The manifest sent to kubernetes after rendering all the template files can be retrieved using this command.

<img src="docs/helm/img/media/image27.png" style="width:6.5in;height:3.04095in" />

## Helpers.tpl file

.tpl stands for template. This host several functions that are used across the templates.

{{- define “firstchart.name” -}} is the template of the defining a function.

{{- include “firstchart.name” -}} or {{- template “firstchart.name” -}} is used to reference above defined namespace.

Diff is with template, you can not use output to pipe to another function, its only possible with include.

### Define custom Template

<img src="docs/helm/img/media/image76.png" style="width:6.5in;height:1.38889in" />

Now you can use firstchart.mytemplate anywhere. And the value is referenced from values.yaml.

### Use the template

<img src="docs/helm/img/media/image9.png" style="width:5.84375in;height:3.5625in" />

<img src="docs/helm/img/media/image113.png" style="width:6.5in;height:3.31944in" />

### Passing Default Value

<img src="docs/helm/img/media/image8.png" style="width:4.96875in;height:2.25in" />

This way we can set a default value. If the values.yaml is missing myTemplate variable and values, it will return the default value here in this case, Chart Name

<img src="docs/helm/img/media/image4.png" style="width:6.5in;height:3.48611in" />

# Advanced Chart

- Dependency management

- Exchanging values across dependency charts

- Helm Hooks

- How to test your chart?

## Dependencies

In the chart.yaml, add dependency section

dependencies:

- name: mysql

> version: “8.8.6”
>
> repository: “[<u>https://charts.bitnami.com/bitnami</u>](https://charts.bitnami.com/bitnami)”

Now the dependencies have been defined. Let’s update the dependency

\$ helm dependency update

By now, the dependency chart has been downloaded and stored in the charts folder from the central repository.

<img src="docs/helm/img/media/image29.png" style="width:6.5in;height:3.13889in" />

### Dependency Version Range

Instead of hardcoding the chart version in the dependency, we can mention range.

<img src="docs/helm/img/media/image51.png" style="width:6.5in;height:3.33333in" />

Other options

~ 1.3.4, ~ 2, ~ 2.3, \>= 1.2.3, \< 1.4.0, \>= 2, \>= 2.3, \<2.4, \<3

### Chart Lock

Helm also generates a lock file for charts. Its called chart.lock. This file consists of the dependency list along with the version of chart.

<img src="docs/helm/img/media/image23.png" style="width:6.5in;height:2.43056in" />

### Using RepoName instead of URL

If we already have a repository thats already downloaded to local, we can mention the name directly instead of URL.

“@bitnami”

<img src="docs/helm/img/media/image103.png" style="width:6.5in;height:2.33473in" />

### Conditional Dependency

In the values.yaml, define a property

mysql:

enable: false

And in the chart.yaml, set a variable for dependency to check the condition

condition: mysql.enabled

Below is when the mysql is disabled

<img src="docs/helm/img/media/image114.png" style="width:6.5in;height:5.05556in" />

Below is when the condition is set to true.

<img src="docs/helm/img/media/image89.png" style="width:6.5in;height:4.91667in" />

### Multiple Conditional Dependencies

If you have multiple conditions, instead of repeating values in values.yaml you can use TAGS

In the below screenshot, tags are used to disable mysql installation.

<img src="docs/helm/img/media/image22.png" style="width:6.5in;height:4.79167in" />

## Passing Values to Dependencies

Usually for dependency charts, the default values are passed. But if you want to customize your chart, use the values.yaml and chart.yaml.

Values.yaml

mysql:

auth:

rootPassword: test1234

<img src="docs/helm/img/media/image98.png" style="width:6.5in;height:2.48611in" />

Let’s test the custom values

<img src="docs/helm/img/media/image50.png" style="width:6.5in;height:3.13889in" />

<img src="docs/helm/img/media/image109.png" style="width:6.5in;height:1.40278in" />

### Read Values from Child Chart

We can use import-values element in the chart dependency to import values from child to parent chart.

### Explicit export and import

Usually the child chart exports few values explicitly. Mysql wont do that. But if the child chart’s values.yaml has a property like below

export:

service:

port: 8080

And the chart dependencies has

import-values:

- service

With this setup, the service can be used in any of the parent child’s yaml files as if they are added in the values.yaml file.

{{- .Values.service.type .}}

### Use values that are not exported

NOTE: If the child’s values.yaml file doesn’t contain export, then the child dependency doesn’t export any values. But even then we can use the values.

In chart.yaml, instead of element name, use below element configuration

import-values:

- child: primary.service

- parent: mysqlService

With this configuration, you can get use mysql’s service details in the parent yamls.

<img src="docs/helm/img/media/image62.png" style="width:6.5in;height:3.44444in" />

## Hooks

Used to take special actions during the release process. The file is created under chart’s templates folder.

hookpod.yaml is the file that can be used to create any kubernetes resources

<img src="docs/helm/img/media/image60.png" style="width:5.69792in;height:3.40764in" />

In the above hookpod, a busy box pod is getting created. The hook is identified based on the annotations that are added in the yaml file.

helm.sh/hook is used to decide when to run the hook.  
pre-install : Before any of the other resources are created, the busy-box is created and run.

You can deploy any type Kubernetes resources but not only the pod.

### Options:

1.  Pre-install : before release

2.  Post-install : After installation of release

3.  Pre-delete : before uninstall

4.  Post-delete : After uninstall

5.  Pre-upgrade

6.  Post-upgrade

7.  Pre-rollback : Before the rollback of any installation

8.  Post-rollback

9.  Test : To perform tests.

Other property

10. Before-hook-creation

11. Hook-succeeded

12. Hook-failed

Weight

Ascending order. If you have multiple hooks, you can define this.

###  

### Create and use hook

<img src="docs/helm/img/media/image88.png" style="width:6.5in;height:6.05556in" />

With hook-succeeded in the delete-policy, the pod is deleted when the hook is successfully created.

<img src="docs/helm/img/media/image75.png" style="width:6.5in;height:3.375in" />

## Testing your chart

By default when a new chart is created, test-connection.yaml file is created.

By default a test type hook is added in the annotations.

<img src="docs/helm/img/media/image83.png" style="width:6.5in;height:2.27778in" />

In above case, the test is run on the nginx pod, wget command is used to test the connection. If the wget command returns 0 its successful and if it returns non-zero code, then its a failure.

### Perform testing on a chart

Helm test is conducted on a release but not at the template level. So run the installation first.

Then run the below command to run the tests.

\$helm test secondchart

<img src="docs/helm/img/media/image68.png" style="width:6.5in;height:2.18056in" />

# Assignment 3

Create a chart dependency, Package, Install the chart.

Dependency : tomcat

Custom values:

tomcat:

service:

type: NodePort

nodePort: 30007

<img src="docs/helm/img/media/image117.png" style="width:6.5in;height:6.48611in" />

# Repositories

Helm repos are simple http repositories. In this you will learn how to

- generate indexes

- Setup local repo using Python web server

- Host a public chart repository using GitHub pages

- Launch OCI registry locally using Docker

## How to host local chart repository

Create a folder chartsrepo

Or use command \$ helm repo index chartsrepo/

This will create index.yaml file.

<img src="docs/helm/img/media/image110.png" style="width:6.5in;height:0.77778in" />

Index.yaml contents

<img src="docs/helm/img/media/image46.png" style="width:6.5in;height:1.55556in" />

Now package and put the chart in the chartsrepo folder.

<img src="docs/helm/img/media/image19.png" style="width:6.5in;height:1.20833in" />

Now update the repo index and observe the changes.

<img src="docs/helm/img/media/image24.png" style="width:6.5in;height:0.80069in" /><img src="docs/helm/img/media/image24.png" style="width:6.5in;height:2.97392in" />

## Host webserver using python

Run the http server in the chartsrepo directory

\$ python3 -m http.server --bind 127.0.0.1 8080

<img src="docs/helm/img/media/image99.png" style="width:6.5in;height:0.83333in" />

## <img src="docs/helm/img/media/image81.png" style="width:6.5in;height:1.70833in" />Using the local repository

First add the local repository

Currently we only have the bitnami repo

<img src="docs/helm/img/media/image64.png" style="width:5.04167in;height:0.89583in" />

Add the local repo

<img src="docs/helm/img/media/image28.png" style="width:6.5in;height:1.04167in" />

Install from repo

<img src="docs/helm/img/media/image20.png" style="width:5.38021in;height:2.82488in" />

## Installing using HELM PULL

Instead of pulling the chart from the local or remote repository, we can first download the chart locally and then install it.

Pull the chart locally.

<img src="docs/helm/img/media/image55.png" style="width:5.84375in;height:1.40625in" />

## Update Repositories

Sometimes when the new chart is added to the repositories, helm search command won’t pickup as the helm search command uses a local cache to search for the chart packages.

<img src="docs/helm/img/media/image18.png" style="width:6.44792in;height:1.61458in" />

In order to update the local chart repo use

<img src="docs/helm/img/media/image93.png" style="width:6.5in;height:1.63889in" />

With this, the local cache is updated and we can search the new cache.

## Github Pages for hosting your charts

1.  Create a new repository

2.  Set access to public

3.  Readme and all are optional

4.  Goto command line

5.  clone the repository locally

6.  Create new chart in the gir repo folder

7.  Create package from the chart

8.  Index the chart in the same folder

9.  Perform git add, commit and push

To use this git repo as pages, goto github repo settings -\> pages -\> select source to master

By this, github repository is configured as webserver and all the changes are published.

Once saved, the site url is generated and you can use it as a helm repository.

<img src="docs/helm/img/media/image21.png" style="width:6.5in;height:2.58333in" />

Index the repository

<img src="docs/helm/img/media/image33.png" style="width:5.375in;height:1.26042in" />

Push changes to git

<img src="docs/helm/img/media/image61.png" style="width:6.5in;height:3.98611in" />

Change the settings of the repository

<img src="docs/helm/img/media/image128.png" style="width:6.5in;height:3.11111in" />

Upon saving copy the URL and add repo in your local<img src="docs/helm/img/media/image108.png" style="width:6.5in;height:1.12228in" />

<img src="docs/helm/img/media/image115.png" style="width:6.5in;height:2.01389in" />

## OCI Experimental

Using the Open Container Initiative to host helm repositories.

First enable the HELM_EXPERIMENTAL_OCI. You can do it by configuring an environment variable.

<img src="docs/helm/img/media/image100.png" style="width:6in;height:0.76042in" />

Run local OCI registry using Docker image

<img src="docs/helm/img/media/image13.png" style="width:6.5in;height:0.80556in" />

Now the OCI registry is created. Let’s create the package from a chart

<img src="docs/helm/img/media/image95.png" style="width:6.5in;height:1.30556in" />

Commands

<table>
<colgroup>
<col style="width: 18%" />
<col style="width: 81%" />
</colgroup>
<thead>
<tr>
<th style="text-align: left;">Push chart</th>
<th style="text-align: left;">helm push ocichart-0.2.0.tgz oci://localhost:5001/helm-charts</th>
</tr>
<tr>
<th style="text-align: left;">Show all</th>
<th style="text-align: left;">helm show all oci://localhost:5001/helm-charts/ocichart --version 0.1.0</th>
</tr>
<tr>
<th style="text-align: left;">Pull chart</th>
<th style="text-align: left;">helm pull oci://localhost:5001/helm-charts/ocichart --version 0.1.0</th>
</tr>
<tr>
<th style="text-align: left;">See template</th>
<th style="text-align: left;">helm template myrelease oci://localhost:5001/helm-charts/ocichart –version 0.1.0</th>
</tr>
<tr>
<th style="text-align: left;">Install chart</th>
<th style="text-align: left;">helm install myrelease oci://localhost:5001/helm-charts/ocichart –version 0.1.0</th>
</tr>
<tr>
<th style="text-align: left;">Upgrade chart</th>
<th>helm upgrade myrelease oci://localhost:5001/helm-charts/ocichart –version 0.2.0</th>
</tr>
<tr>
<th style="text-align: left;">Login to registry</th>
<th><p>helm registry login -u username oci://localhost:5001</p>
<h6 id="only-for-remote-registry">(Only for remote registry)</h6></th>
</tr>
<tr>
<th style="text-align: left;">Logout from registry</th>
<th><p>helm registry logout oci://localhost:5001</p>
<p><em>(Only for remote registry)</em></p></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

# Chart Security

<img src="docs/helm/img/media/image131.png" style="width:4.51236in;height:1.78219in" />

When it comes to charts, provenance and integrity are important.

Provenance : Ensuring that the chart is from the right provider

Integrity : Ensuring that the contents of the chart are not altered.

Helm uses inbuilt PGP(pretty good privacy). Where private key and public key are used.

The private key is used to encrypt the package.tgz file which creates package.tgz.prov file. Both these files are then pushed to the repository.

The public key of the provider is used by the user to ensure that the signature of the downloaded chart are same using the command

\$ helm install --verify

## PGP Installation

We need a public and private key

- Download GNUPG from gnupg.org

- Perform the installation (For mac use brew install gnupg)

Run the command

Gnu privacy guard(gpg)

\$ gpg –version

This is where all the keys are stored. You can use these keys to sign and verify the chart

### Generate the key

\$ gpg --full-generate-key

Select the type of the key (default is RSA)

Select the size : 3072 is default

Select the expiration: 0 is for never expire

Give the real name : YOUR NAME

Email address : Email is used as alias to the key

Comment : optional

Finally, you have to select the passphrase to access the keys.

<img src="docs/helm/img/media/image48.png" style="width:6.5in;height:5.63889in" />

By now the keys are stored under ~/.gnupg/

As of 2021, kbx files are generated by pgp commands. But we need to convert them to .gpg files for helm to use.

<img src="docs/helm/img/media/image82.png" style="width:6.5in;height:3.30556in" />

Use the below command to perform the conversion.

\$ gpg --export-secret-keys \> ~/.gnupg/secring.gpg

<img src="docs/helm/img/media/image1.png" style="width:6.5in;height:0.68056in" />

Now both public and private keys are part of the gpg file and ready to be used by helm

### Signing Charts

Let’s sign the chart while packaging

- Create a new chart

- Run the command to package along with signing

<img src="docs/helm/img/media/image102.png" style="width:6.5in;height:1.36111in" />

Two files are created.

<img src="docs/helm/img/media/image65.png" style="width:5.13542in;height:0.80208in" />

The prov file has the signing information.

### Verify the Signature of the chart

<img src="docs/helm/img/media/image31.png" style="width:6.5in;height:1.19444in" />

we create an index in the chart repo and start the local repository server.

With the below command, we can verify and install the chart when pulled from the repository.

<img src="docs/helm/img/media/image84.png" style="width:6.5in;height:3.23611in" />

If the installation fails, then it implies that the chart signature is not verified. You would see an error.

# Use Cases

<img src="docs/helm/img/media/image116.png" style="width:6.5in;height:1.16667in" />

For this use case, we will be performing below set of actions

- Create chart and configure image

- Update Deployment with probes

- Configure NodePort, change from default service

- Add MySQL dependency to the chart

- Pass values for the MySQL

- Configure ConfigMap

## Create chart and configure image

<img src="docs/helm/img/media/image26.png" style="width:6.16667in;height:0.58333in" />

We dont need hpa(scaling) ingress and service account. So remove those yamls.

For all the steps, go through the commits and check the changes.

GIT URL:

<img src="docs/helm/img/media/image119.png" style="width:6.5in;height:2.63889in" />

# HELM Starters

Skipping the topic as it’s not important and is not usually used in corporate.
