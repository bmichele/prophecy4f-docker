# README

## Dependencies

If you do not have it, install [Docker](https://www.docker.com) following the installation process described in the [documentation](https://docs.docker.com/install/).

## Prophecy4f Docker

Clone this repository and go to the repository folder

```
git clone https://github.com/bmichele/prophecy4f-docker.git
cd prophecy4f-docker/
```

Launch Docker, then build the project by

```
docker-compose build
```

To start the Docker container, run

```
docker-compose up -d
```

In order to run Prophecy4f, place your input file in the folder `inputdir`, then run Prophecy inside the virtual container by

```
docker exec -it prophecy4f-docker_ubuntu_1 bash
./Prophecy4f < inputdir/testinput
```

The output files are stored in the folders `histograms`, `histunweighted` and `unweightedevents`.

When Prophecy has finished, you exit the docker container and stop it by

```
exit
docker-compose down
```

## Credits

 * [Prophecy4f](https://prophecy4f.hepforge.org)
 * [Collier](https://collier.hepforge.org/index.html)

## References

 * [Prophecy4f](https://prophecy4f.hepforge.org/documentation.html)
 * [Collier](https://collier.hepforge.org/documentation.html)
