# Class Meeting 04

Class Meeting 04's participation was mostly branching, merging and release tagging. Due to some restructuring, that directory (named cm001-003 at the time) has now been renamed cm001, with some files from cm002 and cm003 moved to their respective directories. To see the repository at the time of cm004, see the tagged release cm004 [here](https://github.com/dy-lin/STAT545-participation/tree/cm004).

## Instructions

### The typical workflow: Activity

Let’s make a change to our repository from local.

1. Cloning your participation repo.
    * In RStudio, File -> New Project -> Version Control -> Git.
    * You should see a `Git` tab in RStudio, upper-right corner window. If not, see [happygitwithr: see-git](http://happygitwithr.com/rstudio-see-git.html) for help.
    * Take a look at the files you just downloaded!
1. Make your README a little nicer. Maybe fix up the title.
1. Stage and commit the changes:
    * In the Git tab in RStudio, click the checkboxes for the files that you want to commit. This is called “staging”.
    * Click the “Commit” button.
    * Enter a commit message.
    * Click “commit”.
1. Push to your remote repository (which is named “origin”)
    * Click the up arrow in the Git panel in RStudio.
    
### Merge conflicts: Activity
Let’s make a merge conflict, and fix it.

1. Edit a line of your README both locally and remotely to something different in both cases. Commit both changes.
1. Try pulling your remote changes. You’ll get a _merge conflict_.
1. Update the file that has the conflict, commit your changes, and push.

### Branching: Activity
Let’s organize our participation repo in a branch.

1. Create a new branch locally, called “organizing” (we could have also made this on GitHub):
    * Click the “Git” tab in the upper-right panel of RStudio
    * Within that window’s option bar, click the branch icon.
    * Name your branch and create!
1. Stage and commit the new files.
1. Restructure your repository in a more sensible way, using folders (locally).
1. Stage and commit the changes; push to GitHub.
1. Explore:
    * switch between branches to see that the repo structure is different.
1. Merge the branch to “master” via GitHub by making a pull request.

### Undoing Changes: Activity
Here’s how to go back to the most recent commit.

* First, make and save a change to (say) a README file in your participation repo.
* In the Git panel of RStudio, stage the file that you want to return to the previous commit. Click “More” -> “Revert…” -> “Yes”

### Tagging a Release: Activity
Congratulations! We finished the first two weeks of STAT 545A, which focussed on _tools_. To mark this milestone, let’s tag a release on our participation repositories.

1. On your GitHub repo, click “releases”
1. Click “Create a new release”
1. Fill in the fields:
    * It probably makes sense to use a versioning system like cm004 here.
1. “Publish Release”.
