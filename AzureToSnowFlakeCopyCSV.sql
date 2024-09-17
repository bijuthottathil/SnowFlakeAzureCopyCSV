
CREATE STORAGE INTEGRATION azure_integration
  TYPE = EXTERNAL_STAGE
  STORAGE_PROVIDER = AZURE
  ENABLED = TRUE
  AZURE_TENANT_ID = "your tenant id"
  STORAGE_ALLOWED_LOCATIONS = ('azure://snowflakestoragebiju.blob.core.windows.net/csv', 'azure://storageaccountsnow.blob.core.windows.net/json');

DESC INTEGRATION azure_integration
 
CREATE OR REPLACE FILE FORMAT OUR_FIRST_DB.PUBLIC.FILEFORMAT_AZURE
TYPE=CSV
FIELD_DELIMITER=','
SKIP_HEADER=1;



CREATE OR REPLACE STAGE OUR_FIRST_DB.PUBLIC.STAGE_AZURE 
STORAGE_INTEGRATION = azure_integration
URL='azure://snowflakestoragebiju.blob.core.windows.net/csv'
FILE_FORMAT=FILEFORMAT_AZURE

LIST @OUR_FIRST_DB.PUBLIC.STAGE_AZURE 

select     $1,$2 
from @OUR_FIRST_DB.PUBLIC.STAGE_AZURE

create or replace table happiness (
    country_name varchar,
    regional_indicator varchar,
    ladder_score number(4,3),
    standard_error number(4,3),
    upperwhisker number(4,3),
    lowerwhisker number(4,3),
    logged_gdp number(5,3),
    social_support number(4,3),
    healthy_life_expectancy number(5,3),
    freedom_to_make_life_choices number(4,3),
    generosity number(4,3),
    perceptions_of_corruption number(4,3),
    ladder_score_in_dystopia number(4,3),
    explained_by_log_gpd_per_capita number(4,3),
    explained_by_social_support number(4,3),
    explained_by_healthy_life_expectancy number(4,3),
    explained_by_freedom_to_make_life_choices number(4,3),
    explained_by_generosity number(4,3),
    explained_by_perceptions_of_corruption number(4,3),
    dystopia_residual number (4,3));

select * from happiness


CREATE OR REPLACE FILE FORMAT OUR_FIRST_DB.PUBLIC.FILEFORMAT_AZURE
TYPE=CSV
FIELD_DELIMITER=','
SKIP_HEADER=1;


COPY INTO HAPPINESS
FROM @OUR_FIRST_DB.PUBLIC.STAGE_AZURE

select * from HAPPINESS
