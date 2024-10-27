Here is a description of the Redmine Merge Issues plugin in English:

---

**Redmine Merge Issues Plugin**

The Redmine Merge Issues plugin provides a feature to merge two issues within Redmine. This plugin allows users to combine all relevant information from one issue (referred to as issue B) into another issue (referred to as issue A), while preserving timestamps and maintaining comprehensive records of the merge.

**Features:**

1. **Transfer of Journals and Notes**: All journal entries and notes from issue B are transferred to issue A without altering the original timestamps, ensuring accurate historical records.

2. **Attachment Transfer**: Any files or attachments linked to issue B are moved to issue A.

3. **Description Merge**: The description from issue B is appended to the description of issue A, creating a combined narrative of both issues.

4. **Custom Fields Inclusion**: Custom field values from issue B are added to a merge notification note in issue A, allowing all unique data to be preserved.

5. **Merge Notification**: After merging, a note is added to issue A that logs details of issue B, including subject, status, priority, assigned user, author, timestamps, and custom fields. This note provides a comprehensive summary of the merge and ensures visibility of all relevant details.

6. **Deletion of Issue B**: Once all data from issue B is merged, issue B is deleted to prevent redundancy.

**Usage**:
The plugin adds a merge action button on each issue page (for users with appropriate permissions), enabling a straightforward merge process. This tool is particularly useful for managing duplicate tickets or consolidating related issues, enhancing data organization and reducing issue clutter within projects. 

---

This plugin is compatible with Redmine versions 4.0.0 and higher.
