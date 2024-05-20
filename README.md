# NYC Payroll Data Analytics Pipeline

## Project Overview

**Introduction**
The City of New York aims to develop a **Data Analytics platform** on Azure Synapse Analytics with two main objectives:
- **Financial Resource Analysis**: To analyze the allocation of the City's financial resources and the budget devoted to overtime.
- **Public Data Availability**: To make salary and overtime pay data for all municipal employees available to the public.

**dynamic**, **automatable**, and **monitorable** data pipelines to ensure efficient operation will be created. The project includes quality assurance experts to test and improve data quality.

## Data Sources
- **Azure Data Lake**: Contains CSV files with Employee master data and monthly payroll data from various City agencies.

## NYC Payroll DB Schema


## Pipeline Overview
- **Azure Data Factory**: Used to create Data views in Azure SQL DB from source data files in DataLake Gen2.
- **Dataflows and Pipelines**: Constructed to create aggregated payroll data, exported to a target directory in DataLake Gen2 storage.
- **Synapse Analytics External Table**: Built over the exported data for analytics.

## Instructions
Detailed instructions for each step of the pipeline creation process including:
1. **Resource Configuration**
2. **Linked Services Creation**
3. **Datasets Creation**
4. **Data Flows Creation**
5. **Aggregate Data Flow**
6. **Pipeline Execution**
7. **GitHub Integration**

