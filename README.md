# README

## Dependencies

If you don't have it, install Docker following the installation process described in the [documentation](https://docs.docker.com/install/)

## Prophecy4f Docker

To test Prophecy4f, fist install it with [Docker](https://www.docker.com):

```
cd docker
docker-compose build
```

Then you can start the docker container by

```
docker-compose up -d
```

Place your prophecy input file in the folder `inputdir`, then run Prophecy inside the virtual container by
```
docker exec -it prophecy4f_ubuntu_1 bash
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
