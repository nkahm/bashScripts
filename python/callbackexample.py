from hoomd_script import *

def printParticleZeroPosition(timestep):
    print(system.particles[0].position);

if __name__=='__main__':
    #Initialize HOOMD system
    system=init.create_random(N=20,phi_p=0.05);
    lj=pair.lj(r_cut=2.5);
    lj.pair_coeff.set('A','A',epsilon=1,sigma=1);
    all = group.all();
    integrate.mode_standard(dt=0.005);
    integrate.nvt(group=all,T=1.2,tau=0.5);
    run(1000,callback=printParticleZeroPosition,callback_period=5);
