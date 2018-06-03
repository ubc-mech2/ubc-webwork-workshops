##DESCRIPTION
##  Area of Circle
##ENDDESCRIPTION

##KEYWORDS('area','radius')

## DBsubject('Electrical Engineering')
## DBchapter('Circuit Analysis')
## DBsection('Op Amps')
## Date('2017/Dec/04')
## Author('G.Ballinger, ballinger@camosun.bc.ca')
## Institution('Camosun College')

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
$A = Real(Pi*$S^2);

##############################################################
#
#  PGML Area
#
#
BEGIN_PGML

Consider a circle of radius [$R] units.  Compute the area of the circle.

[`\int{e^x}\,dx `]

[@ image( "MyQ.png", width=>165, height=>165) @]*

Enter your answer A = [______]{$A} units.

END_PGML

##############################################################
Context()->functions->disable("All");
Context()->operators->undefine('+','-','**','^','/',' /','/ ','//','U','u+','fn','.','><','!',',','_',' ','*',' *','* ');
Context()->parens->remove('|','(','[','{');
Context()->constants->remove('i');

ENDDOCUMENT();
