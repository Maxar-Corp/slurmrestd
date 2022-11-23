# Slurm

Scripts for a custom slurm (slurmrestd) RPM

Run

`./build.sh` to build a Docker image, download and build the slurm
RPM(s) with Maxar patches. The `$HOME/rpmbuild` directory will be used
for building and the resulting slurmrestd RPM will be located in
`$HOME/rpmbuild/RPMS/<arch>/slurm-slurmrestd-<version>.<arch>.rpm`
