<?php

$finder = (new PhpCsFixer\Finder())
  ->in(__DIR__);

return (new PhpCsFixer\Config())
  ->setRules([
    '@PER-CS' => true,
    '@PHP82Migration' => true,
    'indentation_type' => false 
  ])
  ->setFinder($finder)
;
