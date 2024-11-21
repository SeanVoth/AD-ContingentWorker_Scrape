# AD-ContingentWorker_Scrape
PowerShell script to search Active Directory for users with a specific street address and export their email addresses to a text file.


<h1>Description</h1>
This PowerShell script queries Active Directory (AD) for users with a specific streetAddress attribute value, such as "Contingent Worker Philippines," and exports their email addresses to a text file. It automates the process of filtering users based on address criteria and provides a clean, efficient way to collect relevant email information for further processing or auditing.
<br />

<h1>Features</h1>
- Active Directory Querying: Leverages the AD module to filter users based on their streetAddress attribute.
- Email Address Extraction: Retrieves email addresses of matching users and exports them to a text file.
- Customizable Output: The script allows easy modification of the search term and output location.
- Directory Management: Automatically ensures the output directory exists before writing data.
- Error Handling: Includes basic error handling and logs helpful console messages for debugging.
<br />

<h1>Use Cases</h1>
1. Auditing and Reporting:
      Generate reports of contingent workers or employees based on specific location or designation.
      Maintain accurate records for compliance and internal reviews.

2. Email Campaign Targeting:
      Extract email addresses of specific groups (e.g., contingent workers) for internal communications or campaigns.

3. Data Cleanup:
      Identify and validate user attributes (e.g., streetAddress, EmailAddress) for Active Directory cleanup projects.

4. Automation Pipelines:
      Integrate with larger automation workflows for HR, IT, or security operations that depend on user data.

5. Security and Compliance:
      Track and monitor contingent workers or remote employees for security audits or access reviews.
<br />

<h2>Languages and Utilities Used</h2>

- <b>Powershell</b>

<h2>Environments Used </h2>

- <b>Windows 10</b>
- <b>Windows 11</b>
<br />
