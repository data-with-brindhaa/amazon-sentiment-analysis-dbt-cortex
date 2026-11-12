# Amazon Review Sentiment Analysis Using Snowflake, dbt & Cortex AI

## Project Overview

An end-to-end data engineering project that analyzes Amazon product reviews and customer feedback using Snowflake, dbt Core, and Snowflake Cortex AI.

The project focuses on building scalable data transformation pipelines, analyzing product ratings, and extracting meaningful customer sentiment insights using AI.

## Business Objectives

- Transform raw Amazon product and review data into structured datasets.
- Analyze customer ratings and product performance.
- Identify positive, negative, and neutral customer sentiment.
- Build reusable data pipelines using dbt.
- Generate actionable insights using Snowflake Cortex AI.

## Technology Stack

| Technology | Purpose |
|---|---|
| Snowflake | Cloud data warehouse |
| dbt Core | Data transformation and modeling |
| Docker | Containerized dbt environment |
| SQL | Data extraction and transformation |
| Python | dbt runtime and supporting tasks |
| Snowflake Cortex AI | AI-powered sentiment analysis |
| Git & GitHub | Version control and documentation |

## Data Source

Amazon Best Sellers Ratings and Reviews dataset from Snowflake Marketplace.

**Source tables:**
- PRODUCTS – Product details, ratings, and descriptions.
- REVIEWS – Customer feedback, review text, ratings, and purchase information.

## Development Environment – Docker & dbt

Set up a containerized dbt development environment using Docker to ensure a consistent and isolated workspace.

- Created a custom Docker image using `python:3.11-slim`.
- Installed `dbt-core` and `dbt-snowflake` inside the container.
- Initialized the dbt project within the Docker environment.
- Configured the Snowflake connection using `profiles.yml`.
- Verified the connection using `dbt debug`.

## Data Architecture

The project follows the Medallion Architecture:

- **Bronze Layer:** Raw product and review data.
- **Silver Layer:** Cleaned, standardized, and joined datasets.
- **Gold Layer:** Business-ready product analytics and sentiment insights.

## dbt Data Models

The dbt project is organized into three layers:

| Layer | Models |
|---|---|
| Staging | `stg_amazon_products`, `stg_amazon_reviews` |
| Intermediate | `int_product_reviews` |
| Marts | `fct_product_sentiment` |

This layered approach improves modularity, maintainability, and reusability.

## Snowflake Cortex AI Integration

Snowflake Cortex AI will be used to analyze customer review text and classify sentiment as positive, negative, or neutral.

Planned analysis includes product-level sentiment distribution and identifying trends in customer feedback.

## Project Status

**In Progress**

Current focus: dbt model development, data transformations, and GitHub version control.

Upcoming work includes data quality testing, Snowflake Cortex AI integration, performance optimization, and project documentation.
