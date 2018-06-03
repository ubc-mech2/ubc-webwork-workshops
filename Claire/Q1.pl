##DESCRIPTION
##  Manometer
##ENDDESCRIPTION

##KEYWORDS('Manometer','Gage pressure')

## DBsubject('Mechanical Engineering')
## DBchapter('Fluid Mechanics')
## DBsection('Manometer')
## Date('2018/June/03')
## Author('Claie Yan, yu.yan@ubc.ca')
## Institution('University of British Columbia')

########################################################################

DOCUMENT();      

loadMacros(
   "PGstandard.pl",     # Standard macros for PG language
   "MathObjects.pl",
   "PGML.pl",
);

# Print problem number and point value (weight) for the problem
TEXT(beginproblem());

# Show which answers are correct and which ones are incorrect
$showPartialCorrectAnswers = 1;

$refreshCachedImages = 1;

##############################################################
#
#  Setup
#
#

Context("Complex");
Context()->flags->set(tolerance => .02);

$h = Real(random(0.5,1.5,0.1));
$P_gage = Real(1000*9.81*$h-910*9.81*0.2);

##############################################################
#
#  PGML Area
#
#
BEGIN_PGML

A pipe flowing light oil has a manometer attached. If h= [$h] m, What is the gauge pressure in the pipe flow? The densities of oil and water are 910 kg/m3 and 1000 kg/m3, respectively.

[@ image( "Q1.png", width=>344, height=>237) @]*

Enter your answer P_gage = [______]{$P_gage} Pa.

END_PGML

##############################################################
Context()->functions->disable("All");
Context()->operators->undefine('+','-','**','^','/',' /','/ ','//','U','u+','fn','.','><','!',',','_',' ','*',' *','* ');
Context()->parens->remove('|','(','[','{');
Context()->constants->remove('i');

ENDDOCUMENT();

