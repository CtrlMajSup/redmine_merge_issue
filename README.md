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


# Installation

To install the **Redmine Merge Issues** plugin on a Redmine instance running under Apache, follow these steps:

1. **Download and Install the Plugin**:
   - Navigate to your Redmine plugins directory:
     ```bash
     cd /path/to/redmine/plugins
     ```
   - Clone or copy the `redmine_merge_issues` plugin into this directory:
     ```bash
     git clone https://github.com/yourrepo/redmine_merge_issues.git
     ```

2. **Restart Apache**:
   - Since this plugin does not modify the database schema, no migrations are necessary. Simply restart Apache to load the plugin:
     ```bash
     sudo systemctl restart apache2
     ```
   - Alternatively, if you're using `passenger`, restart it to reload Redmine:
     ```bash
     touch /path/to/redmine/tmp/restart.txt
     ```

3. **Verify Installation**:
   - Log in to Redmine, go to **Administration > Plugins**, and ensure that the **Redmine Merge Issues** plugin is listed and activated.

The plugin should now be ready for use without requiring any database migration.



# Environnement tested 

```

Environment:
  Redmine version                5.1.3.stable
  Ruby version                   3.2.4-p170 (2024-04-23) [x86_64-linux]
  Rails version                  6.1.7.8
  Environment                    production
  Database adapter               PostgreSQL
  Mailer queue                   ActiveJob::QueueAdapters::AsyncAdapter
  Mailer delivery                smtp
Redmine settings:
  Redmine theme                  Default
SCM:
  Subversion                     1.14.2
  Mercurial                      6.3.2
  Cvs                            1.12.13
  Bazaar                         3.3.2
  Git                            2.39.2
  Filesystem                     
Redmine plugins:
  redmine_merge_issues           0.1.0


```


