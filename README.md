# ml-workshop
Machine learning workshop as an introduction to the Parallel Works ACTIVATE user experience. ACTIVATE is a single control plane for cloud and on-premise high performance resources.

## Summary
The main activities of this workshop are to:

1. Start a personal cloud cluster
2. Start notebook session on cluster
3. Download notebook from public repository to cluster
4. Run notebook on cluster
5. Copy files to different storage (bucket, workspace)
6. Track cost in near real time
7. Launch MPI job via script_submitter (optional)

## Detailed steps

### 1) Login and start a personal cloud cluster
+ Log into the platform by going to [hpcmp-cloud.parallel.works](https://hpcmp-cloud.parallel.works).
+ Change your password. Initial login can be complicated by:
  - delayed/filtered password reset messages and
  - cannot use PED for MFA in certain locations.
+ On the `Home` page, go to the `Compute` tile and click on the `On button` for your default cluster.
+ Cloud cluster startup takes ~2-5 minutes.
+ Please explore - but do **not** change - the configuration with the `i` button.
+ In particular, note that the cluster has the following parts:
  - a larger head node (best for running the notebook)
  - a small compute partition with two worker nodes that spin up elastically
  - a mounted disk image at `/pw/apps`
  - a mounted shared bucket at `/pw/bbb`
  - the home directory of the cluster is mounted into your ACTIVATE user workspace.
![Cluster schematic](images/cluster-schematic.png "Cluster Schematic")

### 2) Start notebook session on cluster



### 3) Download notebook from public repository to cluster

In the terminal in your JupyterLab session, please run `git clone https://github.com/parallelworks/ml-workshop` to place a copy of this repository on your cluster.

### 4) Run notebook on cluster

### 5) Copy files to different storage (bucket, workspace)

### 6) Track cost in near real time

+ Go back to the ACTIVATE Home page.
+ Click on the `$ Cost` menu item on the left sidebar.
+ You may need to set the group to `ml-workshop` in the ribbon/filter bar across the top of the cost dashboard.

### 7) Launch MPI job via script_submitter (optional)

+ OpenMPI is already installed at `/pw/apps/ompi`.
+ If you run `run_mpitest.sh` in this repository, it will:
  - set up the system paths to access OpenMPI, 
  - compile the hello world MPI source code provided here, and 
  - run the code over 4 CPUs distributed over two worker nodes.
+ You can also copy and paste the contents of `run_mpitest.sh` into the `script_submitter` workflow's launch page to run the script on the cluster.