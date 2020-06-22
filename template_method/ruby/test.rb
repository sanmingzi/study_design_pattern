$LOAD_PATH.unshift File.dirname(__FILE__)

require 'paper_a'
require 'paper_b'

ming = PaperA.new('ming')
ming.question1
ming.question2

hong = PaperB.new('hong')
hong.question1
hong.question2
