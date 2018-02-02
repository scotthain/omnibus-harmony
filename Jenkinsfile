node {
    withDockerServer([uri:"tcp://cnidaria.cd.chef.co:2376"]) {
        docker.image("shain/seabass:latest-rhel-7-build").run()
    }
}