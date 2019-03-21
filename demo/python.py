#comment
test = u"""doc
string""" + r"""doc
string""" + "long \
string"; #end
11_22_3.44_5 + 0x_FF_aa_b_0 + 0b10_1_0
+ 3. + .3 + 3.0 + 1.2e-3

import sys, sys2, sys3
from csv import aa, bb
str = r'\test\test' + u'test' + r"\test"
func = lambda x: x

def func(num):
    for n in range(len(sys.argv)):
      print "Arg %s" % sys.argv[n]
      if n>2:
        return True
    return False
    
async def get_json(client, url):  
    async with client.get(url) as response:
        assert response.status == 100
        return await response.read()

class MyName(object):      
  @staticmethod
  def func1(num):
    pass
   
MyName().func1(num)

