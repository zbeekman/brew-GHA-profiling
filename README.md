# brew-GHA-profiling

Run some tests and profiling of installing software stacks on GitHub Actions.

View the results at http://izaakbeekman.com/brew-GHA-profiling

The first job in the workflowjust takes stock of all the homebrew installed software.
The second job times the installation of a few packages (`open-mpi`, `gcc@8`, and `graphviz`) and writes the results to CSV files.
These can then be used to process the data to look for performance regressions over time,
and to experiment with strategies to improve performance.


[workflows]: ./.github/workflows
