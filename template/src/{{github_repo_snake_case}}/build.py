## Use pytask to manage Python build steps

import pytask


@pytask.mark.metadata
def task_metadata_STEP():
    """Task for metadata."""
    return


@pytask.mark.raw
def task_download_raw_STEP():
    """Task for downloading raw from PLACE."""
    return


@pytask.mark.staging
def task_process_STEP():
    """Task for processing data for STEP."""
    return
