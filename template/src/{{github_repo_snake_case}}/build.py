## Use pytask to manage Python build steps

import pytask


@pytask.mark.metadata
def task_metadata_STEP(): ...


@pytask.mark.raw
def task_download_raw_STEP(): ...


@pytask.mark.staging
def task_process_STEP(): ...
