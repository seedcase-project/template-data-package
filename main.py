import seedcase_sprout as sp

# from scripts.properties import properties


def main():
    """Run the build pipeline of the data package."""
    # Create the properties script in default location.
    sp.create_properties_script()

    # Write properties from properties script to `datapackage.json`.
    # sp.write_properties(properties=properties)


if __name__ == "__main__":
    main()
