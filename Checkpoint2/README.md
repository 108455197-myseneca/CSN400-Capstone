# Checkpoint2 Submission

- **COURSE INFORMATION: CSN400 NCC**
- **STUDENT’S NAME: MAXWELL AYI-BONTE**
- **STUDENT'S NUMBER: 108455197** 
- **GITHUB USER_ID: 108455197-myseneca**
- **TEACHER’S NAME: ATOOSA NASIRI**

### Table of Contents
1. [Part A - Adding Files - Local Repo Workflow](#header1)
2. [Part B - Inspecting Local Repo with `git status` and `git log`](#header2)
3. [Part C - Creating & Merging Branches](#header3)
4. [Part D - Git Branching Strategy Review Question](#header4)

### PART A - Adding Files - Local Repo Workflow

```
maxwe@DESKTOP-2ISBIFD MINGW64 ~/Documents/CSN400-2234/CSN400-Capstone/Checkpoint2 (main)
$ git log -n 5
commit 9131841e6f9c5c0d6bdb14b4982b99bb3dcda111 (HEAD -> main, origin/main, origin/HEAD)
Author: 108455197-myseneca <mayi-bonte@myseneca.ca>
Date:   Tue May 23 00:17:26 2023 -0400

    updates README.md

commit 1fa1f0e32440f866c2783bc85950774db0922e51
Author: 108455197-myseneca <122736778+108455197-myseneca@users.noreply.github.com>
Date:   Mon May 22 22:37:07 2023 -0400

    Delete git_status_untracked.txt

commit 6e2bf2b9b28f115696ee4762b254e14140c259d3
Author: 108455197-myseneca <122736778+108455197-myseneca@users.noreply.github.com>
Date:   Mon May 22 22:37:00 2023 -0400

    Delete git_status_uncommitted.txt

commit 9a3eef02b881e4836667be4bc8fab12fdb0c9055
Author: 108455197-myseneca <122736778+108455197-myseneca@users.noreply.github.com>
Date:   Mon May 22 22:36:52 2023 -0400

    Delete git_status_committed.txt

commit 8b6d2a14d4b7409456936d46c4431dc17afe88ca
Author: 108455197-myseneca <122736778+108455197-myseneca@users.noreply.github.com>
Date:   Mon May 22 22:00:41 2023 -0400

    Create git_status_untracked.txt
```

### PART B - Inspecting Local Repo with `git status` amd `git log`

### What's the difference between `git log` and `git status`

Committed snapshots are displayed by the `git log` command. You may list, filter, and search the project history for certain modifications. `Git log` only functions on the committed history, but `git status` allows you to check the working directory and the staging area.

### PART C - Creating & Merging Branches

```
maxwe@DESKTOP-2ISBIFD MINGW64 ~/Documents/CSN400-2234/CSN400-Capstone/Checkpoint2 (main)
$ git log -n 5
commit 3fd96b846faff36cf06fedc43a7376ce07512250 (HEAD -> main, origin/feat-emojis, feat-emojis)
Author: 108455197-myseneca <mayi-bonte@myseneca.ca>
Date:   Tue May 23 00:40:56 2023 -0400

    updates Checkpoint2

commit f08bd3b22b0ae0c93b0b02949511b741a5130476
Author: 108455197-myseneca <mayi-bonte@myseneca.ca>
Date:   Tue May 23 00:35:07 2023 -0400

    updates README.md

commit eb7c844211bf0b825cf4aaf9080ad1bca1ce1ea5
Author: 108455197-myseneca <mayi-bonte@myseneca.ca>
Date:   Tue May 23 00:29:38 2023 -0400

    updates README.md

commit 9131841e6f9c5c0d6bdb14b4982b99bb3dcda111 (origin/main, origin/HEAD)
Author: 108455197-myseneca <mayi-bonte@myseneca.ca>
Date:   Tue May 23 00:17:26 2023 -0400

    updates README.md

commit 1fa1f0e32440f866c2783bc85950774db0922e51
Author: 108455197-myseneca <122736778+108455197-myseneca@users.noreply.github.com>
Date:   Mon May 22 22:37:07 2023 -0400

    Delete git_status_untracked.txt
```

### PART D - Git Branching Strategy Review Question
