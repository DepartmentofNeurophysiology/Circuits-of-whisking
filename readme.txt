A network model of adaptive whisking. 



This function simulates whisking in rodents. This computational model, resembles whisking paradigm for wild-type versus Serotonin-knockout rats.
This code provides a graph based network model of whisking that enales investigating whisking in rats with two different genotype background, namely "wild-type" and "serotonin-knockout". 

A computational circuit that could perform adaptive sensorimotor control necessarily requires information from sensory circuits about the stimulus availability as well as motor control circuits that perform phase to motor signal transformation given the current state of the sensory information. Based on the known coding properties of the neurons along sensorimotor circuits, and the connectivity between them, the graph network consists of the following nodes: primary somatosensory cortex (S1; barrel cortex) where stimulus properties are encoded and where whisker retraction upon stimulation to maintain touch duration is triggered; 2) primary motor cortex (M1) which provides adaptive motor control for whisker protraction, through recursively adjusting the amplitude and midpoint of whisking envelope; 3) central pattern generators (CPGs) that control phasic motion of whiskers; 4) superior colliculus (SC) which translates phase and amplitude information to motor control commands for facial motor nucleus (FMN) to drive whisking;
In this model output of each node is a transfer function rather than a time and/or rate varying action potentials. Please note that the aim of this model is not to mechanistically explain how the brain performs sensorimotor computation, it is rather to provide the minimal circuit requirements for adaptive control of whisker position. For further information please refer to: "Serotonergic development of active sensing" by Azarfar et.al


How to Run the model
To run the model please select genotype between 'wild' or 'sert_ko', and selcet whether you wish to plot the results or not (0: do no plot, 1: plot).
Example 1: [tip_dist,waveform,locomotive_path] = whisking_simulator_wild_vs_sertko('genotype','wild','plotting',0)
Example 2: [tip_dist,waveform,locomotive_path] = whisking_simulator_wild_vs_sertko('genotype','sert_ko','plotting',1)

Settings
User can modify the whisking parameters in the "initialize" file. Two instance of locomotive path for adaptive vs non adaptive path is provided.

Out put: 
tip_dist: is the distance from the tip of whisker to the target platform
waveform: first column keeps the time, the second column keeps the angular position in relation to midline of whisker, the third and fourth columns contain the alpha of the fitted parabola and x position of the whisker's tip respectively, and finally the fifth column keeps the whisker's tip position in respect to animal's nose.
locomotive_path: is the locomotive path of animal twoards target. It is represented as the nose distance to the target.
