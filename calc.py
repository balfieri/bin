#!/usr/bin/python3
#
import sys
import math
import datetime
import time

def log2( n ):  return math.log( n ) / math.log( 2 )

def f2c( f ):   return (f - 32.0) * 5.0/9.0
def c2f( c ):   return c * 9.0/5.0 + 32

def k2m( k ):   return k * 0.6213712
def m2k( m ):   return m / 0.6213712
def k2p( k ):   return k / 0.4535924
def p2k( p ):   return p * 0.4535924
def o2g( o ):   return p2k(o/16.0) * 1000.0
def g2o( g ):   return k2p(g/1000.0) * 16.0
def i2m( i ):   return i * 0.0254
def m2i( m ):   return m / 0.0254
def f2m( f ):   return i2m( 12* n )
def m2f( m ):   return m2i( m ) / 12.0
def bmi( w, h ):return w / (h*h)

def nv2mc( nv ):return nv/240.63*594.356
def mc2nv( mc ):return mc/594.356*240.63

def cagr( BV, EV, N ): return ((EV/BV)**(1./N) - 1.0) * 100.0
def fv( PV, R, N ):    return PV * (1.0 + R/100.0)**N
def pv( FV, R, N ):    return FV / (1.0 + R/100.0)**N
def lfv( L, N, LR, IR ): # loan future value  
    FV = 0.0;
    for i in range(N):
        FV += L
        L  *= 1.0 + LR/100.0
        FV *= 1.0 + IR/100.0
    return FV

def d2s( date_s ):
    date_obj = datetime.strptime( date_s, '%D %M %Y' )
    return time.mktime( date_obj.timetuple() )

def date(): 
    now = datetime.datetime.now()
    return now.strftime( '%D %M %Y' )

def dayssince( date_s ): return (d2s( date() ) - d2s( date_s )) / (3600*24)

expr = ' '.join( sys.argv[1:] )
v    = eval( expr )
vi   = int(v)
print( f'{vi:d}    {v:0.30f}    0x{vi:x}   0b{vi:b}' )
