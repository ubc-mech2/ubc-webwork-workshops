##DESCRIPTION
##  Operation Amplifiers
##ENDDESCRIPTION

##KEYWORDS('Op Amps','operational','amplifier','voltage follower')

## DBsubject('Electrical Engineering')
## DBchapter('Circuit Analysis')
## DBsection('Op Amps')
## Date('2017/Dec/04')
## Author('L.R.Linares, llinares@ece.ubc.ca')
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

$R = Real(random(1,10,2));
$A = Real(pi*$R**2);
$C = Real(2*pi*$R);

##############################################################
#
#  PGML Area
#
#
BEGIN_PGML

Consider a circle of radius [$R] units.  Compute the area & circumference of the circle.

[@ image( "Q88.png", width=>200, height=>200) @]*

Area A = [______]{$A} square metres

Circumference C = [______]{$C} metres

END_PGML

##############################################################
Context()->functions->disable("All");
Context()->operators->undefine('+','-','**','^','/',' /','/ ','//','U','u+','fn','.','><','!',',','_',' ','*',' *','* ');
Context()->parens->remove('|','(','[','{');
Context()->constants->remove('i');

ENDDOCUMENT();
