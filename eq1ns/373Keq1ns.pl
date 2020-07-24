#!perl
use strict;
use Getopt::Long;
use MaterialsScript qw(:all);
my	$xsdDocName="PSNP_MV1";
my  $doc= Documents->Import("$xsdDocName.xsd");

my $results = Modules->Forcite->Dynamics->Run($doc, Settings(
	Quality => "Fine", 
	CurrentForcefield => "COMPASSII", 
	Ensemble3D => "NPT", 
	Temperature => 373, 
	Pressure => 0.0001, 
	NumberOfSteps => 1500000, 
	TrajectoryFrequency => 1000, 
	Thermostat => "Andersen", 
	StressXX => -0.0001, 
	StressYY => -0.0001, 
	StressZZ => -0.0001));
my $outTrajectory = $results->Trajectory;

