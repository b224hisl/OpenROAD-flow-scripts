# OpenROAD Flow

We integrate FLOWTUNE [related information] () 【稍微介绍一下flowtune】

OpenROAD Flow is a full RTL-to-GDS flow built entirely on open-source tools.
The project aims for automated, no-human-in-the-loop digital circuit design
with 24-hour turnaround time.

## install openroad with flowtune
1. install openroad 
'''
git clone --recursive https://github.com/b224hisl/OpenROAD-flow-scripts.git
cd OpenROAD-flow-scripts
cd tools/OpenROAD
sudo etc/DependencyInstaller.sh
cd ../..
./build_openroad.sh --local
source sourceme
#cd tools
#sudo dpkg -i klayout_0.28.5-1_amd64.deb #install klayout0.28.5-1
'''
2. build flowtune with openroad
'''
wget https://download.open-mpi.org/release/open-mpi/v4.0/openmpi-4.0.1.tar.gz; tar -xvf openmpi-4.0.1.tar.gz
cd openmpi-4.0.1; ./configure; make -j12 all install
git clone https://github.com/Yu-Utah/FlowTune.git; cd FlowTune
cd src/; mkdir build; cd build; cmake ..
abc_dir_path="my \$abc_dir_path = \"$(pwd)\"" 
make -j12; export PATH=$PATH:$(pwd)
export PATH=$(pwd)/../../FlowTune-AIG-Optimization:$PATH
'''
## limitationss
【写一下flowtune的参数我们现在只支持了aig的optimation，但是flowtun还有fpga的，technology mapping之后的, technology mapping之后不认识asap7的cell， technology mapping之前只要design比较复杂无法识别yosys生成的一些cell（有图我之前发给你的）】我们将会持续增强他们的兼容性，flowtune支持的好几种mode【你稍微看下有什么mode，随便说一说】之后我们都会为openroad 添加支持
## Using the Flow

- See the OpenROAD [documentation here](https://openroad.readthedocs.io/en/latest/).
- How to [start using OpenROAD flow here](https://openroad-flow-scripts.readthedocs.io/en/latest/user/GettingStarted.html).
- Our [user guide here](https://openroad-flow-scripts.readthedocs.io/en/latest/user/UserGuide.html).
- Our [Flow Tutorial here](https://openroad-flow-scripts.readthedocs.io/en/latest/tutorials/FlowTutorial.html).

## Citing this Work

If you use this software in any published work, we would appreciate a citation!
Please use the following references:

```
@article{ajayi2019openroad,
  title={OpenROAD: Toward a Self-Driving, Open-Source Digital Layout Implementation Tool Chain},
  author={Ajayi, T and Blaauw, D and Chan, TB and Cheng, CK and Chhabria, VA and Choo, DK and Coltella, M and Dobre, S and Dreslinski, R and Foga{\c{c}}a, M and others},
  journal={Proc. GOMACTECH},
  pages={1105--1110},
  year={2019}
}
```

A copy of this paper is available
[here](http://people.ece.umn.edu/users/sachin/conf/gomactech19.pdf) (PDF).

```
@inproceedings{ajayi2019toward,
  title={Toward an open-source digital flow: First learnings from the openroad project},
  author={Ajayi, Tutu and Chhabria, Vidya A and Foga{\c{c}}a, Mateus and Hashemi, Soheil and Hosny, Abdelrahman and Kahng, Andrew B and Kim, Minsoo and Lee, Jeongsup and Mallappa, Uday and Neseem, Marina and others},
  booktitle={Proceedings of the 56th Annual Design Automation Conference 2019},
  pages={1--4},
  year={2019}
}
```

A copy of this paper is available
[here](https://vlsicad.ucsd.edu/Publications/Conferences/371/c371.pdf) (PDF).

If you like the tools, please give us a star on our GitHub repos!

## License

The OpenROAD-flow-scripts repository (build and run scripts) has a BSD 3-Clause License.
The flow relies on several tools, platforms and designs that each have their own licenses:

- Find the tool license at: `OpenROAD-flow-scripts/tools/{tool}/` or `OpenROAD-flow-scripts/tools/OpenROAD/src/{tool}/`.
- Find the platform license at: `OpenROAD-flow-scripts/flow/platforms/{platform}/`.
- Find the design license at: `OpenROAD-flow-scripts/flow/designs/src/{design}/`.
