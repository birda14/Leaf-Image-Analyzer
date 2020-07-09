#LAI

library(LeafArea)

object1 <-run.ij(path.imagej= "/home/adam/Documents/LAI/ImageJ",
        set.directory= "/home/adam/Documents/LAI/Input",   
        distance.pixel = 1200,
        known.distance = 10, save.image =T)
object1

file.copy(list.files("/home/adam/Documents/LAI/Input", full.names = TRUE),"/home/adam/Documents/LAI/Results/Output")
do.call(file.remove, list(list.files("/home/adam/Documents/LAI/Input", full.names = TRUE)))
write.csv(object1, "/home/adam/Documents/LAI/Results/Report/report.csv", row.names=F)



